<?php
    if(isset($_POST['submit'])){
        include_once '../db/database.php';

        //get info from the form
        $departure = mysqli_real_escape_string($conn, $_POST['departure']);
        $destination= mysqli_real_escape_string($conn, $_POST['destination']);
        $date = mysqli_real_escape_string($conn, $_POST['date']);

        //insert data into the db
        $sql = "INSERT INTO  bussearch (departure,destination, travel_date) 
        VALUES ('$departure', '$destination', '$date')";
        mysqli_query($conn, $sql);
        header('Location: ../main/item.php?itemadded');
    }
    else{
        header('Location: ../main/index.php');
        exit();
    }
?>