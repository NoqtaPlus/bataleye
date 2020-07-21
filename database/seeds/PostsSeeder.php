<?php

use Illuminate\Database\Seeder;
use App\Entities\Blog as BlogEntity;

class PostsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        factory(BlogEntity::class, 10)->create([
            'category_id' => 1, // breaking football news
            'breaking' => 1,
            'title' => 'breaking football news',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 1, // slider news
            'slider' => 1,
            'title' => 'slider news',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 1, // Football
            'title' => 'FootBall New',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 2, //football U23
            'title' => 'football U23',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 3, // basketball
            'title' => 'basketball',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 4, //handball
            'title' => 'handball',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 5, //volley ball
            'title' => 'volley ball',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 6, // reports
            'title' => 'reports',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 7, // interviews
            'title' => 'reports',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 8, // Socialism
            'title' => 'socialism',
        ]);
    
        // factory(BlogEntity::class, 10)->create([
        //     'category_id' => 9, // Journey
        //     'title' => 'Journey',
        // ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 9, // 'kung fu
            'title' => 'kung fu',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 10, // karate
            'title' => 'karate',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 11, // karate
            'title' => 'wrestling',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 12, // karate
            'title' => 'boxing',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 13, // karate
            'title' => 'body_lifting',
        ]);
        factory(BlogEntity::class, 10)->create([
            'category_id' => 14, // karate
            'title' => 'health_club',
        ]);
         factory(BlogEntity::class, 10)->create([
            'category_id' => 15, // 
            'title' => 'swimming-news',
        ]);
    }
}
