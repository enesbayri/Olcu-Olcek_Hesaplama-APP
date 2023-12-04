import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_11/models/calcute.dart';
import 'package:flutter_application_11/router/startApplication.dart';
import 'package:flutter_application_11/uiHelper/colorUiHelper.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter("CalcuteScale");
  Hive.registerAdapter(calcuteAdapter());
  await Hive.openBox<calcute>("calcutes");
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorUiHelper.ContentBackgroundColor));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const StartApplication(),
  
    );
  }
}


