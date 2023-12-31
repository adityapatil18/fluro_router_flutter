import 'package:firebase_core/firebase_core.dart';
import 'package:fluro_router/router.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FluroRouterPractice());
}

class FluroRouterPractice extends StatefulWidget {
  const FluroRouterPractice({super.key});

  @override
  State<FluroRouterPractice> createState() => _FluroRouterPracticeState();
}

class _FluroRouterPracticeState extends State<FluroRouterPractice> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Routes.defineRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      onGenerateRoute: Routes.router.generator,
    );
  }
}
