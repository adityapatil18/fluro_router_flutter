import 'package:fluro/fluro.dart';
import 'package:fluro_router/home_page.dart';
import 'package:fluro_router/second_page.dart';

class Routes {
  static final router = FluroRouter();

// Handler for Home Page
  static var firstScreen = Handler(
    handlerFunc: (context, Map<String, dynamic> params) {
      return HomePage();
    },
  );

// Handler for Second Page
  static var placeHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return SecondPage(data: params["data"][0]);
  });

  static dynamic defineRoutes() {
    router.define("home",
        handler: firstScreen, transitionType: TransitionType.fadeIn);
    router.define("second/:data",
        handler: placeHandler, transitionType: TransitionType.inFromLeft);
  }
}
