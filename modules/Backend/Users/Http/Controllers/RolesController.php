<?php

namespace Modules\Backend\Users\Http\Controllers;

use App\Entities\UserRoles;
use Illuminate\Http\Request;
use App\Repositories\UserRepository;
use App\Http\Controllers\Controller;
use Modules\Backend\Users\Requests\RoleRequest;
/**
 * Class UserController
 * @package Modules\Backend\Users\Http\Controllers
 */
class RolesController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(UserRepository $userRepo)
    {
        $roles = $userRepo->getAllRoles();
        return view('backend.users.roles.all_roles', compact('roles'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(UserRepository $userRepo)
    {
        $users = $userRepo->getAllUsers();
        $roles = UserRoles::all();
        return view('backend.users.roles.add_role');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(RoleRequest $request, UserRepository $userRepo, UserRoles $role)
    {
         $userRepo->postAddRole($request, $role);

        return redirect()->route('getAllRoles');
    }

    /**
     * @param $userId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($roleId, UserRepository $userRepo)
    {
        
        $role       = $userRepo->getRoleById($roleId);
        return view('backend.users.roles.role', compact('role'));
    }

    /**
     * @param $userId
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($roleId, RoleRequest $request, UserRepository $userRepo)
    {
        $userRepo->updateRole($roleId,$request);
        return redirect()->route('getAllRoles');
    }

    /**
     * @param $userId
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($roleId, UserRepository $userRepo)
    {
        $userRepo->deleteRoleById($roleId);
        return redirect()->route('getAllRoles');
    }
}
