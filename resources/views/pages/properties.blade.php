<x-layout bodyClass="g-sidenav-show  bg-gray-200">
        <x-navbars.sidebar activePage="properties"></x-navbars.sidebar>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
            <!-- Navbar -->
            <x-navbars.navs.auth titlePage="Property"></x-navbars.navs.auth>
            <!-- End Navbar -->
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card my-4">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                    <h6 class="text-white text-capitalize ps-3">Property</h6>
                                </div>
                            </div>
                            <div class="card-body px-0 pb-2">
                                <div class="table-responsive p-0">
                                    <table class="table align-items-center mb-0">
                                        <thead>
                                            <tr>
                                                <th
                                                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                    ID</th>
                                                <th
                                                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                                    Name</th>
                                                <th
                                                    class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                    Address</th>
                                                <th
                                                    class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                                    Active</th>
                                                <th class="text-secondary opacity-7">Created Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach ($property as $company)
                                            <tr>
                                                <td>
                                                <div class="d-flex px-2 py-1">
                                                <div class="d-flex flex-column justify-content-center">
                                                            <h6 class="mb-0 text-sm">{{ $company->id }}</h6>
                                                            </p>
                                                        </div>    
                                                </div>
                                                </td>
                                                <td>
                                                <p class="text-xs font-weight-bold mb-0"> {{ $company->name }}</p>
                                                   </td>
                                                <td class="align-middle text-center text-sm">
                                                <p class="text-xs font-weight-bold mb-0"> {{ $company->address }}</p>  
                                                </td>
                                                <td class="align-middle text-center text-sm">
                                                <span class="badge badge-sm bg-gradient-success"> {{ $company->active ? 'Yes' : 'No' }}</span>  
                                                </td>
                                                <td>
                                                <span
                                                        class="text-secondary text-xs font-weight-bold">{{ $company->created_at }}</span>    
                                                </td>
                                                <td class="align-middle text-center text-sm">
                                                
                                                <a href="{{ route('reservation',['pid'=>$company->id])}}" ><span class="badge badge-sm bg-gradient-danger"> 
                                                    Select
                                                </span>
                                                </a>
                                                </td>
                                            </tr>
                                        @endforeach    
                                        
                                        </tbody>
                                    </table>
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
