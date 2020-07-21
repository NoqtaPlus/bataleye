<?php
namespace App\Repositories;
use App\Entities\Journey;
use Carbon\Carbon;
use File;
use DB;
/**
 * Class UserRepository
 * @package App\Repositories
 */
class JourneyRepository extends BaseRepository {
    protected $journey;
    /**
     * UserRepository constructor.
     */
    public function __construct()
    {
        $this->journey=new Journey();
    }
    /**
     * @return array of all Ads
     */
    public function getAllJourney(){ 
        return $this->getAllItems($this->journey);
    }
  
    public function postAddjourney($data,$journey){
        $pathToStore = public_path('assets/images/journey/');
        if ($data->hasFile('journey_img')){
            $img=$data->journey_img;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
            $journey->fill(['journey_img'=>$file_name]);

        }
           $journey->fill(['title'=>$data->title]);
           $journey->fill(['desc'=>$data->desc]);
           $journey->fill(['journey_time'=>$data->journey_time]);
           $journey->fill(['journey_date'=>$data->journey_date]);
           $journey->save();
           return $journey;
    }
    public function getJourneyById($journeyId){
       return $this->getItemById($journeyId,$this->journey);
    }

    public function updateJourneyById($journeyId,$data){
        $journey = $this->journey->find($journeyId);
        $path_store = public_path('assets/images/journey/');
        if ($data->hasFile('journey_img')) {
            $photo_name=$journey->journey_img;
            File::delete($path_store.$photo_name);
            $img=$data->journey_img;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($path_store,$file_name);
           $journey->fill(['journey_img'=>$file_name]);
        }
           $journey->fill(['title'=>$data->title]);
           $journey->fill(['desc'=>$data->desc]);
           $journey->fill(['journey_time'=>date('H:i:s') ]);
           $journey->fill(['journey_date'=>$data->journey_date]);
           $journey->save();
           return $journey;
    }
    public function deleteJourneyById($journeyId){
        $journey = $this->journey->find($journeyId);
        $this->deleteItemById($journeyId,$this->journey);
    }
    
    public static function nextJourney()
    {
        $today             = Carbon::today();
        $nextjourney       = Journey::orderBy('journey_date','asc')->where('journey_date', '>=', $today)->get();
        $now               = Carbon::now();
        if (isset($nextjourney)) 
        {
            for($i=0; $i < count( $nextjourney);$i++ ){
            $journeyDate       = Carbon::parse($nextjourney[$i]->date . " ". $nextjourney[$i]->time);
            $nextjourney[$i]->year     = $journeyDate->year;
            $nextjourney[$i]->month    = $journeyDate->month;
            $nextjourney[$i]->day      = $journeyDate->day;
            $nextjourney[$i]->hour      = $journeyDate->hour;
            }
            }

        return $nextjourney;
       
    }
    
    public static function previousJourney()
    {
        $today = Carbon::today();
       
        $previousjourney = Journey::orderBy('journey_date','desc')->where('journey_date', '<=', $today)->get();
       
        return $previousjourney; 
    }

}