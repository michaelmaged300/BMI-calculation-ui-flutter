
import 'package:flutter/material.dart';
class Calc extends StatefulWidget {
  final int weight1;
  final double Height;
  final bool Male;
  final bool Female;
  final int Age;
  Calc({super.key, required this.weight1, required this.Height,required this.Male,required this.Female,required this.Age});

  @override
  State<Calc> createState() => _CalApp();
}

class _CalApp extends State<Calc> {

  //know weight
  String bb(double x)
  {

    if (x<18.5)
    {
      return "Underweight (نقص في الوزن)";
    }
    else if (x>=18.5&&x<=24.9)
    {
      return "Normal weight (وزن طبيعي)";
    }
    else if (x>=25&&x<=29.9)
    {
      return "Overweight (زياده في الوزن)";
    }
    else if (x>=30&&x<=34.9)
    {
      return "Obesity Class |  (سمنه من الدرجة الاولى)";
    }else if (x>=35&&x<=39.9)
    {
      return "Obesity Class ||  (سمنه من الدرجة الثانية)";
    }else
    {
      return "Severe Obesity (سمنه مفرطة)";
    }

  }
  @override
  Widget build(BuildContext context) {
   double bmi=double.parse ((widget.weight1 / ((widget.Height / 100) * (widget.Height / 100))).toStringAsFixed(2));
   //calc calorise male
    caloris(bool m,bool f,int a)
   {
     if (m==true)
     {
       if (a<20)
       {
         return "1200-2600";
       }
       else if (a>=20&&a<30)
       {
         return "1150-2800";
       }
       else if (a>=30&&a<40)
       {
         return "1100-2400";
       }
       else if (a>=40&&a<50)
       {
         return "1030-2150";
       }
       else if (a>=50&&a<60)
       {
         return "980-2060";
       }
       else{
         return "720-1750";
       }
     }

     //calc calorise female

     if (f==true)
     {
       if (a<20)
       {
         return "1100-2400";
       }
       else if (a>=20&&a<30)
       {
         return "1050-2600";
       }
       else if (a>=30&&a<40)
       {
         return "1000-2200";
       }
       else if (a>=40&&a<50)
       {
         return "950-2050";
       }
       else if (a>=50&&a<60)
       {
         return "950-2000";
       }
       else{
         return "600-1500";
       }
     }
     //default
     if (m==false&&f==false)
     {
       return 0;
     }




   }
   return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("BMI Result", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xff010615),
      ),
      body: Container(
        width: 1000,
        color: Color(0xff020718),
        child: Column(
          children: [
                      Container(height: 20,),
            Expanded(child:Card(
              margin: EdgeInsets.all(15),
              color: Color(0xff08102d),
              child:Container(
                width:10000,
                padding: EdgeInsets.only(left: 20,right: 20,top: 32,bottom: 20),
                child: Column(
                  children: [
                    Text("BMI  ",style: TextStyle(color: Color(0xff720707), fontSize: 15,fontWeight: FontWeight.bold),),
                      Container(height: 15,),
                    Text("$bmi",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                      Container(height: 10,),
                    Text(bb(bmi),style: TextStyle(color: Colors.white, fontSize: 18),),  ]
                ),
              ),
            ),
            ),
                     Container(height: 20,),
            Expanded(child:Card(
              margin: EdgeInsets.all(15),
              color: Color(0xff08102d),
              child:Container(
                width:10000,
                padding: EdgeInsets.only(left: 20,right: 20,top: 32,bottom: 20),
                child: Column(
                    children: [
                      Text("CALORIE  ",style: TextStyle(color: Color(0xff720707), fontSize: 15,fontWeight: FontWeight.bold),),
                        Container(height: 15,),
                      Text("The daily caloric needs",style: TextStyle(color: Colors.white, fontSize: 20),),
                      Text(" (الاحتياج اليومي من السعرات الحرارية)",style: TextStyle(color: Colors.white, fontSize: 20),),

                      Text("${caloris(widget.Male, widget.Female,widget.Age)}",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                    ]
                ),
              ),
            ),
            ),
                        Spacer()
          ],
        ),
      ),
    );
  }
}
