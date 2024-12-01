part of '_index.dart';

class KelolaSelengkapnyaView extends StatelessWidget {
  const KelolaSelengkapnyaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text'),
        backgroundColor: const Color(0xFF597445),
      ),
      body: OnBuilder.all(
        listenTo: _dt.rxKelolaDetail,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error, refreshError) => const Text('error'),
        onData: (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color(0xFFE7F0DC),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Landing_Page3.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListView(
                          children: [
                            DetailItem(label: 'Nama Lahan:', value: data!.namaLahan),
                            DetailItem(label: 'Lokasi Lahan:', value: data.lokasiLahan),
                            DetailItem(label: 'Nama Benih:', value: data.namaBenih),
                            DetailItem(label: 'Waktu Panen:', value: data.waktuPanen),
                            DetailItem(label: 'Tanggal Tanam:', value: data.tanggalPanen),
                            DetailItem(label: 'Harga Beli Benih:', value: data.hargaBeliBenih.toString()),
                            DetailItem(label: 'Merk Benih:', value: data.merkBenih),
                            DetailItem(label: 'Harga Beli Pupuk:', value: data.hargaBeliPupuk.toString()),
                            DetailItem(label: 'Nama Pupuk:', value: data.namaPupuk),
                            DetailItem(label: 'Minimal Harga Jual/Kg:', value: data.minimalHargaJual.toString()),
                            DetailItem(label: 'Harga Jual/Kg:', value: data.hargaJual.toString()),
                            DetailItem(label: 'Tanggal Panen:', value: data.tanggalPanen),
                            DetailItem(label: 'Total Panen:', value: data.totalPanen.toString()),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Konfirmasi'),
                                  content: const Text('Apakah Anda yakin ingin menghapus data ini?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Batal'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Hapus'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          ),
                          child: const Text(
                            'Hapus',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String label;
  final String value;

  const DetailItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
