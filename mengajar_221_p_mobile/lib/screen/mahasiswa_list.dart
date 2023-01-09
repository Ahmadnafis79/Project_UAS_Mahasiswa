import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/api/api_service.dart';
import 'package:mengajar_221_p_mobile/model/mahasiswa.dart';
import 'package:mengajar_221_p_mobile/model/mahasiswaread.dart';
import 'package:mengajar_221_p_mobile/screen/mahasiswa_create.dart';

class MahasiswaList extends StatefulWidget {
  static const routeName = '/mahasiswa_list';

  const MahasiswaList({Key? key}) : super(key: key);

  @override
  State<MahasiswaList> createState() => _MahasiswaListState();
}

class _MahasiswaListState extends State<MahasiswaList> {
  late Future<MahasiswaRead> _future;

  @override
  void initState() {
    super.initState();
    ApiService apiService = ApiService();
    _future = apiService.getMahasiswa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Data Mahasiswa'),
      ),
      body: Container(
        color: Color.fromARGB(255, 218, 238, 255),
        child: Center(
          child: FutureBuilder<MahasiswaRead>(
            future: _future,
            builder: (context, snapshot) {
              var state = snapshot.connectionState;
              if (state != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (snapshot.hasData) {
                  final List<Mahasiswa> mahasiswas = snapshot.data!.mahasiswas;
                  return ListView.builder(
                      itemCount: mahasiswas.length,
                      itemBuilder: (context, index) {
                        return _buildMahasiswaCard(context, mahasiswas[index]);
                      });
                } else if (snapshot.hasError) {
                  return Center(child: Text("${snapshot.error}"));
                } else {
                  return const Text('');
                }
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, MahasiswaCreate.routeName);
        },
      ),
    );
  }

  Widget _buildMahasiswaCard(BuildContext context, Mahasiswa mahasiswa) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: ListTile(
        trailing: Row(
          children: [
            Icon(Icons.delete),
            Icon(Icons.add),
          ],
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text(
          mahasiswa.nama_lengkap,
        ),
        subtitle: Text(mahasiswa.alamat),
      ),
    );
  }
}
