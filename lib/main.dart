import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled7/Screen/userDataScreen/userDataScreen.dart';
import 'package:untitled7/Screen/userProvider/userProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (context) => UserProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=> userDataScreen(),

        }
        ,
      ),
    )
  );
}
