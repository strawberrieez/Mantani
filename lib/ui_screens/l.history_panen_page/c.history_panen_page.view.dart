part of '_index.dart';

class HistoryPanenPageView extends StatelessWidget {
  const HistoryPanenPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HistoryPanenPage(),
    );
  }
}

class HistoryPanenPage extends StatelessWidget {
  final List<Map<String, String>> dataPanen = [
    {'lahan': 'Lahan 1/Padi', 'tanggal': '3 Oktober 2024', 'harga': 'Rp. 9000/kg'},
    {'lahan': 'Lahan 1/Padi', 'tanggal': '5 Agustus 2024', 'harga': 'Rp. 8500/kg'},
    {'lahan': 'Lahan 2/Cabai rawit', 'tanggal': '9 Mei 2024', 'harga': 'Rp. 50000/kg'},
    {'lahan': 'Lahan 3/Terong', 'tanggal': '9 Mei 2024', 'harga': 'Rp. 5000/kg'},
    {'lahan': 'Lahan 5/Jagung', 'tanggal': '9 Mei 2024', 'harga': 'Rp. 15000/kg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FCE3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        
        title: const Text(
          'History Panen',
          style: TextStyle(color: Colors.black),
        ),
        
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: dataPanen.length,
                itemBuilder: (context, index) {
                  final item = dataPanen[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['lahan']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['tanggal']!,
                              style: const TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          item['harga']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
                print('Tampilkan lebih banyak data...');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Tampilkan Lainnya',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}