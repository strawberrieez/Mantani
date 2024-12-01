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
  final rxKelolaList = RM.injectFuture<List<Lahan>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readKelolaColl(),
    ),
  );

  final rxGajiList = RM.injectFuture<List<Gaji>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readGajiColl(),
    ),
  );

  final rxProfileList = RM.injectFuture<List<Profile>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readProfileColl(),
    ),
  );

  final rxSelectedId = RM.inject<String>(() => '');

  final rxPickedImage = RM.inject<XFile?>(() => null);

  final rximageUrl = RM.inject<String>(() => '');

  final rxKelolaDetail = RM.injectFuture<Lahan?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readDoc(),
    ),
  );
  
}
