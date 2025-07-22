<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;
use App\Http\Controllers\Controller;


class CarController extends Controller
{

    public function index() {
    return Car::all();
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'plate_number' => 'required|string|max:20|unique:cars',
            'status' => 'nullable|in:available,unavailable',
        ]);

        $car = Car::create([
            'name' => $request->name,
            'plate_number' => $request->plate_number,
            'status' => $request->status ?? 'available',
        ]);

        return response()->json([
            'message' => 'Mobil berhasil ditambahkan',
            'data' => $car
        ], 201);
    }

}
