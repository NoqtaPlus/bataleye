<?php

namespace Modules\Frontend\Persons\Models;

use App\Entities\Person as PersonEntity;
use App\Entities\Job;

class Person extends PersonEntity 
{
    public function legends() 
    {
        return Job::where("title", "legend")->first()->persons();
    }
    
    public static function players()
    {
        return Job::where("title", "Football Player")->first()->persons();
    }

    public function managers()
    {
        return Job::where("title", "Manager")->first()->persons();
    }

    public function boards()
    {
        return Job::where("title", "Board")->first()->persons();
    }

    public function coaches() 
    {
        return Job::where("title", "Coach")->first()->persons();
    }
    
    public function ceo()
    {
        return Job::where("title", "CEO")->first()->persons();
    }
      public function vice_ceo()
    {
        return Job::where("title", "Vice CEO")->first()->persons();
    }
}
