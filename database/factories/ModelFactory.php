<?php

use Faker\Generator as Faker;
use App\Entities\Job as JobEntity;
use App\Entities\BlogCategory as BlogCategoryEntity;
use App\Entities\Blog as BlogEntity;

$factory->define(JobEntity::class, function (Faker $faker) {
    return [
        'title' => $faker->name,
    ];
});

$factory->define(BlogCategoryEntity::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'description' => $faker->name,
    ];
});

$factory->define(BlogEntity::class, function (Faker $faker) {
    return [
        'category_id' => 1,
        'title' => $faker->name,
        'short_description' => $faker->name,
        'long_description' => $faker->paragraph,
        'content'=> $faker->paragraph,
        'active' => 1,
        'number_of_readings'=> $faker->numberBetween(1, 100),
        'image' => '142229shutterstock_130099715.jpg',
    ];
});
