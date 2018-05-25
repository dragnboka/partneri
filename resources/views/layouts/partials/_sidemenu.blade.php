<div class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
    <div class="list-group border-0 card text-center text-md-left">
        <a href="#menu1" class="list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fa fa-dashboard"></i> <span class="d-none d-md-inline">Company</span> </a>
        <div class="collapse" id="menu1" data-parent="#sidebar">
            {{-- <a href="#menu1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem 1 </a>
            <div class="collapse" id="menu1sub1" data-parent="#menu1">
                <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem a</a>
                <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem b</a>
                <a href="#menu1sub1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem c </a>
                <div class="collapse" id="menu1sub1sub1">
                    <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem c.1</a>
                    <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem c.2</a>
                </div>
            </div> --}}
            <a href=" {{ route('company.index') }}" class="list-group-item">Sve Kompanije</a>
            <a href=" {{ route('company.create') }}" class="list-group-item">Create Company</a>
        </div>
        <a href="{{ route('ad.create') }}" class="list-group-item d-inline-block collapsed"><i class="fa fa-film"></i> <span class="d-none d-md-inline">Create ad</span></a>

        <a href="{{ route('lecture.create') }}" class="list-group-item d-inline-block collapsed"><i class="fa fa-film"></i> <span class="d-none d-md-inline">Create Lecture</span></a>

        @role('admin')
        <a href="{{ route('packet.create') }}" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-gear"></i> <span class="d-none d-md-inline">Create Packet</span></a>
        @endrole
        
        <a href="#menu2" class="list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fa fa-dashboard"></i> <span class="d-none d-md-inline">Contracts</span> </a>
        <div class="collapse" id="menu2" data-parent="#sidebar">
            {{-- <a href="#menu1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem 1 </a>
            <div class="collapse" id="menu1sub1" data-parent="#menu1">
                <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem a</a>
                <a href="#" class="list-group-item" data-parent="#menu1sub1">Subitem b</a>
                <a href="#menu1sub1sub1" class="list-group-item" data-toggle="collapse" aria-expanded="false">Subitem c </a>
                <div class="collapse" id="menu1sub1sub1">
                    <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem c.1</a>
                    <a href="#" class="list-group-item" data-parent="#menu1sub1sub1">Subitem c.2</a>
                </div>
            </div> --}}
        
            <a href=" {{ route('contract.money.create') }}" class="list-group-item">Create Money Contract</a>
        </div>
    </div>
</div>