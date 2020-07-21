<?php
namespace Modules\Backend\Users\Models;

use App\Entities\User as UserEntity;

class User extends UserEntity 
{
    // Here we will set all functions related to User
    public function getUser($id) 
    {
        $user = $this->find($id);

        return $user;
    }
}

