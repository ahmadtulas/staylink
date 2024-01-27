<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\room;
use App\Models\roomInfo;
use App\Models\guestInfo;
use App\Models\transection;
use App\Models\roomCategory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redirect;
class BookingController extends Controller
{
    public function showTrans(){
        $data=transection::all();
        return view('pages.transaction',compact('data'));
    }
    


  public function submitTran(Request $req){
   // dd($req->all());
    $data=$req->all();
    $q1=transection::create([
        'roomId'=>$data['roomIds'],
        'groupId'=>$data['groupId'],
        'payment_status'=>$data['Select-Status'],
        'payment_type'=>$data['payment-method'],
        'totalAmount'=>$data['totalAmount'],	
        'collectedAmount'=>$data['collectedAmount'],
        'checkInDateTime'=>$data['checkIn'],	
        'checkOutDateTime'=>$data['checkIn'],	
        'isActive'=>'1',	
        'propertyId'=>$data['pId']
        
    ]);
    $q2=room::create([
        'room_id'=>$data['roomIds'],
        'checkInDateTime'=>$data['checkIn'],	
        'checkOutDateTime'=>$data['checkIn'],	
        'isActive'=>'1',	
        'propertyId'=>$data['pId']
        
    ]);
    if($q1 && $q2){
        return Redirect::route('user-management')
        ->with('success', 'Data inserted successfully!');
    }
        

  }
    public function transectionDetail(Request $req){
        $data = request()->all();
    $timestamp = now()->timestamp; // Get current timestamp
    $randomNumber = mt_rand(1000, 9999); // Generate a random 4-digit number
    $groupID = 'GID' . $timestamp . $randomNumber;
$groupID = Str::uuid();

foreach ($data['name'] as $index => $name) {
    guestInfo::create([
        'pId' => $data['pId'],
        'check_in_date' => $data['checkIn'],
        'check_out_date' => $data['checkOut'],
        'roomIds' => json_encode($data['roomIds']),
        'name' => $name,
        'contact_number' => $data['contact'][$index],
        'age' => $data['age'][$index],
        'city' => $data['city'][$index],
        'country' => $data['country'][$index],
        'pincode' => $data['pincode'][$index],
        'gst_number' => $data['gstno'][$index],
        'groupId' => $groupID,
    ]);
}
$room=json_decode($data['roomIds']);

$totalamount=0;
foreach($room as $d){
    
    $roomPrice=roomInfo::Where('id',$d)->get();
    $totalamount=$totalamount+$roomPrice[0]['price'];
  //  dd($totalamount);
}
$date1 = Carbon::parse( $data['checkOut']);
    $date2 = Carbon::parse( $data['checkIn']);
    $diff = $date1->diff($date2);
    $days=$diff->days;
    if($days==0){
        $days=1;
    }

return view('forms.step4',compact('data','totalamount','days','groupID'));

}
  
    public function addingGuest(Request $r){
       $data=$r->all();
      //  dd($data);
       
      return view('forms.step3',compact('data'));
    }
    public function roomselection(Request $r){
        
   
   $roomIds=$r->input('roomIds');
   preg_match_all('/\d+/', $roomIds, $matches);

// $matches[0] contains an array of numeric values
$roomIds = array_map('intval', $matches[0]);
   $data=$r->all();
   
   //$roomIds = $r->query('roomIds');

        // if (empty($roomIds)) {
        //     // Redirect back with a message or handle as needed
        //     return redirect()->back()->with('error', 'No room Available.');
        // }
    $rCategory=roomCategory::where('isActive',1)->get()->toArray();
    //dd($rCategory);
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
    return view('forms.step2',compact('roomDetails','data','rCategory'));
}  
}
  
    public function checkAvailability(Request $request){
    
    $propertyId = $request->input('pId');
    $checkIn = Carbon::parse($request->input('checkIn'))->format('Y-m-d H:i:s');
    $checkOut = Carbon::parse($request->input('checkOut'))->format('Y-m-d H:i:s');
    
        // Check room availability
        $availableRoomIds = room::where('propertyId', $propertyId)
        ->where(function ($query) use ($checkIn, $checkOut) {
            $query->where('checkOutDateTime', '>', $checkIn)
                ->where('checkInDateTime', '<', $checkOut);
        })
        ->pluck('room_id')->toArray();
        
       
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
