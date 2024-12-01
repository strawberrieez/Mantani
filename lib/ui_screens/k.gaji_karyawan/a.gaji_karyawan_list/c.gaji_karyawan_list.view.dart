part of '_index.dart';

class GajiKaryawanListView extends StatelessWidget {
  const GajiKaryawanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Gaji Karyawan'),
        backgroundColor: const Color(0xFF597445),
      ),
      backgroundColor: const Color(0xFFE7F0DC),
      body: OnBuilder<List<Gaji>>.all(
        listenTo: _dt.rxGajiList,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error, refreshError) => const Text('error'),
        onData: (data) => OnReactive(
          () => Center(
            child: SizedBox(
              width: 480,
              child: Column(
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Card(
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          data[index].namaKaryawan,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        subtitle: Text(
                          'Gaji: Rp. ${data[index].gaji.toString()}',
                          style: const TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Color(0xFF597445)),
                            onPressed: () {
                              _ct.deleteDoc(data[index].id);
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            backgroundColor: const Color(0xFFE7F0DC),
            builder: (_) {
              return const FractionallySizedBox(
                heightFactor: 0.6,
                child: GajiKaryawanDetailView(),
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
