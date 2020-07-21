<?php
namespace App\Repositories;
use App\Entities\Sponsor;

class SponsorsRepository extends BaseRepository{
    protected $sponsors;
    public function __construct()
    {
        $this->sponsors=new Sponsor();
    }

    public function getAllSponsors(){
        return $this->getAllItems($this->sponsors);
    }
}
?>