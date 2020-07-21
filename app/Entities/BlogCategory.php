<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class BlogCategory extends Model
{
    protected $fillable=[
        'category_id', 'name', 'description', 'parent_id'
    ];

    const FOOTBALL_NEWS = 'football-news';
    const FOOTBALL_U23_NEWS = 'football-u23-news';
    const BASKETBALL_NEWS = 'basketball-news';
    const HANDBALL_NEWS = 'handball-news';
    const VOLLEYBALL_NEWS = 'volleyball-news';
    const Kung_Fu_NEWS = 'Kung Fu-news';
    const KARATE_NEWS ='karate-news';
    const REPORTS = 'reports';
    const INTERVIEWS = 'interviews';
    const SOCIALISM = 'socialism';
    const JOURNEY  = 'journey';
    const Wrestling  = 'wrestling-news';
    const Boxing  = 'boxing-news';
    const Body_lifting  = 'body_lifting-news';
    const Health_club  = 'health_club-news';
   
    const Swimmig  = 'swimming-news';


    protected $table = 'categories';

    protected $primaryKey = 'category_id';

    public function blogs()
    {
        return $this->hasMany(Blog::class, 'id', 'category_id');
    }

    public static function footballCategory()
    { 
       return BlogCategory::where('name', self::FOOTBALL_NEWS)->first();
    }
    public static function swimmingCategory()
    { 
       return BlogCategory::where('name', self::Swimmig)->first();
    }
     public static function boxingCategory()
    { 
       return BlogCategory::where('name', self::Boxing)->first();
    }
    public static function body_liftingCategory()
    { 
       return BlogCategory::where('name', self::Body_lifting)->first();
    }
    public static function health_clubCategory()
    { 
       return BlogCategory::where('name', self::Health_club)->first();
    }
    public static function wrestlingCategory()
    { 
       return BlogCategory::where('name', self::Wrestling)->first();
    }
    
    public static function footballJuniorsCategory()
    { 
       return BlogCategory::where('name', self::FOOTBALL_U23_NEWS)->first();
    }

    public static function handballCategory()
    { 
       return BlogCategory::where('name', self::HANDBALL_NEWS)->first();
    }

    public static function basketballCategory()
    { 
       return BlogCategory::where('name', self::BASKETBALL_NEWS)->first();
    }

    public static function kungFuCategory()
    { 
       return BlogCategory::where('name', self::Kung_Fu_NEWS)->first();
    }
    public static function karateCategory()
    { 
       return BlogCategory::where('name', self::KARATE_NEWS)->first();
    }

    public static function volleyballCategory()
    { 
       return BlogCategory::where('name', self::VOLLEYBALL_NEWS)->first();
    }

    public static function reportsCategory()
    { 
       return BlogCategory::where('name', self::REPORTS)->first();
    }

    public static function interviewsCategory()
    { 
       return BlogCategory::where('name', self::INTERVIEWS)->first();
    }
    public static function SocialismCategory()
    { 
       return BlogCategory::where('name', self::SOCIALISM)->first();
    }
    public static function journey()
    { 
       return BlogCategory::where('name', self::JOURNEY)->first();
    }
    
}