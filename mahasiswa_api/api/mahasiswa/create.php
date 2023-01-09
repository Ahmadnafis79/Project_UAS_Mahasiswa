<?php
header("Access-Control-Allow-Origin:*");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include "../../database/database.php";

$data = json_decode(file_get_contents("php://input"));
$npm = $data->npm;
$nama_lengkap = $data->nama_lengkap;
$jenis_kelamin = $data->jenis_kelamin;
$tempat_lahir = $data->tempat_lahir;
$tgl_lahir = $data->tgl_lahir;
$alamat = $data->alamat;

$hasil["success"] = false;
$hasil["data"] = array();

$insert_sql = "INSERT INTO mahasiswa VALUES ('$npm','$nama_lengkap','$jenis_kelamin','$tempat_lahir','$tgl_lahir','$alamat')";
$result = mysqli_query($connection, $insert_sql);
if ($result) {
    $hasil["success"] = true;
    $hasil["data"] = $data;
}

echo json_encode($hasil);
