
<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'sts_radit');
$connect = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME) 
or die("Gagal menampilkan database . mysqli_error"($connect));

function kuery($kueri)
{
    global $connect;
    $result = mysqli_query($connect, $kueri);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

//login
function cek_login($username, $password){
    global $connect;
    $uname = $username;
    $upass = $password;

    $hasil = mysqli_query($connect, "SELECT * FROM user WHERE username ='$uname' and password=MD5('$upass')");
    $cek = mysqli_num_rows($hasil);

    if($cek > 0){
        $sql = mysqli_fetch_array($hasil);
        $_SESSION['username'] = $sql['username'];
        $_SESSION['role'] = $sql['role'];
        return true;
    } else {
        return false;
    }
}

function tambah_barang($data)
{
    global $connect;

    $kode_barang = htmlspecialchars($data['kode_brg']);
    $nama_barang = htmlspecialchars($data['nama_brg']);
    $kategori = htmlspecialchars($data['kategori']);
    $merk = htmlspecialchars($data['merk']);
    $jumlah = htmlspecialchars($data['jumlah']);

    $sql = "INSERT INTO barang (id, kode_brg, nama_brg, kategori, merk, jumlah) VALUES (null, '$kode_barang', '$nama_barang', '$kategori', '$merk', '$jumlah')";

    if (mysqli_query($connect, $sql)) {
        return true;
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($connect);
        return false;
    }
}

function editData($tablename, $id)
{
    global $connect;
    $sql = mysqli_query($connect, "SELECT * FROM $tablename WHERE id = '$id'");
    return $sql;
}

function update($data)
{
    global $connect;
    $hasil = mysqli_query($connect, $data);
    return $hasil;
}
function get_barang_by_id($id)
{
    global $connect;
    $result = mysqli_query($connect, "SELECT * FROM barang WHERE id = $id");
    return mysqli_fetch_assoc($result);
}
?>
