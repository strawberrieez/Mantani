import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/_index.dart';
import 'package:mantani/dt_domains/a.auth/_index.dart';
import 'package:mantani/dt_domains/b.crud/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.kelola_page_list.data.dart';
part 'b.kelola_page_list.ctrl.dart';
part 'c.kelola_page_list.view.dart';
part 'widgets/a.kelola_page_list.appbar.dart';
part 'widgets/b.kelola_page_list.fab.dart';
part 'widgets/c.kelola_page_list.charlie.dart';
part 'widgets/d.kelola_page_list.delta.dart';
part 'widgets/e.kelola_page_list.echo.dart';

KelolaPageListData get _dt => Data.kelolaPageList.st;
KelolaPageListCtrl get _ct => Ctrl.kelolaPageList;

CrudProv get _pv => Prov.crud.st;
CrudServ get _sv => Serv.crud;

AuthServ get _svAuth => Serv.auth;