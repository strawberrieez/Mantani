import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/_index.dart';
import 'package:mantani/dt_domains/b.crud/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.kelola_selengkapnya.data.dart';
part 'b.kelola_selengkapnya.ctrl.dart';
part 'c.kelola_selengkapnya.view.dart';
part 'widgets/a.kelola_selengkapnya.appbar.dart';
part 'widgets/b.kelola_selengkapnya.fab.dart';
part 'widgets/c.kelola_selengkapnya.charlie.dart';
part 'widgets/d.kelola_selengkapnya.delta.dart';
part 'widgets/e.kelola_selengkapnya.echo.dart';

KelolaSelengkapnyaData get _dt => Data.kelolaSelengkapnya.st;
KelolaSelengkapnyaCtrl get _ct => Ctrl.kelolaSelengkapnya;

CrudProv get _pv => Prov.crud.st;