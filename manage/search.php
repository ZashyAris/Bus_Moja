<?php
if (isset($_POST['submit'])) {
    include_once '../db/database.php';
        $req=$_POST["seats"];
        $bus_id;
        $sel="SELECT * FROM `bus` where origin='".$_POST["origin"]."' and destination='".$_POST["destination"]."' and date='".$_POST["date"]."' and seats>= ".$_POST["seats"]."  " ;
        $str= mysql_query($sel) or die(mysql_error());
        $rows= mysql_num_rows($str) ;
        if($rows==0)
        {

            echo '<h3 style= "text-align:center;"> <font color="red">No available Buses </font></h3>';
            echo "<br>";
        }
        else
        {

            echo '<h3 style= "text-align:center;"> <font color="red"><center>Available Buses </center></font></h3>';
        echo '<table align="center" border=1 >
        <tr>
        <th> Id </th>
        <th> Name of the bus</th>
        <th> Available seats </th>
        <th> Origin </th>
        <th> Destination </th>
        <th> Date of journey</th>
        <th> Arrival time </th>
        <th> Departure time </th>
        <th> Fare </th>
        <th> Book </th>
        </tr>';
        while($row=mysql_fetch_array($str))
        {
            $Bus_id = $row['Id'];
            $Total_fare= $row['Fare'] * $req;
            //echo $Bus_id;
            echo "<tr>";

            echo "<td>".$row['Id']."</td>";
            echo "<td>".$row['Name']."</td>";
            echo "<td>".$row['Seats']."</td>";
            echo "<td>".$row['Origin']."</td>";
            echo "<td>".$row['Destination']."</td>";
            echo "<td>".$row['Date']."</td>";
            echo "<td>".$row['Arrival_time']."</td>";
            echo "<td>".$row['Departure_time']."</td>";
            echo "<td>".$row['Fare']."</td>";
            echo "<td>";
            echo '<a href="payment1.php?Seats_no='.$req.'& Bus_id='.$Bus_id.'& Total_fare='.$Total_fare.'">Book Now</a>';
            echo "</td>";
            echo "</tr>";
        }
        echo "</table>";
        }
    }else{
        header('Location: ./index.php?Booking=error');
        exit();
    }

?>