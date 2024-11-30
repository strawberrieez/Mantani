part of '_index.dart';

class BantuanPageView extends StatelessWidget {
  const BantuanPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bantuan',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFE7F0DC),
      ),
      backgroundColor: const Color(0xFFE7F0DC),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25), 
        child: Container(
          constraints: const BoxConstraints.expand(), 
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFE7F0DC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 4,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSection(
                title: 'Apa itu Mantani',
                content:
                    'ManTani adalah aplikasi manajemen pertanian yang dirancang untuk membantu petani mengelola lahan, mencatat hasil panen, memantau cuaca, serta mengelola jadwal tanam dan perawatan tanaman secara efisien.',
              ),
              const SizedBox(height: 20),
              _buildSection(
                title: 'Hubungi Kami',
                content:
                    'Jika Anda mengalami masalah atau memiliki pertanyaan lebih lanjut, silakan hubungi tim kami melalui:\n\n'
                          'Email: 237006054@student.unsil.ac.id\nTelepon/Whatsapp: 0859-5970-5944',
              ),
              const SizedBox(height: 20),
              _buildSection(
                title: 'Tips Penggunaan',
                content:
                    '1. Pastikan data yang Anda masukkan akurat untuk mendapatkan hasil yang akurat.\n'
                          '2. Perbarui aplikasi secara berkala untuk mendapatkan fitur terbaru.\n'
                          '3. Gunakan fitur pencatatan hasil panen untuk melacak performa lahan Anda dari waktu ke waktu.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          content,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
