@extends('voyager::master')

@section('content')

<div class="page-content edit-add container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-bordered">
                <!-- form start -->
                <form role="form" class="form-edit-add" action="" method="POST" enctype="multipart/form-data">
                    <div class="panel-body">
                        <div class="form-group">
                            <legend>Attendance</legend>
                            <label>Select Department</label>
                            <!-- <input type="text" class="form-control" id="name" name="name" placeholder="" value=""> -->
                            <select class="form-control m-bot15" name="name">
                                @if($departments->count() > 0)
                                @foreach($departments as $department)
                                    <option value="{{$role->department_name}}">{{$department->department_name}}</option>
                                @endForeach
                                @else
                                    No Record Found
                                @endif
                            </select>
                            <div class="panel-footer">
                                @section('submit-buttons')
                                <button type="submit" class="btn btn-primary save">Add Attendance</button>
                                @stop
                                @yield('submit-buttons')
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection