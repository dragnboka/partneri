<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\Models\Company::class, function (Faker $faker) {
    return [
        'name' => $faker->company,
        'address' => $faker->streetAddress,
        'city' => $faker->city,  
        'postal_code' => $faker->postcode,
        'country' => $faker->country, 
        'bank_account' => $faker->creditCardNumber,  
        'pib' => $faker->creditCardNumber,    
        'phone' => $faker->phoneNumber,
        'email' => $faker->unique()->safeEmail,
        'logo' => $faker->imageUrl($width = 150, $height = 80),
    ];
});
