part of '_index.dart';

class KelolaPageDetailView extends StatelessWidget {
  KelolaPageDetailView({super.key});
  final ValueNotifier<List<String?>> imagesNotifier = ValueNotifier([null]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE7F0DC),
        appBar: AppBar(
          backgroundColor: const Color(0xFFE7F0DC),
          centerTitle: true,
          title: const Text('Tambah lahan'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaLahan.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaLahan.error,
                              labelText: 'Nama Lahan',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxlokasiLahan.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxlokasiLahan.error,
                              labelText: 'Lokasi Lahan',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaBenih.error,
                              labelText: 'Nama Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxwaktuPanen.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxwaktuPanen.error,
                              labelText: 'Waktu Panen',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxtanggalTanam.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxtanggalTanam.error,
                              labelText: 'Tanggal Tanam',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaBeliBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaBeliBenih.error,
                              labelText: 'Harga Beli Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxmerkBenih.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxmerkBenih.error,
                              labelText: 'Merk Benih',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaBeliPupuk.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaBeliPupuk.error,
                              labelText: 'Harga Beli Pupuk',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxnamaPupuk.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxnamaPupuk.error,
                              labelText: 'Nama Pupuk',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxminimalHargaJual.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxminimalHargaJual.error,
                              labelText: 'Minimal Harga Jual/kg',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxhargaJual.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxhargaJual.error,
                              labelText: 'Harga Jual/kg',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxtanggalPanen.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxtanggalPanen.error,
                              labelText: 'Tanggal Panen',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _dt.rxtotalPanen.controller,
                            decoration: InputDecoration(
                              errorText: _dt.rxtotalPanen.error,
                              labelText: 'Total Panen',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
                      backgroundColor: const Color(0xFF597445),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                        color: Color(0xFFE7F0DC),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
