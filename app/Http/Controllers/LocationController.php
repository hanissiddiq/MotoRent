<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Location;
use App\Models\Loan;
use Illuminate\Support\Facades\Auth;

class LocationController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
        ]);

        // Cari peminjaman aktif user (belum dikembalikan)
        $loan = Loan::where('user_id', Auth::id())->whereNull('end_time')->latest()->first();

        if (!$loan) {
            return response()->json(['message' => 'Tidak ada peminjaman aktif'], 404);
        }

        $location = Location::create([
            'loan_id' => $loan->id,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'recorded_at' => now(),
        ]);

        return response()->json(['message' => 'Lokasi disimpan', 'location' => $location]);
    }
}
