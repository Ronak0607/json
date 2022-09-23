import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserProvider extends ChangeNotifier{

  List jsonList =[];

  void getUserData()
  async{
    String jsonFile = await rootBundle.loadString("assets/json/data.json");

    jsonList=jsonDecode(jsonFile);

    notifyListeners();
  }
}