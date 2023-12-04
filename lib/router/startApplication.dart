
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_11/pages/HomePage.dart';
import 'package:flutter_application_11/pages/LoadingPage.dart';

class StartApplication extends StatelessWidget {
  const StartApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadingTime(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return const HomePage();
        }else{
          return const LoadingPage();
        }
      },
    
    );
  }

  Future<int> loadingTime(){
    return Future.delayed(const Duration(milliseconds: 2000),(){
      return 1;
    });
  }
}