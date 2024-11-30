part of '_index.dart';

class CrudRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from CrudRepo');
    return x;
  }

  Future<List<Product>> getColl() async {
    List<Product> product = [];
    final list = await FirebaseFirestore.instance.collection('Kelola').get();
    for (var element in list.docs) {
      product.add(Product.fromMap(element.data()));
    }
    return product;
  }

  Future<void> createDoc(Product data) async {
    await FirebaseFirestore.instance.collection('Kelola').doc(data.id).set(data.toMap());
  }

}