<?php
$list=file("declist.txt");
foreach($list as $l ){
	$l=trim($l);
	if($l!=""){
	echo $l ." ".dechex($l)."\r\n";
	}

}
