import 'package:mengajar_221_p_mobile/model/mahasiswa.dart';

class MahasiswaRead {
  MahasiswaRead({required this.success, required this.mahasiswas});

  bool success;
  List<Mahasiswa> mahasiswas;

  factory MahasiswaRead.fromJson(Map<String, dynamic> json) => MahasiswaRead(
      success: json['success'],
      mahasiswas:
          List<Mahasiswa>.from(json['data'].map((x) => Mahasiswa.fromJson(x))));
}
