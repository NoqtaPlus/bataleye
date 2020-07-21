<?php

use Illuminate\Database\Seeder;
use App\Entities\Job as JobEntity;

class JobSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(JobEntity::class, 1)->create([
            "title"=> "Football Player",
        ]);
        factory(JobEntity::class, 1)->create([
            "title"=> "Manager",
        ]);
        factory(JobEntity::class, 1)->create([
            "title"=> "Coach",
        ]);
        factory(JobEntity::class, 1)->create([
            "title"=> "legend",
        ]);
        factory(JobEntity::class, 1)->create([
            "title"=> "Board",
        ]);
         
        factory(JobEntity::class, 1)->create([
            "title"=> "CEO",
        ]);
          
        factory(JobEntity::class, 1)->create([
            "title"=> "Vice CEO",
        ]);
    }
}
