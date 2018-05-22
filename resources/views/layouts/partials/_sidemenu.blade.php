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
       
        <a href=" {{ route('company.create') }}" class="list-group-item">Create Company</a>
    </div>
        <a href="#" class="list-group-item d-inline-block collapsed"><i class="fa fa-film"></i> <span class="d-none d-md-inline">Item 2</span></a>
      
        <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-gear"></i> <span class="d-none d-md-inline">Link</span></a>
        <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-calendar"></i> <span class="d-none d-md-inline">Link</span></a>
        <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-envelope"></i> <span class="d-none d-md-inline">Link</span></a>
        <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-bar-chart-o"></i> <span class="d-none d-md-inline">Link</span></a>
        <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar"><i class="fa fa-star"></i> <span class="d-none d-md-inline">Link</span></a>
    </div>
</div>