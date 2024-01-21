<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\Room;
use App\Models\roomInfo;

class BookingController extends Controller
{
  
    public function transectionDetail(Request $req){
        dd($req->all());
    }
  
    public function addingGuest(Request $r){
       $data=$r->all();
        return view('forms.step3',compact('data'));
    }
    public function roomselection(Request $r){
   
   
   $roomIds=$r->input('roomIds');
   $data=$r->all();

   //$roomIds = $r->query('roomIds');

        // if (empty($roomIds)) {
        //     // Redirect back with a message or handle as needed
        //     return redirect()->back()->with('error', 'No room Available.');
        // }
    $roomIdsArray = is_array($roomIds) ? $roomIds : explode(',', $roomIds);
    $roomIdsArray = array_map('trim', $roomIdsArray);
    if (empty($roomIds)) {

    $roomDetails = RoomInfo::Where('isActive','1')->get();    
    }
    else{
    
     $roomDetails = RoomInfo::whereRaw('id NOT IN (' . implode(',', $roomIdsArray) . ') AND isActive = 1')->get();
    
    }
    //dd(count($roomDetails) === 0);
    if(count($roomDetails) === 0){
        return redirect()->back()->with('error', 'No room Available.');

    }
    else{
    return view('forms.step2',compact('roomDetails','data'));
}  
}
  
    public function checkAvailability(Request $request){
    
    $propertyId = $request->input('pId');
    $checkIn = Carbon::parse($request->input('checkIn'))->format('Y-m-d H:i:s');
    $checkOut = Carbon::parse($request->input('checkOut'))->format('Y-m-d H:i:s');
    
        // Check room availability
        $availableRoomIds = Room::where('propertyId', $propertyId)
        ->where(function ($query) use ($checkIn, $checkOut) {
            $query->where('checkOutDateTime', '>', $checkIn)
                ->where('checkInDateTime', '<', $checkOut);
        })
        ->pluck('id')->toArray();
       
       
        $availableRooms = Room::where('propertyId', $propertyId)
            ->where(function ($query) use ($checkIn, $checkOut) {
                $query->where(function ($q) use ($checkIn, $checkOut) {
                    $q->where('checkInDateTime', '>=', $checkIn)->where('checkOutDateTime', '<', $checkOut);
                })
                ->orWhere(function ($q) use ($checkIn, $checkOut) {
                    $q->where('checkInDateTime', '>', $checkIn)->where('checkOutDateTime', '<=', $checkOut);
                })
                ->orWhere(function ($q) use ($checkIn, $checkOut) {
                    $q->where('checkInDateTime', '<', $checkIn)->where('checkOutDateTime', '>', $checkOut);
                });
            })  
            ->get();
       

            

        if ($availableRooms->isEmpty()) {
            // Room is available
            if ($request->ajax()) {
                return response()->json(['status' => 'success', 'roomIds'=>$availableRoomIds,'checkIn'=>$checkIn,'checkOut'=>$checkOut,'pId'=>$propertyId]);
            } else {
                return response()->json(['status' => 'request not fulfill', 'message' => 'Room is Available!']);
            }
        } else {
            // Room is not available
            if ($request->ajax()) {
                return response()->json(['status' => 'failure','roomIds'=>$availableRoomIds,'checkIn'=>$checkIn,'checkOut'=>$checkOut,'pId'=>$propertyId]);
            } else {
                return response()->json(['status' => 'request not fulfill not avail', 'message' => 'Room is Available!']);

            }
        }
   }
}
