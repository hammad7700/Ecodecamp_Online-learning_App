import 'package:flutter/material.dart';
import 'package:onlone_learning_app/screens/home_screen.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        backgroundColor: Color(0xff2B3086),
        centerTitle: true,
        // title: Text("Notification",style: TextStyle(
        //   color: Colors.white,
        // ),),
      ),
      backgroundColor: Color(0xff2B3086),
      body: Center(
        child: Text("Notifications",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
