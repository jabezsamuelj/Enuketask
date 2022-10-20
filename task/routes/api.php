<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\TaskController;
use App\Http\Controllers\Api\LoginController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::post('/auth/register', [LoginController::class, 'createUser']);
Route::post('/auth/login', [LoginController::class, 'loginUser']);
Route::apiResource('image', TaskController::class)->middleware('auth:sanctum');

// Route::post('/image',[TaskController::class, 'imageStore'])->middleware('auth:sanctum');

