<!--

Database Account credentials:
user: lafirenze
pass: alzotr6ekwbicjhyfdvp 

-->

<?php

//========ACCESS DATABASE========
define('DB_SERVER', 'localhost'); 
define('DB_USERNAME', 'lafirenze'); 
define('DB_PASSWORD', 'alzotr6ekwbicjhyfdvp'); 
define('DB_NAME', 'lafirenzedb'); 
//Create Connection
$conn = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME); //host,username,pass,db
// Check Connection
if($conn === false){ 
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// variables
// Personal Details
$name = mysqli_real_escape_string($conn, $_REQUEST['name']);
$email = mysqli_real_escape_string($conn, $_REQUEST['email']);
$phoneNum = mysqli_real_escape_string($conn, $_REQUEST['contact']);
$address = mysqli_real_escape_string($conn, $_REQUEST['address']);

// Event Details
$event = mysqli_real_escape_string($conn, $_REQUEST['event']);
$ingress = mysqli_real_escape_string($conn, $_REQUEST['ingress']);
$egress = mysqli_real_escape_string($conn, $_REQUEST['egress']);
$caterer = mysqli_real_escape_string($conn, $_REQUEST['nameOfCaterer']);
$lightsProvider = mysqli_real_escape_string($conn, $_REQUEST['lightsProvider']);
$soundsProvider = mysqli_real_escape_string($conn, $_REQUEST['soundsProvider']);
$numOfGuests = mysqli_real_escape_string($conn, $_REQUEST['numOfGuests']);
$numOfHours = mysqli_real_escape_string($conn, $_REQUEST['numOfHours']);

$dateFrom = mysqli_real_escape_string($conn, $_REQUEST['dateFrom']);
$dateTo = mysqli_real_escape_string($conn, $_REQUEST['dateTo']);
$timeStart = mysqli_real_escape_string($conn, $_REQUEST['timeStart']);
$timeEnd = mysqli_real_escape_string($conn, $_REQUEST['timeEnd']);

//Insert values to Database
$sql = "INSERT INTO tbl_reservation (name, email, contact, address, event, ingress, egress, caterer, lightsProvider, soundsProvider, numOfGuests, numOfHours, dateFrom, dateTo, timeStart, timeEnd) 
VALUES ('$name', '$email', '$phoneNum', '$address', '$event', '$ingress', '$egress', '$caterer', '$lightsProvider', '$soundsProvider',
'$numOfGuests', '$numOfHours', '$dateFrom', '$dateTo', '$timeStart', '$timeEnd')";

$to = "inquiry@lafirenze.com.ph";
$subject = "New Reservation Submission - La Firenze";
$message = "You have a new form submission. Kindly check the database from your panel for full details.";
$headers = "From: inquiry@lafirenze.com.ph";

//RESET ID TO 1
mysqli_query($conn, "ALTER TABLE tbl_reservation AUTO_INCREMENT = 1;");
    if (mysqli_query($conn, $sql)) {
		echo "<script>confirm('Reservation details has been sent successfully! We will get back to you soon')</script>";
		if (mail($to, $subject, $message, $headers)) {
			echo "<script>confirm('Email sent successfully')</script>";
		}else{
			echo "<script>confirm('We encountered an error sending mail')</script>";
		}
	}
	else{
		echo "ERROR: Could not be able to execute $sql " . mysqli_error($conn);
	}
?>
<script>
    window.history.back();
</script>