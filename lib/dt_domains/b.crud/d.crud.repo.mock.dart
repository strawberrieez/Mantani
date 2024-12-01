part of '_index.dart';

class CrudRepoMock implements CrudRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from CrudRepoMock');
    return x;
  }

  @override
  Future<void> createKelolaDoc(Lahan data) {
    throw UnimplementedError();
  }

  @override
  Future<List<Lahan>> getKelolaColl() {
    throw UnimplementedError();
  }

  @override
  Future<void> createGajiDoc(Gaji data) {
    throw UnimplementedError();
  }

  @override
  Future<List<Gaji>> getGajiColl() {
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteGajiDoc(String id) {
    throw UnimplementedError();
  }
  
  @override
  Future<void> createProfileDoc(Profile data) {
    throw UnimplementedError();
  }
  
  @override
  Future<List<Profile>> getProfileColl() {
    throw UnimplementedError();
  }
  
  @override
  Future<Lahan> getDoc() {
    throw UnimplementedError();
  }
  
}
