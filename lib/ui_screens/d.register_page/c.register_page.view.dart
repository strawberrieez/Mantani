part of '_index.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFE7F0DC)),
          child: Stack(
            children: [
              Positioned(
                left: 72,
                top: 90,
                child: Container(
                  width: 250,
                  height: 235,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/250x235"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 366,
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 410,
                child: Text(
                  'Silahkan buat akun',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 531,
                child: Container(
                  width: 329,
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDCDCD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 13),
                      Text(
                        'Masukkan password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 14,
                          fontFamily: 'Droid Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 601,
                child: Container(
                  width: 329,
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDCDCD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 13),
                      Text(
                        'Konfirmasi password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 14,
                          fontFamily: 'Droid Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 692,
                child: Container(
                  height: 68,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        decoration: ShapeDecoration(
                          color: Color(0xFF597445),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Daftar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFE7F0DC),
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sudah punya akun?',
                                style: TextStyle(
                                  color: Color(0xFF6F6F6F),
                                  fontSize: 14,
                                  fontFamily: 'Droid Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Droid Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Masuk',
                                style: TextStyle(
                                  color: Color(0xFF597445),
                                  fontSize: 14,
                                  fontFamily: 'Droid Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 460,
                child: Container(
                  width: 329,
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Color(0xFFCDCDCD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 13),
                      Text(
                        'Masukkan email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6F6F6F),
                          fontSize: 14,
                          fontFamily: 'Droid Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}