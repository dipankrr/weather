import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_new/views/widgets/hourly_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity, width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-vector/abstract-background-black-white-texture-grainy_474888-5175.jpg?t=st=1744394609~exp=1744398209~hmac=60fbdb4dbe92aaf8ab2c59e2be6de54f42b785277e26db712810632dd2ba52dd&w=740'),
              fit:BoxFit.fill,opacity: 0.2 ),
          gradient: RadialGradient(
            colors: [Colors.red.withOpacity(0.4), Colors.red.withOpacity(0.15)],
            //colors: [Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.5)],
            radius: 1.2,
            center: const Alignment(1.0, -0.8),
            //stops: [0.0, 1.1],
            ),
        ),


        child: SafeArea(
          child: Column(
            children: [

              SizedBox(height: 30,),
              Text('Buniadpur, lndia', style: TextStyle(color: Colors.white70, fontSize: 40, fontWeight: FontWeight.bold),),
              Text('12 April, 2025', style: TextStyle(color: Colors.white38, fontSize: 20, ),),
              Image.asset('assets/weather/3dicon.webp' ,height: 200, width:200 ,),
              Text('34°c', style: TextStyle(color: Colors.white, fontSize: 90, fontWeight: FontWeight.bold, height: 1.0),),
              Text('Feels like 42°c', style: TextStyle(color: Colors.white70, fontSize: 25,)),


              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: SizedBox(
                  height: 160, width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                      itemBuilder: (_, index) {
                    return HourlyCard() ;
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
