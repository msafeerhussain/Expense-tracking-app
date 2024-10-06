import 'package:finance/Screens/home.dart';
import 'package:finance/helper/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height*0.03,),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
              SizedBox(height: height*0.03,),
              const Text("Muhamamd Safeer Hussain",style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: height*0.01,),
              Text("Flutter Developer",style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: height*0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.edit,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Bio",style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: height*0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.person,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Skills",style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: height*0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.link,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Links ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Container(
                  height: height*0.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.edit,color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("Add a Comment ",style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
