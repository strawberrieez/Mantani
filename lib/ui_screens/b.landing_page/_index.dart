import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.landing_page.data.dart';
part 'b.landing_page.ctrl.dart';
part 'c.landing_page.view.dart';
part 'widgets/a.landing_page.appbar.dart';
part 'widgets/b.landing_page.fab.dart';
part 'widgets/c.landing_page.charlie.dart';
part 'widgets/d.landing_page.delta.dart';
part 'widgets/e.landing_page.echo.dart';

LandingPageData get _dt => Data.landingPage.st;
LandingPageCtrl get _ct => Ctrl.landingPage;

