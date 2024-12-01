part of '_index.dart';

class CrudRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from CrudRepo');
    return x;
  }

  Future<List<Lahan>> getKelolaColl() async {
    List<Lahan> product = [];
    final list = await FirebaseFirestore.instance.collection('Kelola').get();
    for (var element in list.docs) {
      product.add(Lahan.fromMap(element.data()));
    }
    return product;
  }

  Future<List<Gaji>> getGajiColl() async {
    List<Gaji> gaji = [];
    final list = await FirebaseFirestore.instance.collection('Gaji').get();
    for (var element in list.docs) {
      gaji.add(Gaji.fromMap(element.data()));
    }
    return gaji;
  }
  
  Future<List<Profile>> getProfileColl() async {
    List<Profile> profile = [];
    final list = await FirebaseFirestore.instance.collection('Profile').get();
    for (var element in list.docs) {
      profile.add(Profile.fromMap(element.data()));
    }
    return profile;
  }

  Future<void> createKelolaDoc(Lahan data) async {
    await FirebaseFirestore.instance.collection('Kelola').doc(data.id).set(data.toMap());
  }

  Future<void> createProfileDoc(Profile data) async {
    await FirebaseFirestore.instance.collection('Profile').doc(data.id).set(data.toMap());
  }

  Future<void> createGajiDoc(Gaji data) async {
    await FirebaseFirestore.instance.collection('Gaji').doc(data.id).set(data.toMap());
  }

  Future<void> deleteGajiDoc(String id) async {
    await FirebaseFirestore.instance.collection('Gaji').doc(id).delete();
  }

  Future<void> deleteKelolaDoc(String id) async {
    await FirebaseFirestore.instance.collection('Kelola').doc(id).delete();
  }

  Future<Lahan> getDoc() async {
    final getDoc = await FirebaseFirestore.instance.collection('Kelola').doc(_pv.rxSelectedId.st).get();
    final lahan = Lahan.fromMap(getDoc.data() ?? {});
    return lahan;
  }
  
  Future<Profile> getProfileDoc() async {
    final getDoc = await FirebaseFirestore.instance.collection('Profile').doc(_pv.rxSelectedId.st).get();
    final profile = Profile.fromMap(getDoc.data() ?? {});
    return profile;
  }

  // Fungsi untuk mengambil semua data lahan dari Firestore
  Future<List<Map<String, dynamic>>> fetchAllLahanData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Lahan').get();

    return querySnapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  // Fungsi untuk mengambil total gaji dari Firestore
  Future<num> fetchTotalGaji() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Gaji').get();
    num totalGaji = 0;
    for (var doc in querySnapshot.docs) {
      totalGaji += doc.get('gaji') ?? 0;
    }
    return totalGaji;
  }

  // Fungsi untuk menghitung penghasilan kotor dari semua lahan
  Future<int> calculateTotalPenghasilanKotor() async {
    List<Map<String, dynamic>> lahanData = await fetchAllLahanData();
    int totalKotor = 0;

    for (var data in lahanData) {
      int hargaJual = data['harga_jual'] ?? 0;
      int totalPanen = data['total_panen'] ?? 0;
      totalKotor += hargaJual * totalPanen;
    }

    return totalKotor;
  }

  // Fungsi untuk menghitung penghasilan bersih dari semua lahan
  Future<num> calculateTotalPenghasilanBersih() async {
    List<Map<String, dynamic>> lahanData = await fetchAllLahanData();
    num totalKotor = await calculateTotalPenghasilanKotor();
    num totalGaji = await fetchTotalGaji();
    num totalBiaya = 0;

    for (var data in lahanData) {
      int hargaBeliBenih = data['harga_beli_benih'] ?? 0;
      int hargaBeliPupuk = data['harga_beli_pupuk'] ?? 0;
      totalBiaya += hargaBeliBenih + hargaBeliPupuk;
    }

    return totalKotor - totalGaji - totalBiaya;
  }

}
