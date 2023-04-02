import 'dart:async';

import 'package:firebase_practice/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {

  @override
  void initState() {
  Timer(const Duration(seconds: 5), () {
    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const LoginPage()) );
  });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(child: Text("FireBaseLOGO",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70),))
          ],
        ),
      ),
    );
  }
}
