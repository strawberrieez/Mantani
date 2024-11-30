part of '_index.dart';

class GajiKaryawanListView extends StatelessWidget {
  const GajiKaryawanListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk daftar karyawan
    final List<Map<String, dynamic>> karyawanList = [
      {'nama': 'John Doe', 'gaji': 5000000},
      {'nama': 'Jane Smith', 'gaji': 4500000},
      {'nama': 'Robert Brown', 'gaji': 5200000},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Gaji Karyawan'),
        backgroundColor: const Color(0xFF597445),
      ),
      backgroundColor: const Color(0xFFE7F0DC), // Warna latar belakang
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: karyawanList.length,
          itemBuilder: (context, index) {
            final karyawan = karyawanList[index];
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(
                  karyawan['nama'],
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                subtitle: Text(
                  'Gaji: Rp. ${karyawan['gaji'].toString()}',
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit, color: Color(0xFF597445)),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        useSafeArea: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                        ),
                        backgroundColor: const Color(0xFFE7F0DC), // Warna latar belakang modal
                        builder: (_) {
                          return FractionallySizedBox(
                            heightFactor: 2.5, // Modal hanya menggunakan 50% dari tinggi layar
                            child: GajiKaryawanDetailView(
                              namaKaryawan: karyawan['nama'],
                              gajiKaryawan: karyawan['gaji'],
                            ),
                          );
                        },
                      );
                    }
                ),
              ),
            );
          },
        ),
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            backgroundColor: const Color(0xFFE7F0DC), // Warna latar belakang modal
            builder: (_) {
              return FractionallySizedBox(
                heightFactor: 0.5, // Modal hanya menggunakan 50% dari tinggi layar
                child: const GajiKaryawanDetailView(),
              );
            },
          );
        },
        backgroundColor: const Color(0xFF597445),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
