<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\Room;
class BookingController extends Controller
{
   public function checkAvailability(Request $request){
    
    $propertyId = $request->input('pId');
    $checkIn = Carbon::parse($request->input('checkIn'))->format('Y-m-d H:i:s');
    $checkOut = Carbon::parse($request->input('checkOut'))->format('Y-m-d H:i:s');
    
        // Check room availability
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
                return response()->json(['status' => 'success', 'message' => "Available"]);
            } else {
                return response()->json(['status' => 'request not fulfill', 'message' => 'Room is Available!']);
            }
        } else {
            // Room is not available
            if ($request->ajax()) {
                return response()->json(['status' => 'failure', 'message' => 'Room is Not Available!']);
            } else {
                return response()->json(['status' => 'request not fulfill not avail', 'message' => 'Room is Available!']);

            }
        }
   }
}
