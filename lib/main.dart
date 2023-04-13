import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/index_controller.dart';
import 'package:earnage/pages/login_page.dart';

void main() {
  runApp(ChangeNotifierProvider<IndexController>(
      create: (context) => IndexController(),
      child: MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      )));
}
