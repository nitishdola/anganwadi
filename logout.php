<?php
session_start();
session_unset();
session_destroy();
$_SESSION['is_login'] = false;
?>
<script type="text/javascript">
	window.location = "index.php";
</script>