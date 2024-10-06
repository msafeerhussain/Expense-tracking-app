import 'package:finance/helper/colors.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Container(
      width: height*0.4,
      child: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/drawer.png"),fit:BoxFit.fill),
                ),
                accountName: Text("Hammad Azhar"), accountEmail: Text("hammaddev57@gmail.com")),
            SizedBox(height: height*0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.access_time_outlined,color: Colors.white,),
                    title: Text("Daily Expence",style: TextStyle(
                      color: Colors.white,
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.access_time_outlined,color: Colors.white,),
                    title: Text("Weekly Expence",style: TextStyle(
                      color: Colors.white,
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.access_time_outlined,color: Colors.white,),
                    title: Text("Monthly Expence",style: TextStyle(
                      color: Colors.white,
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.access_time_outlined,color: Colors.white,),
                    title: Text("Yearly Expence",style: TextStyle(
                      color: Colors.white,
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

