@extends('voyager::master')

@section('page_title','Viewing Attendances')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-log-book"></i>{{isset($attendances)? 'Edit Attendance': 'Add Attendance'}}
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')
<form action="{{isset($attendances) ? route('attendances.update',$attendances->id) : route('attendances.store') }}" method="post" class="form-group">
    @csrf
    <div class="form-group  col-md-12 ">
        <div class="form-group  col-md-12 ">
            @if(!isset($attendances))
            <label class="control-label" for="name">Employee Name</label>
            <select class="form-control" name="employee_id">
                @foreach($employees as $employee)
                <option <?php if (isset($attendances) && $attendances->employee_id == $employee->id) echo 'Selected'; ?> value="{{$employee->id}}">{{$employee->employee_id}} - {{$employee->employee_name}}</option>
                @endforeach
                <option>
            </select>
            @else
            <input type="hidden" name="employee_id" value="{{$attendances->employee_id}}">
            @endif
        </div>

        <div class="col-md-12 form-group">
            <div class="form-group">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Punch Time</th>
                            <th>Punch Type</th>
                            <th class="text-center"><a href="#" style="text-decoration: none" class="btn btn-success addRow">Add New</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(isset($attendances))
                        @for($i = 0; $i < sizeof($attendances->details); $i++)
                            <tr>
                                <td>
                                    <input type="time" class="form-control" name="punch_time[]" placeholder="" value="{{$attendances->details[$i]->punch_time}}">
                                </td>
                                <td>
                                    <select class="form-control" name="punch_type[]">
                                        @foreach($punchtypes as $punchtype)
                                        <option <?php if ($attendances->details[$i]->punch_type == $punchtype->punch_type) echo 'Selected'; ?> value="{{$punchtype->punch_type}}">{{$punchtype->punch_type}}</option>
                                        @endforeach
                                    </select>
                                </td>
                                <td class="text-center"> <a href="{{route('attendances.deleteDetails',$attendances->details[$i]->id)}}" style="text-decoration: none" class="btn btn-danger remove">Remove</a>
                                </td>
                            </tr>
                            @endfor
                            @else
                            <tr>
                                <td>
                                    <input type="time" class="form-control" name="punch_time[]" placeholder="" value="{{date('H:i')}}">
                                </td>
                                <td>
                                    <select class="form-control" name="punch_type[]">
                                        @foreach($punchtypes as $punchtype)
                                        <option value="{{$punchtype->punch_type}}">{{$punchtype->punch_type}}</option>
                                        @endforeach
                                    </select>

                                </td>
                                <td class="text-center"> <a href="#" style="text-decoration: none" class="btn btn-danger">Remove</a>
                                </td>
                            </tr>
                            @endif
                    </tbody>
                </table>
            </div>
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Date</label>
            <input readonly type="text" class="form-control" name="date" placeholder="" value="{{date('Y-m-d')}}">
        </div>

        <!-- <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value=""> -->
    </div>
    <div class="panel-footer">
        @section('submit-buttons')
        <button type="submit" class="btn btn-primary save">{{ __('voyager::generic.save') }}</button>
        @stop
        @yield('submit-buttons')
    </div>
</form>
@stop

@section('javascript')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>


<script type="text/javascript">
    $('.addRow').on('click', function() {
        addRow();
    });

    function addRow() {
        var tr = '<tr>' +
            '<td>' +
            '<input type="time" class="form-control" name="punch_time[]" placeholder="" value="">' +
            '</td>' +
            '<td>' +
            '<select class="form-control" name="punch_type[]">' +
            '@foreach($punchtypes as $punchtype)' +
            '<option value="{{$punchtype->punch_type}}">{{$punchtype->punch_type}}</option>' +
            '@endforeach' +
            '</select>' +
            '</td>' +
            '<td class="text-center"> <a href="#" style="text-decoration: none" class="btn btn-danger remove">Remove</a>' +
            '</td>' +
            '</tr>';
        $('tbody').append(tr);

    };

    $('tbody').on('click', '.remove', function() {
        $(this).parent().parent().remove();
    });

    $(document).ready(function() {
        $('#attendance_table').DataTable();
    });
</script>
@stop

@section('css')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
@stop