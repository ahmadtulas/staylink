<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Property;

class PropertyController extends Controller
{
    public function index()
    {
        $property = Property::all();
        return view('pages.properties',compact('property'));
        // dd($property);
    }
    //
}
