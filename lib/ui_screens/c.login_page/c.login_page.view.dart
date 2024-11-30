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
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => Center(
                    child: SizedBox(
                      width: 480,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OnFormBuilder(
                            listenTo: _dt.rxForm,
                            builder: () => TextField(
                              controller: _dt.rxEmail.controller,
                              style: const TextStyle(color: Colors.black54),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.mail, color: Colors.black54),
                                labelText: 'Masukkan email',
                                errorText: _dt.rxEmail.error,
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
                            ),
                          ),
                          const SizedBoxH(15),
                          OnFormBuilder(
                            listenTo: _dt.rxForm,
                            builder: () => TextField(
                              controller: _dt.rxPassword.controller,
                              style: const TextStyle(color: Colors.black54),
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password, color: Colors.black54),
                                labelText: 'Masukkan password',
                                errorText: _dt.rxPassword.error,
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
                            ),
                          ),
                          const SizedBoxH(50),
                          OnFormSubmissionBuilder(
                            listenTo: _dt.rxForm,
                            onSubmitting: () => const CircularProgressIndicator(),
                            child: SizedBox(
                              width: double.infinity,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  _ct.submit();
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
                          ),
                          
                const SizedBox(height: 10),
                // Tombol Login
                
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
                const Divider(
                  thickness: 1,
                  color: Colors.black38,
                ),
                const SizedBox(height: 20),
                SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {
                    _ct.signInAnonimously();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.black12),
                    ),
                  ),
                  label: const Text(
                    "Masuk sebagai tamu",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                // TextField untuk email
                
              ],
            ),
          ),
        ),
      ),
    );
  }

}
