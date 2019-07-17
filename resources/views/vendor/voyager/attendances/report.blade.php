<style>
    h1,
    h3,
    table {
        font-family: "Times New Roman", Georgia, Serif;
        text-align: center;
    }

    table {
        width: 100%;
        border-left: 0.01em solid #000;
        border-right: 0;
        border-top: 0.01em solid #000;
        border-bottom: 0;
        border-collapse: collapse;
    }

    table td,
    table th {
        border-left: 0;
        border-right: 0.01em solid #000;
        border-top: 0;
        border-bottom: 0.01em solid #000;
    }
</style>
<h1>Attendance Report</h1>
<h3>From <i>{{$from_date}}</i> to <i>{{$to_date}}</i></h3>

<table>
    <thead>
        <tr>
            <th>Date</th>
            <th>Employee Id</th>
            <th>Employee Name</th>
            <th>In</th>
            <th>Out</th>
            <th>Total time</th>
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
            <?php
            $index++;
            ?>
        </tr>
        @endforeach
    </tbody>
</table>