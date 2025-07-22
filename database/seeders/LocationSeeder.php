<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
// use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
// use Illuminate\Database\Seeder;
// use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
// use Faker\Factory as Faker;
use Illuminate\Support\Str;


class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Ambil semua loan_id yang sudah ada (pastikan tabel `loans` sudah diisi)
        $loanIds = DB::table('loans')->pluck('id');

        foreach ($loanIds as $loanId) {
            // Buat 5 lokasi untuk tiap loan
            for ($i = 0; $i < 5; $i++) {
                DB::table('locations')->insert([
                    'loan_id' => $loanId,
                    'latitude' => $faker->latitude(-6.5, -6.1), // contoh area Jakarta
                    'longitude' => $faker->longitude(106.6, 107.0),
                    'recorded_at' => $faker->dateTimeBetween('-7 days', 'now'),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
