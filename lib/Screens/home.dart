import 'package:finance/Screens/card_Screen.dart';
import 'package:finance/Screens/drawer.dart';
import 'package:finance/Screens/profile.dart';
import 'package:finance/helper/colors.dart';
import 'package:finance/widget/bottomitems.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int touchedIndex = -1;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int bottomIndex =0;
  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerScreen(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset("assets/images/menu.png",color: Colors.white,width: 30,)),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Profile(),));
            },
            child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("assets/images/user.png"),),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10,left: 10,bottom: 30),
        child: Container(
          decoration: BoxDecoration(
            color: ksecondarycolor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GestureDetector(
                 onTap: () {
                   setState(() {
                     bottomIndex =0;
                   });
                 },
                 child: Bottomitems(
                   icon: Icons.home,
                   active: bottomIndex ==0 ? true :false,
                 ),
               ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex =1;
                    });
                  },
                  child: Bottomitems(
                    icon: Icons.notifications,
                    active: bottomIndex ==1 ? true :false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex =2;
                    });
                  },
                  child: Bottomitems(
                    icon: Icons.chat_bubble,
                    active: bottomIndex ==2 ? true :false,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIndex =3;
                    });
                  },
                  child: Bottomitems(
                    icon: Icons.settings,
                    active: bottomIndex ==3 ? true :false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: height*0.02,),
            Text("Your Balance",style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: height*0.015,),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => CardScreen(),));
              },
              child: Container(
                height: height*0.125,
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("Oct 05,2024",style: TextStyle(
                            color: Colors.grey,
                          ),),
                          SizedBox(height: height*0.01,),
                          Text("\$27,879,00",style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("%15",style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),),
                          Icon(Icons.arrow_upward,color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.arrow_upward,color: kprimarycolor,size: 35,),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.arrow_downward,color: kprimarycolor,size: 35,),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.food_bank,color: kprimarycolor,size: 35,),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.charging_station,color: kprimarycolor,size: 35,),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Activities",style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),),
                Container(
                  width: width*0.25,
                  decoration: BoxDecoration(
                    color: ksecondarycolor,
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text("This Week",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.3,
              child: BarChart(mainBarData()),
            ),
          ],
        ),
      ),
    );
  }
}

BarChartGroupData makeGroupData(
    int x,
    double y, {
      Color barColor = kprimarycolor,
      double width = 15,
      List<int> showTooltips = const [],
    }) {
  return BarChartGroupData(
    x: x,
    barRods: [
      BarChartRodData(
        toY: y,
        color: barColor,
        width: width,
        borderSide: BorderSide(color: Colors.white, width: 1),
        backDrawRodData: BackgroundBarChartRodData(
          show: true,
          toY: 15,
          color: ksecondarycolor,
        ),
      ),
    ],
    showingTooltipIndicators: showTooltips,
  );
}

List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
  switch (i) {
    case 0:
      return makeGroupData(0, 5);
    case 1:
      return makeGroupData(1, 6.5);
    case 2:
      return makeGroupData(2, 5);
    case 3:
      return makeGroupData(3, 7.5);
    case 4:
      return makeGroupData(4, 9);
    case 5:
      return makeGroupData(5, 11.5);
    case 6:
      return makeGroupData(6, 6.5);
    default:
      return throw Error();
  }
});

BarChartData mainBarData() {
  return BarChartData(
    barTouchData: BarTouchData(
      touchTooltipData: BarTouchTooltipData(

        getTooltipItem: (group, groupIndex, rod, rodIndex) {
          String weekDay;
          switch (group.x) {
            case 0:
              weekDay = 'Jan';
              break;
            case 1:
              weekDay = 'Feb';
              break;
            case 2:
              weekDay = 'March';
              break;
            case 3:
              weekDay = 'April';
              break;
            case 4:
              weekDay = 'May';
              break;
            case 5:
              weekDay = 'Jun';
              break;
            case 6:
              weekDay = 'Jul';
              break;
            default:
              throw Error();
          }
          return BarTooltipItem(
            '$weekDay\n',
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            children: <TextSpan>[
              TextSpan(
                text: rod.toY > 1 ? (rod.toY - 1).toString() : rod.toY.toString(), // Safe calculation
                style: const TextStyle(
                  color: kprimarycolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
      touchCallback: (FlTouchEvent event, barTouchResponse) {
        setState(() {
          if (!event.isInterestedForInteractions ||
              barTouchResponse == null ||
              barTouchResponse.spot == null) {
            var touchedIndex = -1;
            return;
          }
          var touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
        });
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: getTitles,
          reservedSize: 38,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    barGroups: showingGroups(),
    gridData: FlGridData(show: false),
  );
}

void setState(Null Function() param0) {
}



Widget getTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Jan', style: style);
      break;
    case 1:
      text = const Text('Feb', style: style);
      break;
    case 2:
      text = const Text('March', style: style);
      break;
    case 3:
      text = const Text('April', style: style);
      break;
    case 4:
      text = const Text('May', style: style);
      break;
    case 5:
      text = const Text('Jun', style: style);
      break;
    case 6:
      text = const Text('Jul', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16,
    child: text,
  );
}

