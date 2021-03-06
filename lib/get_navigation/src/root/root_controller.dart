import 'package:flutter/material.dart';
import '../../../get_state_manager/get_state_manager.dart';
import '../../../get_utils/get_utils.dart';
import '../routes/custom_transition.dart';
import '../routes/observers/route_observer.dart';
import '../routes/transitions_type.dart';
import 'parse_route.dart';

class GetMaterialController extends GetxController {
  bool testMode = false;
  Key unikey;
  ThemeData theme;
  ThemeMode themeMode;

  bool defaultPopGesture = GetPlatform.isIOS;
  bool defaultOpaqueRoute = true;

  Transition defaultTransition;
  Duration defaultTransitionDuration = Duration(milliseconds: 300);
  Curve defaultTransitionCurve = Curves.easeOutQuad;

  Curve defaultDialogTransitionCurve = Curves.easeOutQuad;

  Duration defaultDialogTransitionDuration = Duration(milliseconds: 300);

  final routing = Routing();

  Map<String, String> parameters = {};

  ParseRouteTree routeTree;

  CustomTransition customTransition;

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Map<int, GlobalKey<NavigatorState>> keys = {};

  void setTheme(ThemeData value) {
    theme = value;
    update();
  }

  void setThemeMode(ThemeMode value) {
    themeMode = value;
    update();
  }

  void restartApp() {
    unikey = UniqueKey();
    update();
  }
}
