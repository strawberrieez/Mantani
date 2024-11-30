part of '_index.dart';

class CrudRepoMock implements CrudRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from CrudRepoMock');
    return x;
  }
  
  @override
  Future<void> createDoc(Product data) {
    throw UnimplementedError();
  }
  
  @override
  Future<List<Product>> getColl() {
    throw UnimplementedError();
  }
}