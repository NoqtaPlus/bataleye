<?php
namespace App\Repositories;
use App\Ad_Management;
use App\Ads_Position;
use File;

/**
 * Class UserRepository
 * @package App\Repositories
 */
class AdsRepository extends BaseRepository {
    protected $ads;
    protected  $position;
    /**
     * UserRepository constructor.
     */
    public function __construct()
    {
        $this->ads=new Ad_Management();
        $this->position=new Ads_Position();
    }
    /**
     * @return array of all Ads
     */
    public function getAllAds(){
        return $this->getAllItems($this->ads);
    }
    public function getThePositionName(){
        return $this->getAllItems($this->position);
    }
    public function postAddAds($data,$ad){
        $pathToStore = public_path('assets/images/ads/');
        if ($data->hasFile('ads_img')){
            $img=$data->ads_img;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($pathToStore,$file_name);
            $ad->fill(['ads_img'=>$file_name]);

        }
           $ad->fill(['img_link'=>$data->img_link]);
           $ad->fill(['positions_id'=>$data->positions_id]);
           $ad->save();
           return $ad;
    }
    public function getAdsById($adId){
       return $this->getItemById($adId,$this->ads);
    }

    public function updateAdById($adId,$data){
        $ad=$this->ads->find($adId);
        $path_store=public_path('assets/images/ads/');
        if ($data->hasFile('ads_img')) {
            $photo_name=$ad->ads_img;
            File::delete($path_store.$photo_name);
            $img=$data->ads_img;
            $extension=$img->getClientOriginalExtension();
            $file_name=rand(1111,9999).'.'.$extension;
            $img->move($path_store,$file_name);
           $ad->fill(['ads_img'=>$file_name]);
        }
        $ad->fill(['img_link'=>$data->img_link]);
        $ad->fill(['positions_id'=>$data->positions_id]);
        $ad->save();
        return $ad;
    }
    public function deleteAdsById($adId){
        $ad=$this->ads->find($adId);
        $photoName=$ad->ads_img;
        File::delete(public_path('assets/images/ads/').$photoName);
        $this->deleteItemById($adId,$this->ads);
    }
    public function getAdsDetails($adId){
        return $this->getItemById($adId,$this->ads);
    }

}