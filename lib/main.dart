


import 'package:fitnessproadv/screens/trainer/AddVideos.dart';
import 'package:fitnessproadv/screens/trainer/ViewVideos.dart';
import 'package:fitnessproadv/screens/trainer/addChallenges.dart';
import 'package:fitnessproadv/screens/trainer/addTas.dart';
import 'package:fitnessproadv/screens/trainer/controls.dart';
import 'package:fitnessproadv/screens/trainer/dietPlans.dart';
import 'package:fitnessproadv/screens/trainer/physiotherapy.dart';
import 'package:fitnessproadv/screens/trainer/trainerHome.dart';
import 'package:fitnessproadv/screens/trainer/viewUsers.dart';
import 'package:fitnessproadv/screens/user/ViewTrainer.dart';
import 'package:fitnessproadv/screens/user/physiotherapy.dart';
import 'package:fitnessproadv/screens/user/userHome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  UserHome(),
    );
  }
}

void navigation(context,screen){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
}