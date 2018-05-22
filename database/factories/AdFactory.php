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

$factory->define(App\Models\Ad::class, function (Faker $faker) {
    return [
        'company_id' => rand(1,10),
        'name' => substr($faker->sentence,0,-1),
        'description' => $faker->paragraph,
        'practice' => rand(0,1),
        'job' => rand(0,1),
    ];
});
