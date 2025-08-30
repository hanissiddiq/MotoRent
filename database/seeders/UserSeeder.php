<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
// use Illuminate\Database\Seeder;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Set locale to Indonesian
        // Faker::setLocale('id_ID');
        $faker = Faker::create('id_ID');

    for ($i = 0; $i < 10; $i++) {
        $fullname = $faker->name;
        $firstName = strtolower(explode(' ', $fullname)[0]);
        $email = $firstName . '@gmail.com';

        DB::table('users')->insert([
            'name' => $fullname,
            'email' => $email,
            'email_verified_at' => now(),
            'password' => Hash::make('password'), // default password
            'remember_token' => Str::random(10),
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
    }
}
