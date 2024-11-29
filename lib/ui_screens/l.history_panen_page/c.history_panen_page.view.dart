part of '_index.dart';

class HistoryPanenPageView extends StatelessWidget {
  const HistoryPanenPageView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFFF4FCE3),
      appBar: AppBar(
        title: const Text(
          'History Panen',
          style: TextStyle(color: Colors.black),
        ),
        
        centerTitle: true,
      ),
      body: const Text('text'),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: dataPanen.length,
      //           itemBuilder: (context, index) {
      //             final item = dataPanen[index];
      //             return Padding(
      //               padding: const EdgeInsets.symmetric(vertical: 8.0),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         item['lahan']!,
      //                         style: const TextStyle(
      //                           fontSize: 16,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                       const SizedBox(height: 4),
      //                       Text(
      //                         item['tanggal']!,
      //                         style: const TextStyle(fontSize: 14, color: Colors.grey),
      //                       ),
      //                     ],
      //                   ),
      //                   Text(
      //                     item['harga']!,
      //                     style: const TextStyle(
      //                       fontSize: 16,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.green,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //       const SizedBox(height: 16),
      //       ElevatedButton(
      //         onPressed: () {
      //           // Aksi ketika tombol ditekan
      //           print('Tampilkan lebih banyak data...');
      //         },
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.green,
      //           padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(8),
      //           ),
      //         ),
      //         child: const Text(
      //           'Tampilkan Lainnya',
      //           style: TextStyle(fontSize: 16, color: Colors.white),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}