<?php
namespace App\Repositories;
use App\Entities\Championship;
class ChampionshipRepositories extends BaseRepository {
    protected $champions;
    public function __construct()
    {
        $this->champions = new Championship();
    }

    public function getAllChampions(){
        return $this->getAllItems($this->champions);
    }
}