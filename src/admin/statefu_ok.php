<?php
include("../conn/conn.php");
$id=$_GET['id'];
$type=$_GET['type'];
$state=$_GET['state'];
$sql=hxl_mysql_query("update tb_leaguerinfo set checkstate=1 where id=$id");
if($sql){
	echo "<script>alert('该信息已经通过审核！');window.location.href='find_fufei.php?type=$type&state=$state';</script>";
}
else{
	echo "<script>alert('该信息审核操作失败！');history.back();</script>";
}
?>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
