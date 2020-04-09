import 'package:flutter/material.dart';
import 'package:login_registration_app/login.dart';
import 'package:login_registration_app/registration.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Precoo", initialRoute: "/",
      routes: {
        "/" : (context) => LoginApp(),
        RegistrationPage.routeName : (context) => RegistrationPage(),
      },
    )
  );
}