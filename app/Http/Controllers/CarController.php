<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car;
use App\Http\Controllers\Controller;


class CarController extends Controller
{

    public function index() {
    return Car::all();
    // $cars = Car::all()->map(function ($car) {
    //     return [
    //         'id' => $car->id,
    //         'name' => $car->name,
    //         'plate_number' => $car->plate_number,
    //         'status' => $car->status,
    //         'image_url' => $car->image ? asset('storage/' . $car->image) : null,
    //     ];
    // });

    // return response()->json(['data' => $cars]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'plate_number' => 'required|string|max:20|unique:cars',
            'status' => 'nullable|in:available,unavailable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048'
        ]);

        $imagePath = null;

        // if ($request->hasFile('image')) {
        //     // Simpan file ke storage/app/public/cars
        //     $imagePath = $request->file('image')->store('cars', 'public');
        // }

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            
            // Format nama file: jammenitdetik_namafileasli.ext
            $filename = date('Ymd_His'). '_' . $file->getClientOriginalName();

            // Simpan ke folder storage/app/public/cars
            $imagePath = $file->storeAs('cars', $filename, 'public');
        }

        $car = Car::create([
            'name' => $request->name,
            'plate_number' => $request->plate_number,
            'status' => $request->status ?? 'available',
            'image' => $imagePath, // simpan path gambar
        ]);

        return response()->json([
        'message' => 'Mobil berhasil ditambahkan',
        'data' => [
            'id' => $car->id,
            'name' => $car->name,
            'plate_number' => $car->plate_number,
            'status' => $car->status,
            'image_url' => $car->image ? asset('storage/' . $car->image) : null, // kembalikan full URL
        ]
    ], 201);
    }

}
