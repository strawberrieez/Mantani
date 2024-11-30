part of '_index.dart';

class KelolaPageListView extends StatefulWidget {
  const KelolaPageListView({super.key});

  @override
  _KelolaPageListViewState createState() => _KelolaPageListViewState();
}

class _KelolaPageListViewState extends State<KelolaPageListView> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Navigasi sesuai index
    switch (index) {
      case 0:
        // Navigasi ke halaman kelola (halaman saat ini)
        break;
      case 1:
        // Navigasi ke halaman penghasilan
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F0DC),
      body:  Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _ct.createDoc();
              },
              child: Text(
                "Elevated Button",
              ),
            ),
            
          ],
          
        ),
        
      ),

      // body: Container(
      //   color: const Color.fromRGBO(231, 240, 220, 1),
      //   child: ListView(
      //     padding: const EdgeInsets.all(16.0),
      //     children: List.generate(5, (index) {
      //       return Card(
      //         color: Colors.grey[300],
      //         margin: const EdgeInsets.only(bottom: 16),
      //         child: ListTile(
      //           leading: const Icon(
      //             Icons.location_on,
      //             color: Colors.black,
      //           ),
      //           title: Text(
      //             'Lahan ${index + 1}',
      //             style: const TextStyle(
      //               color: Colors.black, // Warna teks hitam
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           subtitle: Text(
      //             _getLahanSubtitle(index),
      //             style: const TextStyle(color: Colors.black54),
      //           ),
      //           trailing: TextButton(
      //             onPressed: () {
      //               // Tambahkan aksi untuk tombol "Selengkapnya"
      //             },
      //             style: TextButton.styleFrom(
      //               foregroundColor: Colors.green, // Warna teks hijau
      //             ),
      //             child: const Text('Selengkapnya'),
      //           ),
      //         ),
      //       );
      //     }),
      //   ),
      // ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nav.to(Routes.kelolaPageDetail);
        },
        backgroundColor: const Color(0xFF597445),
        child: const Icon(Icons.add),
      ),
    );
  }

  // Fungsi untuk mendapatkan teks subtitle berdasarkan indeks lahan
  String _getLahanSubtitle(int index) {
    const subtitles = [
      'Sebelah tower',
      'Dekat warung Bu Sari',
      'Belakang rumah',
      'Dekat sungai sekolah',
      'Sebelah rumah',
    ];
    return subtitles[index];
  }
}
