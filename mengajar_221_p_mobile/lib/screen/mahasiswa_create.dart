import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';

import '../model/mahasiswa.dart';

class MahasiswaCreate extends StatefulWidget {
  static const routeName = '/mahasiswa_create';
  const MahasiswaCreate({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MahasiswaCreateState();
}

class _MahasiswaCreateState extends State<MahasiswaCreate> {
  dynamic _npm = '';
  String _nama_lengkap = '';
  String _jenis_kelamin = '';
  String _tempat_lahir = '';
  String _tgl_lahir = '';
  String _alamat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Input Data Mahasiswa'),
        ),
        body: Container(
          color: Color.fromARGB(255, 218, 238, 255),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.assignment_ind_outlined),
                    border: OutlineInputBorder(),
                    hintText: 'Contoh : 2010020103',
                    labelText: 'Input NPM Mahasiswa',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _npm = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: 'Contoh : AHMAD NAFIS ALMADANI',
                    labelText: 'Input Nama Mahasiswa',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _nama_lengkap = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.group_rounded),
                    hintText: 'Contoh : LAKI-LAKI',
                    labelText: 'Input Jenis Kelamin',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _jenis_kelamin = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_city),
                    hintText: 'Contoh : TABALONG',
                    labelText: 'Input Tempat Lahir',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _tempat_lahir = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.calendar_month_outlined),
                    hintText: 'Contoh : 2002-12-03',
                    labelText: 'Input Tanggal Lahir',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _tgl_lahir = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.add_location_alt_outlined),
                    hintText: 'Contoh : Jl. Kenanga No.12, Banjarbaru',
                    labelText: 'Input Alamat',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _alamat = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('SIMPAN'),
                  onPressed: () {
                    ApiService apiService = ApiService();
                    apiService.createMahasiswa(_npm, _nama_lengkap,
                        _jenis_kelamin, _tempat_lahir, _tgl_lahir, _alamat);

                    Mahasiswa mahasiswa = Mahasiswa(
                        npm: 2010020108,
                        nama_lengkap: 'Ahmad Ridwan',
                        jenis_kelamin: 'LAKI-LAKI',
                        tempat_lahir: "Binuang",
                        tgl_lahir: '2001-12-15',
                        alamat: 'Jl. Berimbun');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
