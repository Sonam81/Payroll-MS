@extends('voyager::master')

@section('page_title','Viewing Attendances')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-credit-card"></i>Attendance
</h1>
<a href="{{ route('attendances.create') }}" class="btn btn-success btn-add-new">
    <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
</a>
@stop

@section('content')

<form action="{{route('attendances.report')}}" class="form-group col-md-12 pull-right" method="post">
    @csrf
    <div class="form-group col-md-4">
        <input class="form-control" type="date" name="from_date" value="">
    </div>

    <div class="form-group col-md-2">
        <label class="control-label"> to </label>
    </div>

    <div class="form-group col-md-4">
        <input class="form-control" type="date" name="to_date" value="">
    </div>

    <div class="form-group col-md-2">
        <button class="btn btn-primary"><i class="voyager-list"></i>Report</button>
    </div>
</form>

@if($attendances->count()>0)
<div class="table-responsive col-md-12">
    <table id="attendance_table" class="table table-hover display">
        <thead>
            <tr>
                <th>Date</th>
                <th>Employee Id</th>
                <th>Employee Name</th>
                <th>In</th>
                <th>Out</th>
                <th>Total time</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @php
            $index = 0;
            @endphp
            @foreach($attendances as $attendance)

            <tr>
                <td>{{$attendances[$index]->date}}</td>
                <td>{{$attendances[$index]->employee->employee_id}}</td>
                <td>{{$attendances[$index]->employee->employee_name}}</td>
                <td>{{$attendances[$index]->details[0]->punch_time}}</td>
                <?php $size = sizeof($attendances[$index]->details) ?>
                <td>{{$attendances[$index]->details[$size-1]->punch_time}}</td>
                <?php
                $hourF = new DateTime($attendances[$index]->details[$size - 1]->punch_time);
                $hourL = new DateTime($attendances[$index]->details[0]->punch_time);
                $hour = $hourF->diff($hourL);
                ?>
                <td> <?php echo $hour->format("%Hh %im"); ?> </td>
                <td>
                    <div id="mod" class="modal">
                        <p class="lead">Employee Id : {{$attendances[$index]->employee_id}}</p>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Punch Time</th>
                                    <th>Punch Type</th>
                                </tr>
                            </thead>
                            <tbody>
                                @for($i = 0; $i < sizeof($attendances[$index]->details);$i++)
                                    <tr>
                                        <td>{{$attendances[$index]->details[$i]->punch_time}}</td>
                                        <td>{{$attendances[$index]->details[$i]->punch_type}}</td>
                                    </tr>
                                    @endfor
                            </tbody>
                        </table>
                        <p>Date : {{$attendances[$index]->date}}</p>
                        <a href="#" rel="modal:close">Close</a>
                    </div>


                    <a onclick="return confirm('Are you sure?')" href="{{route('attendances.delete',$attendances[$index]->id)}}" title="Delete" class="btn btn-sm btn-danger pull-right delete">
                        <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
                    </a>
                    <a href="{{ route('attendances.edit', $attendances[$index]->id)}}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
                        <i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
                    </a>
                    <a href="#mod" rel="modal:open" title="View" class="btn btn-sm btn-warning pull-right view">
                        <i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
                    </a>
                </td>
                <?php
                $index++;
                ?>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endif
@stop
@section('javascript')
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#attendance_table').DataTable();
    });
</script>
@stop

@section('css')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
@stop