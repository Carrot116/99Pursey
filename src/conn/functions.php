<?php
/**
 * Created by PhpStorm.
 * User: carrot
 * Date: 16-8-18
 * Time: 下午11:35
 */

//$conn = mysqli_connect("localhost", "root", "root") or die("数据库服务器连接错误".mysql_error());
//mysqli_select_db($conn, "db_pursey") or die("数据库访问错误".mysql_error());
//mysqli_query($conn, "set names utf8");


$mysql_conn;
function hxl_mysql_conn(){
    global $mysql_conn;
    $mysql_conn = mysqli_connect("localhost", "root", "root") or die("数据库服务器连接错误".$conn.error());
    mysqli_select_db($mysql_conn, "db_pursey") or die("数据库访问错误".$conn.error());
    mysqli_query($mysql_conn, "set names utf8");
    return $mysql_conn;
}
function hxl_mysql_query($param){
    global $mysql_conn;
    return $mysql_conn->query($param);
}
function hxl_mysql_fetch_array($param){
    return $param->fetch_array();
}

function hxl_get_strValue($name, $defValue=""){
    if (!isset($_GET[$name]) || $_GET[$name] == "")
        return $defValue;
    else
        return $_GET[$name];
}

function hxl_get_intValue($name, $defValue=1){
    if (!isset($_GET[$name]) || $_GET[$name] == "")
        return $defValue;
    else
        return intval($_GET[$name]);
}

function hxl_post_strValue($name, $defValue=""){
    if (!isset($_POST[$name]) || $_POST[$name] == "")
        return $defValue;
    else
        return $_POST[$name];
}

function hxl_post_intValue($name, $defValue=1){
    if (!isset($_POST[$name]) || $_POST[$name] == "")
        return $defValue;
    else
        return intval($_POST[$name]);
}

function hxl_isset_post($name){
    return isset($_POST[$name]);
}

function hxl_isset_get($name){
    return isset($_GET[$name]);
}
?>
