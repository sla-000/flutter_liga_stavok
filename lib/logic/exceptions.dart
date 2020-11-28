import 'package:flutter/widgets.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';

class LoadingAppBusy extends AppBusy {
  @override
  String toLocalizedString(BuildContext context) => '''Loading data...''';

  @override
  String toString() => 'LoadingAppBusy{}';
}
