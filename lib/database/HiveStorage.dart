// ignore_for_file: file_names

import 'package:flutter_application_11/models/calcute.dart';
import 'package:hive/hive.dart';

class HiveStorage{
  
  Box<calcute>? box;
  HiveStorage(){
    box=Hive.box("calcutes");
  }

  Future<void> addStorage(calcute clcte)async{
    if(box!.length==30){
      box!.deleteAt(0);
    }
    await box!.add(clcte);
  }
  List<calcute> getCalcutesfromStorage(){
    List<calcute> calcutes=[];
    if(box!.isNotEmpty){
      calcutes=box!.values.toList();
    }
    return calcutes;
  }

  Future<void> deletefromStorage(int index)async{
    await box!.deleteAt(index);
  }


}