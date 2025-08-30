<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;;

class CarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('cars')->insert([
            [
                'name' => 'Xpander',
                'plate_number' => 'BK5676ZQ',
                'status' => 'available',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Panther Capsule',
                'plate_number' => 'BL9822FP',
                'status' => 'available',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Xenia',
                'plate_number' => 'BK6678ZQ',
                'status' => 'unavailable',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Mazda CX-5',
                'plate_number' => 'BK8890ZL',
                'status' => 'available',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Honda CR-V',
                'plate_number' => 'BK1234YZ',
                'status' => 'unavailable',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
