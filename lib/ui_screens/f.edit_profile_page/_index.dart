import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/_models/_index.dart';
import 'package:mantani/dt_domains/b.crud/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.edit_profile_page.data.dart';
part 'b.edit_profile_page.ctrl.dart';
part 'c.edit_profile_page.view.dart';
part 'widgets/a.edit_profile_page.appbar.dart';
part 'widgets/b.edit_profile_page.fab.dart';
part 'widgets/c.edit_profile_page.charlie.dart';
part 'widgets/d.edit_profile_page.delta.dart';
part 'widgets/e.edit_profile_page.echo.dart';

EditProfilePageData get _dt => Data.editProfilePage.st;
EditProfilePageCtrl get _ct => Ctrl.editProfilePage;

CrudProv get _pv => Prov.crud.st;
CrudServ get _sv => Serv.crud;