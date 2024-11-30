part of '_index.dart';

abstract class Repo {
  static Injected<SampleRepo> get sample => _sampleRepo;
  static Injected<AuthRepo> get auth => _authRepo;
  static Injected<CrudRepo> get crud => _crudRepo;
}

final _sampleRepo = RM3.inj(SampleRepo());

final _authRepo = RM3.inj(AuthRepo());

final _crudRepo = RM3.inj(CrudRepo());
