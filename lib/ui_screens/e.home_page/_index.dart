import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mantani/ui_screens/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.home_page.data.dart';
part 'b.home_page.ctrl.dart';
part 'c.home_page.view.dart';
part 'widgets/a.home_page.appbar.dart';
part 'widgets/b.home_page.fab.dart';
part 'widgets/c.home_page.charlie.dart';
part 'widgets/d.home_page.delta.dart';
part 'widgets/e.home_page.echo.dart';

HomePageData get _dt => Data.homePage.st;
HomePageCtrl get _ct => Ctrl.homePage;

