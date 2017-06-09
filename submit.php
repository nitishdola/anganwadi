<?php session_start(); ?>
<?php include_once('conn.php'); ?>
<?php if($_SESSION['is_login'] != true) { ?>
	<script type="text/javascript">
		window.location = "index.php";
	</script>
<?php } ?>
<?php
if($_POST) {
	
	
	$count_query = "SELECT COUNT(a_id) as a_id FROM anganbadi";
	$count_sql = mysqli_query($GLOBALS["___mysqli_ston"], $count_query);
	if($row = mysqli_fetch_array($count_sql)) {
		$no = $row["a_id"]+1;
	}else{
		$no = 1;
	} 
	
	
	
	
	
	$user_id = $_SESSION['id'];
	$district = $_POST['district'];
	$serial_no = $user_id."-".$district."-".$no;	
	
	//var_dump($_POST);
	$qe1_1stmonth = 'No';
	if(isset($_POST['qe1_1stmonth'])) {
		$qe1_1stmonth = $_POST['qe1_1stmonth'];
	}
	$qe1_2ndmonth = 'No';
	if(isset($_POST['qe1_2ndmonth'])) {
		$qe1_2ndmonth = $_POST['qe1_2ndmonth'];
	}
	$qe1_3rdmonth = 'No';
	if(isset($_POST['qe1_3rdmonth'])) {
		$qe1_3rdmonth = $_POST['qe1_3rdmonth'];
	}
	
	$qe2_1stmonth = 'No';
	if(isset($_POST['qe2_1stmonth'])) {
		$qe2_1stmonth = $_POST['qe2_1stmonth'];
	}
	$qe2_2ndmonth = 'No';
	if(isset($_POST['qe2_2ndmonth'])) {
		$qe2_2ndmonth = $_POST['qe2_2ndmonth'];
	}
	$qe2_3rdmonth = 'No';
	if(isset($_POST['qe2_3rdmonth'])) {
		$qe2_3rdmonth = $_POST['qe2_3rdmonth'];
	}
	
	$qe3_1stmonth = 'No';
	if(isset($_POST['qe3_1stmonth'])) {
		$qe3_1stmonth = $_POST['qe3_1stmonth'];
	}
	$qe3_2ndmonth = 'No';
	if(isset($_POST['qe3_2ndmonth'])) {
		$qe3_2ndmonth = $_POST['qe3_2ndmonth'];
	}
	$qe3_3rdmonth = 'No';
	if(isset($_POST['qe3_3rdmonth'])) {
		$qe3_3rdmonth = $_POST['qe3_3rdmonth'];
	}
	
	$qe4_1stmonth = 'No';
	if(isset($_POST['qe4_1stmonth'])) {
		$qe4_1stmonth = $_POST['qe4_1stmonth'];
	}
	$qe4_2ndmonth = 'No';
	if(isset($_POST['qe4_2ndmonth'])) {
		$qe4_2ndmonth = $_POST['qe4_2ndmonth'];
	}
	$qe4_3rdmonth = 'No';
	if(isset($_POST['qe4_3rdmonth'])) {
		$qe4_3rdmonth = $_POST['qe4_3rdmonth'];
	}
	
	$qe5_1stmonth = 'No';
	if(isset($_POST['qe5_1stmonth'])) {
		$qe5_1stmonth = $_POST['qe5_1stmonth'];
	}
	$qe5_2ndmonth = 'No';
	if(isset($_POST['qe5_2ndmonth'])) {
		$qe5_2ndmonth = $_POST['qe5_2ndmonth'];
	}
	$qe5_3rdmonth = 'No';
	if(isset($_POST['qe5_3rdmonth'])) {
		$qe5_3rdmonth = $_POST['qe5_3rdmonth'];
	}
	
	$qe6_1stmonth = 'No';
	if(isset($_POST['qe6_1stmonth'])) {
		$qe6_1stmonth = $_POST['qe6_1stmonth'];
	}
	$qe6_2ndmonth = 'No';
	if(isset($_POST['qe6_2ndmonth'])) {
		$qe6_2ndmonth = $_POST['qe6_2ndmonth'];
	}
	$qe6_3rdmonth = 'No';
	if(isset($_POST['qe6_3rdmonth'])) {
		$qe6_3rdmonth = $_POST['qe6_3rdmonth'];
	}
	
	$qe7_1stmonth = 'No';
	if(isset($_POST['qe7_1stmonth'])) {
		$qe7_1stmonth = $_POST['qe7_1stmonth'];
	}
	$qe7_2ndmonth = 'No';
	if(isset($_POST['qe7_2ndmonth'])) {
		$qe7_2ndmonth = $_POST['qe7_2ndmonth'];
	}
	$qe7_3rdmonth = 'No';
	if(isset($_POST['qe7_3rdmonth'])) {
		$qe7_3rdmonth = $_POST['qe7_3rdmonth'];
	}
	
	$visit_date = $_POST['visit_date'];
	if(isset($_POST['visit_date']) && $_POST['visit_date'] != '') {
		$visit_date = date('Y-m-d', strtotime(str_replace('/', '-',$visit_date)));
	}else{
		$visit_date = '1970-01-01';
	}
	
	$sql = "INSERT INTO anganbadi values ('$no',
	'$serial_no',
	'$user_id', 
	'".$visit_date."',
	'".$_POST['monitors_name']."',
	'".$_POST['arrival_time']."',
	'".$_POST['centre_name']."',
	'".$_POST['centre_no']."',
	'".$_POST['centre_code']."',
	'".$_POST['alpha_numeric_code']."',
	'".$_POST['workers_name']."',
	'".$_POST['workers_ac_no']."',
	'".$_POST['bank_name']."',
	'".$_POST['bank_ifsc_code']."',
	'".$_POST['helpers_name']."',
	'".$_POST['helpers_ac_no']."',
	'".$_POST['helpers_bank_name']."',
	'".$_POST['helpers_ifsc_code']."',
	'".$_POST['awcmc_ac_no']."',
	'".$_POST['awcmc_bank_name']."',	
	'".$_POST['awcmc_ifsc_code']."',
	'".$_POST['president_name']."',
	'".$_POST['contact_no']."',
	'".$_POST['district']."',
	'".$_POST['block']."',
	'".$_POST['sector']."',
	'".$_POST['village']."',
	'".$_POST['m_p']."',
	'".$_POST['f_p']."',
	'".$_POST['t_p']."',
	'".$_POST['qa1']."',
	'".$_POST['qa2']."',
	'".$_POST['qa3']."',
	'".$_POST['qa4']."',
	'".$_POST['qa5']."',
	'".$_POST['qa6']."',
	'".$_POST['qa7']."',
	'".$_POST['qa7_1']."',
	'".$_POST['qa7_2']."',
	'".$_POST['qa7_3']."',
	'".$_POST['qa7_4']."',
	'".$_POST['qa7_5']."',
	'".$_POST['qa8']."',
	'".$_POST['qa9']."',
	'".$_POST['qa10']."',
	'".$_POST['qa11']."',
	'".$_POST['qa12a']."',
	'".$_POST['qa12b']."',	
	'".$_POST['qa12c']."',
	'".$_POST['qa12d']."',
	'".$_POST['qa8a']."',
	'".$_POST['qa9a']."',
	'".$_POST['qa10a']."',
	'".$_POST['qa11a']."',
	'".$_POST['qa13']."',
	'".$_POST['qa14']."',
	'".$_POST['qa15']."',
	'".$_POST['qa16']."',
	'".$_POST['qa17a']."',
	'".$_POST['qa17a_reson']."',
	'".$_POST['qa17b']."',
	'".$_POST['qa17b_reason']."',
	'".$_POST['qa17c']."',
	'".$_POST['qa17c_reason']."',
	'".$_POST['qa17d']."',
	'".$_POST['qa17d_reason']."',
	'".$_POST['qa18a']."',
	'".$_POST['qa18a_reason']."',
	'".$_POST['qa18b']."',
	'".$_POST['qa18b_reason']."',
	'".$_POST['qa18c']."',
	'".$_POST['qa18c_reason']."',
	'".$_POST['qa18d']."',
	'".$_POST['qa18d_reason']."',
	'".$_POST['qa18e']."',
	'".$_POST['qa18e_reason']."',	
	'".$_POST['qa19a']."',
	'".$_POST['qa19a_reason']."',
	'".$_POST['qa19b']."',
	'".$_POST['qa19b_reason']."',
	'".$_POST['qa19c']."',
	'".$_POST['qa19c_reason']."',
	'".$_POST['qa19d']."',
	'".$_POST['qa19d_reason']."',
	'".$_POST['qa19e']."',
	'".$_POST['qa19e_reason']."',
	'".$_POST['qa19f']."',
	'".$_POST['qa19f_reason']."',
	'".$_POST['qa19g']."',
	'".$_POST['qa19g_reason']."',
	'".$_POST['qa20']."',
	'".$_POST['qa21']."',
	'".$_POST['qa22']."',
	'".$_POST['qb1']."',
	'".$_POST['qb1_reason']."',
	'".$_POST['qb2']."',
	'".$_POST['qb2_reason']."',
	'".$_POST['qb3']."',
	'".$_POST['qb3_reason']."',
	'".$_POST['qb4']."',
	'".$_POST['qb4_reason']."',
	'".$_POST['qb5']."',
	'".$_POST['qb5_reason']."',	
	'".$_POST['qb6']."',
	'".$_POST['qb6_reason']."',
	'".$_POST['qb7']."',
	'".$_POST['qb7_reason']."',
	'".$_POST['qc1']."',
	'".$_POST['qc1_reason']."',
	'".$_POST['qc2']."',
	'".$_POST['qc2_reason']."',
	'".$_POST['qc3a']."',
	'".$_POST['qc3a_reason']."',
	'".$_POST['qc3b']."',
	'".$_POST['qc3b_reason']."',
	'".$_POST['qc4']."',
	'".$_POST['qc4_reason']."',
	'".$_POST['qc5']."',
	'".$_POST['qc5_reason']."',
	'".$_POST['qc6']."',
	'".$_POST['qc6_reason']."',
	'".$_POST['qc7']."',
	'".$_POST['qc7_reason']."',
	'".$_POST['qc8']."',
	'".$_POST['qc8_reason']."',
	'".$_POST['qd1']."',
	'".$_POST['qd1_reason']."',
	'".$_POST['qd2']."',
	'".$_POST['qd2_reason']."',
	'".$_POST['qd3']."',
	'".$_POST['qd3_reason']."',	
	'".$_POST['qd4']."',
	'".$_POST['qd4_reason']."',
	'".$_POST['qd5']."',
	'".$_POST['qd5_reason']."',
	'".$_POST['qd6']."',
	'".$_POST['qd6_reason']."',
	'".$_POST['qd7']."',
	'".$_POST['qd7_reason']."',
	'".$_POST['qd8']."',
	'".$_POST['qd8_reason']."',
	'".$_POST['qd9']."',
	'".$_POST['qd9_reason']."',
	'".$_POST['qd10']."',
	'".$_POST['qd10_reason']."',
	'',
	'".$_POST['qd11_number']."',
	'',
	'$qe1_1stmonth',
	'$qe1_2ndmonth',
	'$qe1_3rdmonth',
	'$qe2_1stmonth',
	'$qe2_2ndmonth',
	'$qe2_3rdmonth',
	'$qe3_1stmonth',
	'$qe3_2ndmonth',
	'$qe3_3rdmonth',
	'$qe4_1stmonth',
	'$qe4_2ndmonth',
	'$qe4_3rdmonth',	
	'$qe5_1stmonth',
	'$qe5_2ndmonth',
	'$qe5_3rdmonth',
	'$qe6_1stmonth',
	'$qe6_2ndmonth',
	'$qe6_3rdmonth',
	'$qe7_1stmonth',
	'$qe7_2ndmonth',
	'$qe7_3rdmonth',
	'".$_POST['qf1_date_of_last_survey']."',
	'".$_POST['qf1_no_of_families']."',
	'".$_POST['qf1_date_of_last_update']."',
	'".$_POST['qf2_date_of_last_update']."',
	'".$_POST['g1_avl']."',
	'".$_POST['g1_maintenance']."',
	'".$_POST['g2_avl']."',
	'".$_POST['g2_maintenance']."',
	'".$_POST['g3_avl']."',
	'".$_POST['g3_maintenance']."',
	'".$_POST['g4_avl']."',
	'".$_POST['g4_maintenance']."',
	'".$_POST['g5_avl']."',
	'".$_POST['g5_maintenance']."',
	'".$_POST['g6_avl']."',
	'".$_POST['g6_maintenance']."',
	'".$_POST['g7_avl']."',
	'".$_POST['g7_maintenance']."',	
	'".$_POST['g8_avl']."',
	'".$_POST['g8_maintenance']."',
	'".$_POST['g9_avl']."',
	'".$_POST['g9_maintenance']."',
	'".$_POST['g10_avl']."',
	'".$_POST['g10_maintenance']."',
	'".$_POST['g11_avl']."',
	'".$_POST['g11_maintenance']."',
	'".$_POST['g12_avl']."',
	'".$_POST['g13_avl']."',
	'".$_POST['g13_avl_reason']."',
	'".$_POST['qh1_no_of_active_members']."',
	'".$_POST['qh1_no_of_meetings']."',
	'".$_POST['qh1_proceedings']."',
	'".$_POST['qh1_activity']."',
	'".$_POST['qh2_no_of_active_members']."',
	'".$_POST['qh2_no_of_meetings']."',
	'".$_POST['qh2_proceedings']."',
	'".$_POST['qh2_activity']."',
	'".$_POST['remarks']."',
	'".$_POST['date_of_visit']."',
	'".$_POST['signature_aww']."',
	'".$_POST['signature_monitor']."',
	'".$_POST['created_at']."');";
	
	
	$query = mysqli_query($GLOBALS["___mysqli_ston"], $sql);
	if($query) {
		//$msg = "<div class='message_success'>Record Successfully Added.</div>";
		$newURL = 'form.php?slno='.$serial_no;
		header('Location: '.$newURL);
	} else {
		echo mysqli_error($GLOBALS["___mysqli_ston"]);
	}
}
?>