<?php
header("Access-Control-Allow-Origin:*");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include "../../database/database.php";

$select_sql = "SELECT * FROM mahasiswa";
$result = mysqli_query($connection, $select_sql);
$hasil["success"] = true;
$hasil["data"] = array();
while ($row = mysqli_fetch_assoc($result)) {
    $array_berkas = array(
        "npm," => $row["npm"],
        "nama_lengkap" => $row["nama_lengkap"],
        "jenis_kelamin" => $row["jenis_kelamin"],
        "tempat_lahir" => $row["tempat_lahir"],
        "tgl_lahir" => $row["tgl_lahir"],
        "alamat" => $row["alamat"]
    );
    array_push($hasil["data"], $array_berkas);
}
echo json_encode($hasil);
