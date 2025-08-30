<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Database\Seeders\CarSeeder;
use Database\Seeders\LocationSeeder;
use Database\Seeders\LoanSeeder;
use Database\Seeders\UserSeeder;
use Illuminate\Support\Facades\DB;
use App\Models\Loan;
use App\Models\Location;
use App\Models\Car;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Administrator MotoRent',
            'email' => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('mantap'),
            'remember_token' => Str::random(10),
        ]);
        User::factory()->create([
            'name' => 'Peminjam',
            'email' => 'peminjam@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('mantap'),
            'remember_token' => Str::random(10),
        ]);

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        $this->call([UserSeeder::class, CarSeeder::class,  LoanSeeder::class,LocationSeeder::class]);
    }
}
