part of '_index.dart';

class TentangPageView extends StatelessWidget {
  const TentangPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFE7F0DC),
      ),
      backgroundColor: const Color(0xFFE7F0DC),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25), // Membatasi hanya sisi kanan dan kiri
        child: Container(
          constraints: const BoxConstraints.expand(), // Memperluas ukuran sesuai layar
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
              const Text(
                'Tentang Mantani 🌾',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'ManTani adalah aplikasi manajemen pertanian yang kami kembangkan sebagai salah satu tugas akhir dalam mata kuliah Rekayasa Perangkat Lunak. Aplikasi ini dirancang untuk membantu petani dalam mengelola lahan, mencatat hasil panen, memantau cuaca, dan merencanakan aktivitas pertanian dengan lebih efisien.\n\nPembuatan aplikasi ini tidak hanya bertujuan untuk memenuhi syarat akademik, tetapi juga untuk memberikan solusi nyata bagi para petani dalam menghadapi tantangan modern di sektor pertanian.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              _buildSection(
                title: 'Tujuan Pengembangan',
                content:
                    'Memenuhi salah satu tugas akhir UAS mata kuliah Rekayasa Perangkat Lunak.\nMeningkatkan pemahaman kami dalam merancang dan mengembangkan perangkat lunak berbasis aplikasi mobile.\nMemberikan kontribusi positif melalui teknologi yang dapat mendukung sektor pertanian.',
              ),
              const SizedBox(height: 20),
              _buildSection(
                title: 'Profile Developer',
                content:
                    'Sekar Ayu Fatmasari (237006054)\nDhiya Ulhaq Prima Yuga (237006066)\nBajsan Arsyurrohman (237006088)',
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
