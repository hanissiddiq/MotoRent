<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Loan;
use App\Models\Car;
use Illuminate\Support\Facades\Auth;

class LoanController extends Controller
{
    // Buat peminjaman mobil
    public function store(Request $request)
    {
        $request->validate([
            'car_id' => 'required|exists:cars,id',
        ]);

        $car = Car::findOrFail($request->car_id);

        if ($car->status !== 'available') {
            return response()->json(['message' => 'Mobil tidak tersedia'], 400);
        }

        // Tandai mobil tidak tersedia
        $car->update(['status' => 'unavailable']);

        $loan = Loan::create([
            'user_id' => Auth::id(),
            'car_id' => $car->id,
            'start_time' => now(),
        ]);

        return response()->json(['message' => 'Peminjaman berhasil', 'loan' => $loan], 201);
    }

    // Ambil riwayat peminjaman user yang sedang login
    public function history()
    {
        $loans = Loan::with('car')
            ->where('user_id', Auth::id())
            ->orderBy('created_at', 'desc')
            ->get();

        return response()->json($loans);
    }
}
