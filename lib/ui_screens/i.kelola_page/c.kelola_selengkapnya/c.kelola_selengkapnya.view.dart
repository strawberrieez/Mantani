part of '_index.dart';

class KelolaSelengkapnyaView extends StatelessWidget {
  const KelolaSelengkapnyaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F0DC),
      appBar: AppBar(
        title: const Text('Detail Kelola'),
        backgroundColor: const Color(0xFF597445),
      ),
      body: OnBuilder.all(
        listenTo: _dt.rxKelolaDetail,
        onWaiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        onError: (error, refreshError) => const Center(
          child: Text('Terjadi kesalahan, silakan coba lagi.'),
        ),
        onData: (data) {
          if (data == null) {
            return const Center(
              child: Text('Data tidak ditemukan.'),
            );
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...[
                  DetailItem(
                    key: ValueKey('namaLahan-${data.namaLahan}'),
                    label: 'Nama Lahan:',
                    value: data.namaLahan,
                  ),
                  DetailItem(
                    key: ValueKey('lokasiLahan-${data.lokasiLahan}'),
                    label: 'Lokasi Lahan:',
                    value: data.lokasiLahan,
                  ),
                  DetailItem(
                    key: ValueKey('namaBenih-${data.namaBenih}'),
                    label: 'Nama Benih:',
                    value: data.namaBenih,
                  ),
                  DetailItem(
                    key: ValueKey('waktuPanen-${data.waktuPanen}'),
                    label: 'Waktu Panen:',
                    value: data.waktuPanen,
                  ),
                  DetailItem(
                    key: ValueKey('tanggalTanam-${data.tanggalTanam}'),
                    label: 'Tanggal Tanam:',
                    value: data.tanggalTanam,
                  ),
                  DetailItem(
                    key: ValueKey('hargaBeliBenih-${data.hargaBeliBenih}'),
                    label: 'Harga Beli Benih:',
                    value: data.hargaBeliBenih.toString(),
                  ),
                  DetailItem(
                    key: ValueKey('merkBenih-${data.merkBenih}'),
                    label: 'Merk Benih:',
                    value: data.merkBenih,
                  ),
                  DetailItem(
                    key: ValueKey('hargaBeliPupuk-${data.hargaBeliPupuk}'),
                    label: 'Harga Beli Pupuk:',
                    value: data.hargaBeliPupuk.toString(),
                  ),
                  DetailItem(
                    key: ValueKey('namaPupuk-${data.namaPupuk}'),
                    label: 'Nama Pupuk:',
                    value: data.namaPupuk,
                  ),
                  DetailItem(
                    key: ValueKey('minimalHargaJual-${data.minimalHargaJual}'),
                    label: 'Minimal Harga Jual/Kg:',
                    value: data.minimalHargaJual.toString(),
                  ),
                  DetailItem(
                    key: ValueKey('hargaJual-${data.hargaJual}'),
                    label: 'Harga Jual/Kg:',
                    value: data.hargaJual.toString(),
                  ),
                  DetailItem(
                    key: ValueKey('tanggalPanen-${data.tanggalPanen}'),
                    label: 'Tanggal Panen:',
                    value: data.tanggalPanen,
                  ),
                  DetailItem(
                    key: ValueKey('totalPanen-${data.totalPanen}'),
                    label: 'Total Panen:',
                    value: data.totalPanen.toString(),
                  ),
                ],
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _ct.deleteDoc(data.id);
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
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Selesai Panen',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
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
