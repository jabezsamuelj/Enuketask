<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Task;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class TaskController extends Controller
{
 



    public function Store(Request $request)
    {
        // dd($request);
        $validator =Validator::make($request->all(), [
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:500',
        ]);
        if ($validator->fails()) {

			$response['error']="false";
			$response['error_message']="Please upload valid image";
			echo json_encode($response);
			die;
		}
        $image_path = $request->file('image')->store('image', 'public');
       
        $data = Task::create([
            'image' => $image_path,
        ]);
        if($data){
            $response['data']=$data;

            $response['error']="true";
            $response['error_message']="Uploaded successfully";
        }
        

        return response($response);
    }











}
