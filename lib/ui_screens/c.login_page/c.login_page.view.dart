part of '_index.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F0DC), // Warna latar sesuai desain
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                  ),
                ),
                const SizedBox(height: 50),
                // Judul Halaman
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Diubah ke start
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Selamat datang kembali',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                // TextField untuk email
                _buildTextField(
                  labelText: 'Masukkan email',
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 20),
                // TextField untuk password
                _buildTextField(
                  labelText: 'Masukkan password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),

                const SizedBox(height: 70),
                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi tombol login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF597445), // Warna hijau sesuai desain
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                        color: Color(0xFFE7F0DC),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Sudah punya akun?
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Menyelaraskan isi Row ke tengah
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Belum punya akun?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          nav.to(Routes.registerPage);
                        },
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF597445), // Warna hijau sesuai desain
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat TextField dengan dekorasi
  static Widget _buildTextField({
    required String labelText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey, // Warna teks placeholder abu-abu
        ),
        filled: true,
        fillColor: const Color(0xFFF0F0F0), // Warna latar TextField
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
