import 'dart:ui';

import 'package:flutter/material.dart';

class HourlyCard extends StatelessWidget {
  const HourlyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 180, width: 110,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.white10, Colors.white12]),
         // color: Colors.white10,
          border: Border.all(color: Colors.white10, width: 1),
         // backgroundBlendMode: BlendMode.dstATop
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/weather/3dicon.webp', height: 70, width: 70,),
            Text('25°c', style: TextStyle(color: Colors.white70, fontSize: 35, height: 1.0),),
            Text('5 PM', style: TextStyle(color: Colors.white60, fontSize: 20, height: 1.0),),
          ],
        ),
      ),
    );
  }
}
