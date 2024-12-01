import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/_models/_index.dart';
import 'package:mantani/dt_domains/b.crud/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.gaji_karyawan_detail.data.dart';
part 'b.gaji_karyawan_detail.ctrl.dart';
part 'c.gaji_karyawan_detail.view.dart';
part 'widgets/a.gaji_karyawan_detail.appbar.dart';
part 'widgets/b.gaji_karyawan_detail.fab.dart';
part 'widgets/c.gaji_karyawan_detail.charlie.dart';
part 'widgets/d.gaji_karyawan_detail.delta.dart';
part 'widgets/e.gaji_karyawan_detail.echo.dart';

GajiKaryawanDetailData get _dt => Data.gajiKaryawanDetail.st;
GajiKaryawanDetailCtrl get _ct => Ctrl.gajiKaryawanDetail;

CrudProv get _pv => Prov.crud.st;
CrudServ get _sv => Serv.crud;