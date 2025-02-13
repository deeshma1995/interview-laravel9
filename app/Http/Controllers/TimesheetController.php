<?php


namespace App\Http\Controllers;

use App\Models\Timesheet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TimesheetController extends Controller
{
    /**
     * Display a listing of timesheets for the authenticated user.
     */
    public function index()
    {
        return response()->json(Timesheet::where('user_id', Auth::id())->with('project')->get(), 200);
    }

    /**
     * Store a newly created timesheet entry.
     */
    public function store(Request $request)
    {
        $request->validate([
            'project_id' => 'required|exists:projects,id',
            'task_name'  => 'required|string|max:255',
            'date'       => 'required|date',
            'hours'      => 'required|integer|min:1|max:24',
        ]);

        $timesheet = Timesheet::create([
            'user_id'    => Auth::id(),
            'project_id' => $request->project_id,
            'task_name'  => $request->task_name,
            'date'       => $request->date,
            'hours'      => $request->hours,
        ]);

        return response()->json($timesheet, 201);
    }

    /**
     * Display the specified timesheet.
     */
    public function show($id)
    {
        $timesheet = Timesheet::where('user_id', Auth::id())->where('id', $id)->with('project')->first();

        if (!$timesheet) {
            return response()->json(['message' => 'Timesheet not found'], 404);
        }

        return response()->json($timesheet, 200);
    }

    /**
     * Update the specified timesheet.
     */
    public function update(Request $request, $id)
    {
        $timesheet = Timesheet::where('user_id', Auth::id())->where('id', $id)->first();

        if (!$timesheet) {
            return response()->json(['message' => 'Timesheet not found'], 404);
        }

        $request->validate([
            'task_name' => 'sometimes|string|max:255',
            'date'      => 'sometimes|date',
            'hours'     => 'sometimes|integer|min:1|max:24',
        ]);

        $timesheet->update($request->only(['task_name', 'date', 'hours']));

        return response()->json($timesheet, 200);
    }

    /**
     * Remove the specified timesheet.
     */
    public function destroy($id)
    {
        $timesheet = Timesheet::where('user_id', Auth::id())->where('id', $id)->first();

        if (!$timesheet) {
            return response()->json(['message' => 'Timesheet not found'], 404);
        }

        $timesheet->delete();

        return response()->json(['message' => 'Timesheet deleted successfully'], 200);
    }
}
