import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mengajar_221_p_mobile/model/mahasiswa.dart';
import 'package:mengajar_221_p_mobile/model/mahasiswaread.dart';

class ApiService {
  static const String baseUrl = 'http://127.0.0.1/mahasiswa_api/api/';

  Future<MahasiswaRead> getMahasiswa() async {
    final response = await http.get(Uri.parse("${baseUrl}mahasiswa/read.php"));
    if (response.statusCode == 200) {
      return MahasiswaRead.fromJson(json.decode(response.body));
    } else {
      throw Exception('gagal');
    }
  }

  Future<http.Response> createMahasiswa(
      dynamic npm,
      String nama_lengkap,
      String jenis_kelamin,
      String tempat_lahir,
      String tgl_lahir,
      String alamat) async {
    final response = await http.post(
      Uri.parse("${baseUrl}mahasiswa/create.php"),
      body: jsonEncode(<String, String>{
        'npm': npm,
        'nama_lengkap': nama_lengkap,
        'jenis_kelamin': jenis_kelamin,
        'tempat_lahir': tempat_lahir,
        'tgl_lahir': tgl_lahir,
        'alamat': alamat,
      }),
    );
    return response;
  }

  Future<http.Response> updateMahasiswa(
      dynamic npm,
      String nama_lengkap,
      String jenis_kelamin,
      String tempat_lahir,
      String tgl_lahir,
      String alamat) async {
    final response = await http.post(
      Uri.parse("${baseUrl}mahasiswa/update.php"),
      body: jsonEncode(<String, String>{
        'npm': npm,
        'nama_lengkap': nama_lengkap,
        'jenis_kelamin': jenis_kelamin,
        'tempat_lahir': tempat_lahir,
        'tgl_lahir': tgl_lahir,
        'alamat': alamat,
      }),
    );
    return response;
  }

  Future<http.Response> updateMahasiswa2(Mahasiswa mahasiswa) async {
    final response = await http.post(
      Uri.parse("${baseUrl}mahasiswa/update.php"),
      body: jsonEncode(mahasiswa.toJson()),
    );
    return response;
  }
}
