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
                                        <form class="guestForm" method="POST" action="step4">
                                            @csrf
                                            <input type="hidden" name='pId' value="{{$data['pId']}}">
                                            <input type="hidden" name='checkIn' value="{{$data['checkIn']}}">
                                            <input type="hidden" name='checkOut' value="{{$data['checkOut']}}">
                                           
                                            <div id="guestContainer">

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">Name</label>
                                                <input type="text" class="form-control" name="name[]">
                                            </div>

                                        
                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">Contact</label>
                                                <input type="text" class="form-control" name="contact[]">
                                            </div>

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">Age</label>
                                                <input type="text" class="form-control" name="age[]">
                                            </div>

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">City</label>
                                                <input type="text" class="form-control" name="city[]">
                                            </div>

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">Country</label>
                                                <input type="text" class="form-control" name="country[]">
                                            </div>

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">Pincode</label>
                                                <input type="text" class="form-control" name="pincode[]">
                                            </div>

                                            <div class="input-group input-group-outline mt-3">
                                                <label class="form-label">GSTNO</label>
                                                <input type="text" class="form-control" name="gstno[]">
                                            </div>

                                            <button type="button" class="fa fa-plus btn btn-primary mb-3 float-end mt-3" id="addGuest">Add More Guest</button>
            
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
