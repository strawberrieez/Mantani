import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/dt_domains/a.auth/_index.dart';
import 'package:mantani/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.register_page.data.dart';
part 'b.register_page.ctrl.dart';
part 'c.register_page.view.dart';
part 'widgets/a.register_page.appbar.dart';
part 'widgets/b.register_page.fab.dart';
part 'widgets/c.register_page.charlie.dart';
part 'widgets/d.register_page.delta.dart';
part 'widgets/e.register_page.echo.dart';

RegisterPageData get _dt => Data.registerPage.st;
RegisterPageCtrl get _ct => Ctrl.registerPage;

AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;