
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_new/views/widgets/custom_texts.dart';
import 'package:weather_new/views/widgets/hourly_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String netImg = 'https://www.transparenttextures.com/patterns/asfalt-light.png';
  final String netImgFreepik = 'https://img.freepik.com/free-vector/abstract-background-black-white-texture-grainy_474888-5175.jpg?t=st=1744394609~exp=1744398209~hmac=60fbdb4dbe92aaf8ab2c59e2be6de54f42b785277e26db712810632dd2ba52dd&w=740';

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double iconSize = min(deviceWidth*0.5, 350);

    return Scaffold(
      body: Container(
        height: double.infinity, width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/others/noise.jpg'),
              fit:BoxFit.fill, opacity: 0.2,
          ),
          gradient: RadialGradient(
            colors: [Colors.red.withOpacity(0.4), Colors.red.withOpacity(0.15)],
            //colors: [Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.5)],
            radius: 1.2,
            center: const Alignment(1.0, -0.8),
            //stops: [0.0, 1.1],
            ),
        ),


        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 20,),
                Text('Buniadpur, lndia', style: TextStyle(color: Colors.white70, fontSize: min(deviceWidth*0.080, 40), fontWeight: FontWeight.w500),),
                Text('12 April, 2025', style: TextStyle(color: Colors.white38, fontSize: min(deviceWidth*0.05, 30), ),),

                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/weather/3dicon.webp' ,height: iconSize, width: iconSize ,),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Column(children: [
                              Text('45°c', style: TextStyle(color: Colors.white, fontSize: min(deviceWidth*0.16, 100), fontWeight: FontWeight.bold, height: 1.0),),
                               const SizedBox(height: 5,),
                              Text('Feels like 34°c', style: TextStyle(color: Colors.white70 , fontSize: min(deviceWidth*0.05, 30),)),
                            ],),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_alert_rounded),
                           Text('  Expect High Rain Today', style: TextStyle(color: Colors.white, fontSize: 20, height: 0.1),),
                        ],
                      ),

                    ],
                  ),
                ),


               const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        spacing: 10,
                        children: [Icon(CupertinoIcons.wind), CustomText.headline3(text: '14km/h',)],
                      ),
                      Column(
                        spacing: 10,
                        children: [Icon(CupertinoIcons.drop), CustomText.headline3(text: '85%',)],
                      ),
                      Column(
                        spacing: 10,
                        children: [Icon(CupertinoIcons.cloud_fill), CustomText.headline3(text: '18%')],
                      ),
                    ],
                  ),
                ),

              const  Row(
                  spacing: 5,
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.access_time, ),
                    CustomText.headline3(text: 'Hourly Forecast')
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
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
      ),

      floatingActionButton: Container(
       // margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(

          boxShadow: [ BoxShadow(color: Colors.black87, blurRadius: 20, spreadRadius: 2, offset: Offset(0, 2),)]
        ),
        child: Container(
        //  color: Colors.black12,
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
              child: Container(
                height: 50, width: MediaQuery.of(context).size.width-32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.white12, Colors.white10, ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              // color: Colors.white10,
              border: Border.all(color: Colors.white10, width: 1),
             // boxShadow: [BoxShadow(color: Colors.black.withOpacity(1.0), blurRadius: 20, spreadRadius: 20)]
              // backgroundBlendMode: BlendMode.dstATop
                  ),
                child: Center(child: Text('Bottom Nav Bar')),
              ),
            ),
          ),
        ),
      )

    );
  }
}
