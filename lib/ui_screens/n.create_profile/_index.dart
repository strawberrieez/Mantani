import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/_models/_index.dart';
import 'package:mantani/dt_domains/b.crud/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.create_profile.data.dart';
part 'b.create_profile.ctrl.dart';
part 'c.create_profile.view.dart';
part 'widgets/a.create_profile.appbar.dart';
part 'widgets/b.create_profile.fab.dart';
part 'widgets/c.create_profile.charlie.dart';
part 'widgets/d.create_profile.delta.dart';
part 'widgets/e.create_profile.echo.dart';

CreateProfileData get _dt => Data.createProfile.st;
CreateProfileCtrl get _ct => Ctrl.createProfile;

CrudProv get _pv => Prov.crud.st;
CrudServ get _sv => Serv.crud;