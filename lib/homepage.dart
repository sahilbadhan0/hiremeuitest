import 'package:flutter/material.dart';
import 'package:hiremeuitest/commonTool.dart';
import 'package:hiremeuitest/jobs.dart';
import 'package:hiremeuitest/profilePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double padding=15.0;
 List  categoryList= [Icons.video_call,Icons.pie_chart,Icons.category,Icons.phone_android,
 Icons.video_call,Icons.pie_chart,Icons.category,Icons.phone_android,
 Icons.video_call,Icons.pie_chart,Icons.category,Icons.phone_android,];

  List  colorList= [Colors.blue,Colors.orange,Colors.pink,Colors.green,
  Colors.blue,Colors.orange,Colors.pink,Colors.green,
  Colors.blue,Colors.orange,Colors.pink,Colors.green,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: getAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left:padding,right:padding),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: padding,crossAxisSpacing: padding,childAspectRatio: 1),
            shrinkWrap: true,
            itemCount: categoryList.length,
            itemBuilder: (context,i){
            return getGrid(iconData:categoryList[i],title:'title$i',color: colorList[i]);
            }),
      ),

      bottomNavigationBar: getCustomBottomBar(),
      floatingActionButton: getFAB(context),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Categories',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        new Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          child: Center(
              child: Text(
            '08',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfilePage()));},
            child:Hero(tag:'pro',child: getCircularProfilePic(50.0),),
          ),
        ),
      ],
    );
  }

  getGrid({IconData iconData, String title,Color color}) {
    var size = 200.0;
    return InkWell(
      onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Jobs(title)));
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      color: Colors.white,
        ),
        height: size, // Static for a while
        width: size,
        child: Column(
      children: <Widget>[
        Expanded(//Top Portion
            flex: 3, child: Container(child:
        Align(
          alignment: Alignment.topLeft,
            child: Icon(iconData,size: 45,color: color,)))),
        Expanded(
          flex: 2,
          child: Container(
            width: size - 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '8000+ jobs',
                    style: TextStyle(color: Colors.grey[500]),
                  )
                ],
              ),
            ),
          ),
        )
      ],
        ),
      ),
    );
  }
}
