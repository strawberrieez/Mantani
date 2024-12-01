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

  Future<Lahan> getDoc() async {
    final getDoc = await FirebaseFirestore.instance.collection('Kelola').doc(_pv.rxSelectedId.st).get();
    final lahan = Lahan.fromMap(getDoc.data() ?? {});
    return lahan;
  }
  
  
}
