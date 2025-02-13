<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\TimesheetController;
use App\Http\Controllers\AttributeController;

Route::get('/test', function () {
    return response()->json(['message' => 'Success']);
});


Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:api')->group(function () {
    // Project Routes
    Route::get('/projects', [ProjectController::class, 'index']);
    Route::get('projects/{project}', [ProjectController::class, 'show']);
    Route::post('projects', [ProjectController::class, 'store']);
    Route::put('projects/{project}', [ProjectController::class, 'update']);
    Route::delete('projects/{project}', [ProjectController::class, 'destroy']);
    
    // Timesheet Routes
    Route::get('timesheets', [TimesheetController::class, 'index']);
    Route::get('timesheets/{timesheet}', [TimesheetController::class, 'show']);
    Route::post('timesheets', [TimesheetController::class, 'store']);
    Route::put('timesheets/{timesheet}', [TimesheetController::class, 'update']);
    Route::delete('timesheets/{timesheet}', [TimesheetController::class, 'destroy']);
    
    // Attribute Routes
    Route::get('attributes', [AttributeController::class, 'index']);
    Route::get('attributes/{attribute}', [AttributeController::class, 'show']);
    Route::post('attributes', [AttributeController::class, 'store']);
    Route::put('attributes/{attribute}', [AttributeController::class, 'update']);
    Route::delete('attributes/{attribute}', [AttributeController::class, 'destroy']);


     Route::post('/logout', [AuthController::class, 'logout']);
});
