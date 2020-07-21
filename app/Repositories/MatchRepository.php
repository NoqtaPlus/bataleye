<?php

namespace App\Repositories;

use App\Entities\Match;
use Carbon\Carbon;

class MatchRepository extends BaseRepository{
    
    protected $match;

    public function __construct()
    {
        $this->match = new Match();
    }
    
    public static function nextMatch()
    {
        $today             = Carbon::today();
        $nextMatch         = Match::orderBy('date','asc')->where('date', '>=', $today)->first();
        $now               = Carbon::now();
        if (isset($nextMatch)) 
        {
            $matchDate         = Carbon::parse($nextMatch->date . " ". $nextMatch->time);
            $nextMatch->year   = $matchDate->year;
            $nextMatch->month  = $matchDate->month;
            $nextMatch->day    = $matchDate->day;
            $nextMatch->hour   = $matchDate->hour;
            $nextMatch->minute = $matchDate->minute;
            $nextMatch->second = $matchDate->second;
        }

        return $nextMatch;
    }
    
    public static function previousMatch()
    {
        $today = Carbon::today();
        $previousMatch = Match::orderBy('date','desc')->where('date', '<', $today)->first();
        return $previousMatch; 
    }
    
}
