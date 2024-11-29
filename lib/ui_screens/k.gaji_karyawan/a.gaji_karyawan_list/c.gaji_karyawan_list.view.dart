part of '_index.dart';

class GajiKaryawanListView extends StatelessWidget {
  const GajiKaryawanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4FCE3),
        title: const Text(
          'Gaji Karyawan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: const Text('text'),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             _buildLahanCard('Lahan 1', [
//               {'name': 'Ibu Munawaroh', 'date': '09 September 2024', 'salary': 'Rp. 300000'},
//               {'name': 'Bapak Handoko', 'date': '06 Februari 2024', 'salary': 'Rp. 300000'},
//             ]),
//             const SizedBox(height: 16),
//             _buildLahanCard('Lahan 2', [
//               {'name': 'Ibu Munawaroh', 'date': '09 September 2024', 'salary': 'Rp. 300000'},
//               {'name': 'Bapak Handoko', 'date': '06 Februari 2024', 'salary': 'Rp. 300000'},
//               {'name': 'Bapak Handoko', 'date': '06 Februari 2024', 'salary': 'Rp. 300000'},
//               {'name': 'Bapak Handoko', 'date': '06 Februari 2024', 'salary': 'Rp. 300000'},
//             ]),
//           ],
//         ),
//       ),
    );
  }

//   Widget _buildLahanCard(String title, List<Map<String, String>> data) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             const SizedBox(height: 8),
//             ...data.map((item) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(item['name']!, style: const TextStyle(fontSize: 14)),
//                         Text(item['date']!, style: const TextStyle(fontSize: 12, color: Colors.grey)),
//                       ],
//                     ),
//                     Text(item['salary']!, style: const TextStyle(fontSize: 14, color: Colors.red)),
//                   ],
//                 ),
//               );
//             }).toList(),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.grey[200],
//                 foregroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side: const BorderSide(color: Colors.grey),
//                 ),
//               ),
//               child: const Text('+ Tambahkan lainnya'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
}