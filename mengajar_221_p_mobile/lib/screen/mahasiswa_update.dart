import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';
import '../model/mahasiswa.dart';

class MahasiswaUpdate extends StatefulWidget {
  static const routeName = '/mahasiswa_update';
  const MahasiswaUpdate({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> updateState() => _MahasiswaUpdateState();
}

class _MahasiswaUpdateState extends State<MahasiswaUpdate> {
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
          backgroundColor: Colors.lightBlue,
          title: const Text('Data Mahasiswa'),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Contoh : 2010020103',
                    labelText: 'Input NPM Mahasiswa',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _npm = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Contoh : AHMAD NAFIS ALMADANI',
                    labelText: 'Input Nama Mahasiswa',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _nama_lengkap = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Contoh : LAKI-LAKI',
                    labelText: 'Input Jenis Kelamin',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _jenis_kelamin = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Contoh : TABALONG',
                    labelText: 'Input Tempat Lahir',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _tempat_lahir = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Contoh : 2002-12-03',
                    labelText: 'Input Tanggal Lahir',
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _tgl_lahir = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
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
                  child: const Text('Submit'),
                  onPressed: () {
                    ApiService apiService = ApiService();
                    // apiService.createMahasiswa(_nama);

                    Mahasiswa mahasiswa = Mahasiswa(
                        npm: 2010020108,
                        nama_lengkap: 'Ahmad Ridwan',
                        jenis_kelamin: 'LAKI-LAKI',
                        tempat_lahir: "Binuang",
                        tgl_lahir: '2001-12-15',
                        alamat: 'Jl. Berimbun');
                    apiService.updateMahasiswa2(mahasiswa);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
