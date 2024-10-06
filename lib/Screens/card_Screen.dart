import 'package:finance/Screens/home.dart';
import 'package:finance/widget/transactionwidget.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Card",style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
        }, icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Card",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                    Text("you have 3 active cards",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                    ),),
                  ],
                ),
                MaterialButton(
                    onPressed: (){},
                  color: Color(0xffffd674),
                  textColor: Colors.black,
                  child: Icon(Icons.add,size: 30,),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(8),
                  minWidth: 0,
                ),
              ],
            ),
            SizedBox(height: height*0.02,),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/chip.png",width: 50,),
                    Text("1234 5678 9101 1212",style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),),
                    Text("Ghulam",style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Expiry Date",style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),),
                            Text("24/2029",style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),),
                          ],
                        ),
                        Image.asset("assets/images/masters.png",width: 120,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.05,),
            Transactionwidget(
              title: "Food",
              ammount: "+\$2,020",
              date: "Oct 2",
              image: "assets/images/burger.png",
            ),
            SizedBox(height: height*0.03,),
            Transactionwidget(
              title: "Paypal",
              ammount: "+\$1,290",
              date: "Oct 20",
              image: "assets/images/paypal.png",
            ),
            SizedBox(height: height*0.03,),
            Transactionwidget(
              title: "Travel",
              ammount: "+\$12,394",
              date: "Oct 29",
              image: "assets/images/travel.png",
            ),
          ],
        ),
      ),
    );
  }
}
