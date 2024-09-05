
import 'package:bmi/calc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool male=false;
  bool female=false;
  double HeightVal=50.0;
  String  x="0";
  int weight=70;
  int age=20;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text("BMI Calculator",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
        centerTitle:true,
        backgroundColor: Color(0xff010615),
      ),
      body:Container(

        //Container male and female 111111111111111111111111111111111111111111111111111111111111
        color: Color(0xff020718),
        child: Column(
          children: [
           Expanded(
             flex: 14,
             child: Column(
               children: [
                 Expanded(child:Container(
                  padding: EdgeInsets.all(15),
                   child: Row(
                     children: [
                       Expanded(
                         flex :5,
                         child:InkWell(
                           onTap: (){
                             setState(() {
                               male=true;
                               female=false;
                             });
                           },
                           child:Card(
                              color:male==true?Color(0xff720707) : Color(0xff08102d) ,
                             child: Container(
                              child:Column(
                               children: [
                                Spacer(),
                                 Expanded(
                                 flex: 3,
                                 child: Icon(Icons.male,color: Colors.white,size: 90,),),
                                 Expanded(
                                  flex: 3,
                                  child:Text("MALE",style: TextStyle(color: Colors.grey[300],fontSize:15),))
                             ],
                           )
                          ),
                   ),
                         )
                       ),
                                 Spacer(flex:1,),
                                 Expanded(
                                   flex :5,
                                   child:InkWell(
                                     onTap: (){
                                       setState(() {
                                         male=false;
                                         female=true;
                                       });
                                     },
                           child:Card(
                             color:female==true?Color(0xff720707) : Color(0xff08102d) ,
                            child: Container(
                             child:Column(
                               children: [
                                 Spacer(),
                                 Expanded(
                                   flex: 3,
                                   child: Icon(Icons.female,color: Colors.white,size: 90,),),
                                 Expanded(
                                     flex: 3,
                                     child:Text("FEMALE",style: TextStyle(color: Colors.grey[300],fontSize:15),))
                               ],
                             )
                        ),
                       ),)
                       ),
                     ],
                   ),
                 ), ),


               //Container height 22222222222222222222222222222222222222222222222222222222222222222222
                 Expanded(child:Card(
                   margin: EdgeInsets.all(16),
                   color: Color(0xff08102d),
                   child:Container(
                   width:10000,
                   padding: EdgeInsets.only(left: 20,right: 20,top: 32,bottom: 20),
                   child: Column(
                     children: [
                       Text("HEIGHT",style: TextStyle(color: Colors.grey[300],fontSize:15,fontWeight: FontWeight.bold),),
                        Container(height: 15,),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$x" ,style: TextStyle(color: Colors.white,fontSize:40,fontWeight: FontWeight.bold),),
                            Text("Cm",style: TextStyle(color: Colors.grey[300],fontSize:15),),
                          ],
                        ),
                       Slider(value:HeightVal,
                           max: 220,
                           min: 50,
                           activeColor: Color(0xff720707),
                           onChanged: (val)
                           {
                             setState(() {
                               HeightVal=val;
                               x=HeightVal.toStringAsFixed(1);

                             });
                           })
                     ],
                   ),
                 ),
                 )
                 ),


                 //Container weight and age 333333333333333333333333333333333333333333333333333333333333333
                 Expanded(child:Container(
                     padding: EdgeInsets.all(20),
                       child:Row(
                         children: [
                           Expanded(
                               flex :5,
                               child:Card(
                                 color:Color(0xff08102d) ,
                                   child: Column(
                                      children: [
                                        Container(height: 20,),
                                        Text("WEIGHT",style: TextStyle(color: Colors.grey[300],fontSize:15,fontWeight: FontWeight.bold),),
                                        Container(height: 10,),
                                        Text("$weight" ,style: TextStyle(color: Colors.white,fontSize:45,fontWeight: FontWeight.bold),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            IconButton(onPressed: (){
                                              setState(() {
                                                weight++;
                                              });
                                            },
                                                color: Color(0xff720707),
                                                iconSize: 40, icon: Icon(Icons.add,color: Colors.white,)),
                                            IconButton(onPressed: (){
                                              setState(() {
                                                if(weight<=0){
                                                  weight=0;
                                                }
                                                else {
                                                  weight--;
                                                }
                                              });
                                            },
                                                color: Color(0xff720707),
                                                iconSize: 40, icon: Icon(Icons.remove,color: Colors.white,)),
                                          ],
                                        )
                                      ],
                                       )
                                   ),
                                 ),
                           Spacer(flex:1,),

                           Expanded(
                             flex :5,
                             child:Card(
                                 color:Color(0xff08102d) ,
                                 child: Column(
                                   children: [
                                     Container(height: 20,),
                                     Text("AGE",style: TextStyle(color: Colors.grey[300],fontSize:15,fontWeight: FontWeight.bold),),
                                     Container(height: 10,),
                                     Text("$age" ,style: TextStyle(color: Colors.white,fontSize:45,fontWeight: FontWeight.bold),),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         IconButton(onPressed: (){
                                           setState(() {
                                             age++;
                                           });
                                         },
                                             color: Color(0xff720707),
                                             iconSize: 40, icon: Icon(Icons.add,color: Colors.white,)),
                                         IconButton(onPressed: (){
                                           setState(() {
                                             if(age<=0){
                                               age=0;
                                             }
                                             else {
                                               age--;
                                             }                                           });
                                         },
                                             color: Color(0xff720707),
                                             iconSize: 40, icon: Icon(Icons.remove,color: Colors.white,)),
                                       ],
                                     )
                                   ],
                                 )
                                 )
                             ),
                         ],
                       ),


                   ), ),
               ],
            ), ),



// next page buttom
            Expanded(child:Container(
              width:10000,
              child: MaterialButton(

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Calc(weight1:weight,Height:HeightVal,Male:male,Female: female,Age: age,)));
                },
                color:Color(0xff720707),
                child: Text("Calculate",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
            ) )
          ],
        ),
      )
    );
  }
}
