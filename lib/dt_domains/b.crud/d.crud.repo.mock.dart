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
  
  // @override
  // Future<num> calculateTotalPenghasilanBersih(String lahanId) {
  //   throw UnimplementedError();
  // }
  
  // @override
  // Future<int> calculateTotalPenghasilanKotor(String lahanId) {
  //   throw UnimplementedError();
  // }
  
  @override
  Future<int> fetchHargaBeliBenih(String lahanId) {
    throw UnimplementedError();
  }
  
  @override
  Future<int> fetchHargaBeliPupuk(String lahanId) {
    throw UnimplementedError();
  }
  
  @override
  Future<int> fetchHargaJual(String lahanId) {
    throw UnimplementedError();
  }
  
  @override
  Future<num> fetchTotalGaji() {
    throw UnimplementedError();
  }
  
  @override
  Future<int> fetchTotalPanen(String lahanId) {
    throw UnimplementedError();
  }
  
  @override
  Future<Profile> getProfileDoc() {
    throw UnimplementedError();
  }
  
  @override
  Future<List<Map<String, dynamic>>> fetchAllLahanData() {
    throw UnimplementedError();
  }
  
  @override
  Future<num> calculateTotalPenghasilanBersih() {
    // TODO: implement calculateTotalPenghasilanBersih
    throw UnimplementedError();
  }
  
  @override
  Future<int> calculateTotalPenghasilanKotor() {
    // TODO: implement calculateTotalPenghasilanKotor
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteKelolaDoc(String id) {
    throw UnimplementedError();
  }
  
}
