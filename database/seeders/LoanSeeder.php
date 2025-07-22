<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class LoanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // faker::setLocale('id_ID'); // Set locale to Indonesian
        $faker = Faker::create();

        // Pastikan ada data user dan car terlebih dahulu
        $userIds = DB::table('users')->pluck('id');
        $carIds = DB::table('cars')->pluck('id');

        // Cek jika data kosong
        if ($userIds->isEmpty() || $carIds->isEmpty()) {
            $this->command->warn('Tidak ada data users atau cars. Seeder LoanSeeder dilewati.');
            return;
        }

        // Buat 10 data pinjaman acak
        for ($i = 0; $i < 10; $i++) {
            $start = $faker->dateTimeBetween('-7 days', '-1 day');
            $end = (clone $start)->modify('+'.rand(1, 8).' hours');

            DB::table('loans')->insert([
                'user_id' => $userIds->random(),
                'car_id' => $carIds->random(),
                'start_time' => $start,
                'end_time' => $end,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
