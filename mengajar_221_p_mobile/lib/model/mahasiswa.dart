class Mahasiswa {
  dynamic npm;
  String nama_lengkap;
  String jenis_kelamin;
  String tempat_lahir;
  String tgl_lahir;
  String alamat;

  Mahasiswa(
      {required this.npm,
      required this.nama_lengkap,
      required this.jenis_kelamin,
      required this.tempat_lahir,
      required this.tgl_lahir,
      required this.alamat});

  factory Mahasiswa.fromJson(Map<String, dynamic> db_perkuliahan) => Mahasiswa(
        npm: db_perkuliahan['id'],
        nama_lengkap: db_perkuliahan['nama_lengkap'],
        jenis_kelamin: db_perkuliahan['jenis_kelamin'],
        tempat_lahir: db_perkuliahan['tempat_lahir'],
        tgl_lahir: db_perkuliahan['tgl_lahir'],
        alamat: db_perkuliahan['alamat'],
      );

  Map<String, dynamic> toJson() {
    var data = {
      'npm': npm,
      'nama_lengkap': nama_lengkap,
      'jenis_kelamin': jenis_kelamin,
      'tempat_lahir': tempat_lahir,
      'tgl_lahir': tgl_lahir,
      'alamat': alamat,
    };
    return data;
  }
}
