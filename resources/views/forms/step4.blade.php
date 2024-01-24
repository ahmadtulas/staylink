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
                            <div class="row justify-content-center ml-3">
                                <div class="container mt-2">
                                    <h2>Guest Form</h2>

                                 
                                        <!-- Initial set of fields -->
                                        <form class="guestForm" method="POST" action="submitTran">
                                            @csrf
                                            <input type="hidden" name='pId' value="{{$data['pId']}}">
                                            <input type="hidden" name='checkIn' value="{{$data['checkIn']}}">
                                            <input type="hidden" name='checkOut' value="{{$data['checkOut']}}">
                                            <input type="hidden" name='roomIds' value="{{  json_encode($data['roomIds'])}}">
                                            <input type="hidden" name='groupId' value="{{$groupID}}">
                                            <input type="hidden" name='totalAmount' value="{{$totalamount}}">
                                           
                                           <h4>Total Amount: {{$totalamount*$days}} Rupees</h4>
                                           <div class="input-group input-group-outline mt-3">
                                            {{-- <label class="form-label">Payment-Type</label> --}}
                                            <select class="form-select" id="exampleSelect" name="Select-Status">
                                                <option value="Prepaid">Select Status</option>
                                          
                                                <option value="Prepaid">Prepaid</option>
                                                <option value="Postpaid">Postpaid</option>
                                                <!-- Add more options as needed -->
                                            </select>
                                           
                                        </div>
                                        <div class="input-group input-group-outline mt-3">
                                            {{-- <label class="form-label">Payment-Type</label> --}}
                                            <select class="form-select" id="exampleSelect" name="payment-method">
                                                <option value="green">Collection Type</option>
                                               
                                                <option value="Online">online</option>
                                                <option value="Cash">offline</option>
                                                       <!-- Add more options as needed -->
                                            </select>   
                                        </div>
                                        <div class="input-group input-group-outline mt-3">
                                            <label class="form-label">Collected Amount</label>
                                            <input type="text" class="form-control" name="collectedAmount">
                                        </div>


                                       
                                    </div>
                                    
                                    
                                </div>
                                <button type="submit" class="btn btn-success">Submit</button>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <x-footers.auth></x-footers.auth>
        </div>
    </main>
    <x-plugins></x-plugins>
</x-layout>
