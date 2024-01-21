<x-layout bodyClass="g-sidenav-show  bg-gray-200">

    <x-navbars.sidebar activePage="user-management"></x-navbars.sidebar>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <!-- Navbar -->
        <x-navbars.navs.auth titlePage="Availability"></x-navbars.navs.auth>
        <!-- End Navbar -->
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-12">
                    <div class="card my-4">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            {{-- <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <h6 class="text-white mx-3"><strong> Add, Edit, Delete features are not
                                        functional!</strong> This is a<strong> PRO</strong> feature! Click
                                    <strong><a
                                            href="https://www.creative-tim.com/product/material-dashboard-pro-laravel"
                                            target="_blank" class="text-white"><u>here</u> </a></strong>to see
                                    the PRO product!</h6>
                            </div> --}}
                        </div>
                        <div class=" me-3 my-3 text-end">
                            <a class="btn bg-gradient-dark mb-0" href="javascript:;"><i
                                    class="material-icons text-sm">add</i>&nbsp;&nbsp;Add New
                                Property</a>
                        </div>
                        
                        <div class="card-body">
                            <div class="row justify-content-center ml-5">
                                <form method="POST" action="step3">
                                    @csrf
                                    <input type="hidden" name='pId' value="{{$data['pId']}}">
                                    <input type="hidden" name='checkIn' value="{{$data['checkIn']}}">
                                    <input type="hidden" name='checkOut' value="{{$data['checkOut']}}">
                                    @foreach($roomDetails as $room)
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="roomIds[]" value="{{ $room['id'] }}">
                                            <label class="form-check-label">{{ $room['name'] }}</label>
                                        </div>
                                    @endforeach
                                    <button type="submit" class="btn btn-primary ml-3" >Next</button>
                                </form>
                            </div>
                        </div>  </div>
                    </div>
                </div>
            </div>
            <x-footers.auth></x-footers.auth>
        </div>
    </main>
    <x-plugins></x-plugins>

</x-layout>




{{-- <x-layout bodyClass="g-sidenav-show  bg-gray-200">

    <x-navbars.sidebar activePage="user-management"></x-navbars.sidebar>
    <h2>Step 2: Select Room</h2>
    <form id="step2Form">
        @csrf
        <div id="roomOptions"><!-- Room options will be populated here --></div>
        <button type="button" class="btn btn-primary" onclick="loadForm('step3', $('#step2Form').serialize())">Next</button>
    </form>

    <script>
        // Populate room options dynamically based on the response from Step 1
        // For simplicity, you can assume response.rooms is an array of room IDs

        // Example:
        var roomOptionsHtml = '';
        response.rooms.forEach(function (roomId) {
            roomOptionsHtml += '<div class="form-check"><input type="checkbox" class="form-check-input" name="room[]" value="' + roomId + '"><label class="form-check-label">Room ' + roomId + '</label></div>';
        });

        $('#roomOptions').html(roomOptionsHtml);
    </script>
    <x-plugins></x-plugins>

</x-layout> --}}
<!-- Add the following script to your HTML file -->

