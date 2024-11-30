import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/ui_screens/k.gaji_karyawan/b.gaji_karyawan_detail/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.gaji_karyawan_list.data.dart';
part 'b.gaji_karyawan_list.ctrl.dart';
part 'c.gaji_karyawan_list.view.dart';
part 'widgets/a.gaji_karyawan_list.appbar.dart';
part 'widgets/b.gaji_karyawan_list.fab.dart';
part 'widgets/c.gaji_karyawan_list.charlie.dart';
part 'widgets/d.gaji_karyawan_list.delta.dart';
part 'widgets/e.gaji_karyawan_list.echo.dart';

GajiKaryawanListData get _dt => Data.gajiKaryawanList.st;
GajiKaryawanListCtrl get _ct => Ctrl.gajiKaryawanList;

