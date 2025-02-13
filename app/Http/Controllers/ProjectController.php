<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use App\Models\Attribute;
use App\Models\AttributeValue;
use Illuminate\Support\Facades\Log;
class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index(Request $request)
{
    $query = Project::with('attributes.attribute');

    if ($request->has('filters')) {
        foreach ($request->filters as $key => $value) {
            if (in_array($key, ['name', 'status'])) {
                // Standard filters (direct attributes in projects table)
                $query->where($key, $value);
            } else {
                // EAV filters (dynamic attributes in attribute_values table)
                $query->whereHas('attributes', function ($q) use ($key, $value) {
                    $q->whereHas('attribute', function ($subQuery) use ($key) {
                        $subQuery->where('name', $key);
                    })->where('value', $value);
                });
            }
        }
    }

    return response()->json($query->get());
}


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
public function store(Request $request)
{
    $request->validate([
        'name' => 'required',
        'status' => 'required|in:active,completed,on_hold',
        'attributes' => 'array|nullable',
    ]);

    // Create project
    $project = Project::create($request->only(['name', 'status']));

    // Ensure attributes exist and are an array
    $attributes = $request->input('attributes', []);

    if (!is_array($attributes)) {
        return response()->json(['message' => 'Attributes should be an array'], 400);
    }

    // Set attributes for the project
    foreach ($attributes as $attribute) {
        if (isset($attribute['attribute_id']) && isset($attribute['value'])) {
            AttributeValue::create([
                'attribute_id' => $attribute['attribute_id'],
                'entity_id' => $project->id,
                'value' => $attribute['value'],
            ]);
        }
    }

    // Refresh project with attributes
    $project->load('attributes');

    return response()->json($project, 201);
}



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Find the project or return a 404 if not found
        $project = Project::with('attributes')->findOrFail($id);

        return response()->json($project);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function update(Request $request, $id)
{
    $request->validate([
        'name' => 'required',
        'status' => 'required|in:active,completed,on_hold',
        'attributes' => 'array|nullable',
    ]);

    // Find the project
    $project = Project::findOrFail($id);

    // Update project details
    $project->update($request->only(['name', 'status']));

    // Ensure attributes exist and are an array
    $attributes = $request->input('attributes', []);

    if (!is_array($attributes)) {
        return response()->json(['message' => 'Attributes should be an array'], 400);
    }

    // Update attribute values
    foreach ($attributes as $attribute) {
        if (isset($attribute['attribute_id']) && isset($attribute['value'])) {
            AttributeValue::updateOrCreate(
                [
                    'attribute_id' => $attribute['attribute_id'],
                    'entity_id' => $project->id,
                ],
                [
                    'value' => $attribute['value'],
                ]
            );
        }
    }

    // Reload project with attributes
    $project->load('attributes');

    return response()->json($project, 200);
}


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Find the project or return a 404 error
        $project = Project::findOrFail($id);

        // Delete the project
        $project->delete();

        return response()->json(['message' => 'Project deleted successfully']);
    }
}
