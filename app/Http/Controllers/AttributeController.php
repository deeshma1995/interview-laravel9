<?php

namespace App\Http\Controllers;

use App\Models\Attribute;
use Illuminate\Http\Request;

class AttributeController extends Controller
{
    /**
     * Display all attributes.
     */
    public function index()
    {
        return response()->json(Attribute::all(), 200);
    }

    /**
     * Store a newly created attribute.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|unique:attributes,name',
            'type' => 'required|in:text,date,number,select',
        ]);

        $attribute = Attribute::create($request->all());

        return response()->json($attribute, 201);
    }

    /**
     * Display a specific attribute.
     */
    public function show($id)
    {
        $attribute = Attribute::find($id);

        if (!$attribute) {
            return response()->json(['message' => 'Attribute not found'], 404);
        }

        return response()->json($attribute, 200);
    }

    /**
     * Update the specified attribute.
     */
    public function update(Request $request, $id)
    {
        $attribute = Attribute::find($id);

        if (!$attribute) {
            return response()->json(['message' => 'Attribute not found'], 404);
        }

        $request->validate([
            'name' => 'sometimes|string|unique:attributes,name,' . $id,
            'type' => 'sometimes|in:text,date,number,select',
        ]);

        $attribute->update($request->only(['name', 'type']));

        return response()->json($attribute, 200);
    }

    /**
     * Remove the specified attribute.
     */
    public function destroy($id)
    {
        $attribute = Attribute::find($id);

        if (!$attribute) {
            return response()->json(['message' => 'Attribute not found'], 404);
        }

        $attribute->delete();

        return response()->json(['message' => 'Attribute deleted successfully'], 200);
    }
}
