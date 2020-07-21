<?php
namespace App\Repositories;
use App\Entities\ChampionDesc;


/**
 * Class UserRepository
 * @package App\Repositories
 */
class ChampionDescRepository extends BaseRepository {
    protected $champion;
   
    /**
     * UserRepository constructor.
     */
    public function __construct()
    {
        $this->champion = new ChampionDesc();
    }
    /**
     * @return array of all Ads
     */
    public function getAllChampionDescription(){
        return $this->getAllItems($this->champion);
    }
    public function postAddChampionDescription($data,$champion){

           $champion->fill(['category'=>$data->category]);
           $champion->fill(['desc'=>$data->desc]);
           $champion->save();
           return $champion;
    }
    public function getAChampionDescriptionById($adId){
       return $this->getItemById($adId,$this->champion);
    }

    public function updateChampionDescriptionById($adId,$data){
        $champion=$this->champion->find($adId);
        $champion->fill(['category'=>$data->category]);
        $champion->fill(['desc'=>$data->desc]);
        $champion->save();
        return $champion;
    }
    public function deleteChampionDescriptionById($adId){
        $ad=$this->champion->find($adId);
        $this->deleteItemById($adId,$this->champion);
    }
    public function getChampionDescriptionDetails($adId){
        return $this->getItemById($adId,$this->champion);
    }

}