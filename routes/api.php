<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CarController;
use App\Http\Controllers\LoanController;
use App\Http\Controllers\LocationController;

// Auth
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::middleware('auth:sanctum')->get('/user', [AuthController::class, 'user']);

// Cars
Route::middleware('auth:sanctum')->get('/cars', [CarController::class, 'index']);
Route::middleware('auth:sanctum')->post('/cars', [CarController::class, 'store']);

// Loans
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/loans', [LoanController::class, 'store']);
    Route::get('/loans/history', [LoanController::class, 'history']);
});

// Locations
Route::middleware('auth:sanctum')->post('/locations', [LocationController::class, 'store']);
