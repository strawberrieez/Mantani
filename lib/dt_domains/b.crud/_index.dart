import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mantani/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.crud.prov.dart';
part 'b.crud.serv.dart';
part 'c.crud.repo.dart';
part 'd.crud.repo.mock.dart';

CrudProv get _pv => Prov.crud.st;
CrudServ get _sv => Serv.crud;
CrudRepo get _rp => Repo.crud.st;
