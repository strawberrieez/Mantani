part of '_index.dart';

class CrudProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  //* punya kelola
  final rxKelolaList = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readColl(),
    ),
  );

  
}