<?php

use Illuminate\Database\Seeder;
use App\Entities\BlogCategory as BlogCategoryEntity;

class PostCategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::FOOTBALL_NEWS,
            "description"=> BlogCategoryEntity::FOOTBALL_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::FOOTBALL_U23_NEWS,
            "description"=> BlogCategoryEntity::FOOTBALL_U23_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::BASKETBALL_NEWS,
            "description"=> BlogCategoryEntity::BASKETBALL_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::HANDBALL_NEWS,
            "description"=> BlogCategoryEntity::HANDBALL_NEWS,
        ]);
        
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::VOLLEYBALL_NEWS,
            "description"=> BlogCategoryEntity::VOLLEYBALL_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::REPORTS,
            "description"=> BlogCategoryEntity::REPORTS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::INTERVIEWS,
            "description"=> BlogCategoryEntity::INTERVIEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::SOCIALISM,
            "description"=> BlogCategoryEntity::SOCIALISM,
        ]);
        // factory(BlogCategoryEntity::class, 1)->create([
        //     "name"=> BlogCategoryEntity::JOURNEY,
        //     "description"=> BlogCategoryEntity::JOURNEY,
        // ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Kung_Fu_NEWS,
            "description"=> BlogCategoryEntity::Kung_Fu_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::KARATE_NEWS,
            "description"=> BlogCategoryEntity::KARATE_NEWS,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Wrestling,
            "description"=> BlogCategoryEntity::Wrestling,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Boxing,
            "description"=> BlogCategoryEntity::Boxing,
        ]);
        
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Body_lifting,
            "description"=> BlogCategoryEntity::Body_lifting,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Health_club,
            "description"=> BlogCategoryEntity::Health_club,
        ]);
        factory(BlogCategoryEntity::class, 1)->create([
            "name"=> BlogCategoryEntity::Swimmig,
            "description"=> BlogCategoryEntity::Swimmig,
        ]);
    }
}
