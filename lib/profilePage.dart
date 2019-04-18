import 'package:flutter/material.dart';
import 'commonTool.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :Column (
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Container(),),
                  Hero(tag:'pro',child: getCircularProfilePic(80.0),),
                  Text('Gowtham Raj',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                  Text('UI/UX Designer',style: TextStyle(color:Colors.grey[500]),),

                  Expanded(child: Container(),),

                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Profile Completeness',style: TextStyle(color:Colors.grey[500]),),
                            Text('56%',style: TextStyle(color:Colors.grey[500]),),

                          ],
                        ),
                        Container(
                          height: 2,
                          color:Colors.grey,
                          child: Align(
                            alignment:Alignment.topLeft,
                            child: Container(
                              height: 2,
                              width: 300,
                              color:Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ) ,
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Expanded(  flex:5,
                   child: getRecommended(),
               ) ,
               Expanded(  flex:2,
                 child: getRecentActivity(),
               )
              ],

            ),
          )

        ],
      ),
      bottomNavigationBar: getBottomBar(),
      floatingActionButton: getFAB(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
  getJobTile(Color color,String jobTitle,String Description,String location){
    return new Container(
      decoration: BoxDecoration(
        color:  color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(left:15.0,top:20,right:10,bottom:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Text(jobTitle,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(Description,style: TextStyle(color: Colors.white,fontSize: 14),),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(location,style: TextStyle(color: Colors.white,fontSize: 14),),
         ),
         Expanded(child: Container(),),
         Row( 
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             new RaisedButton(onPressed: (){},child: Text('APPLY',style: TextStyle(color: Colors.white),),color: Colors.black,)
           ],
         )

       ],

      ),
    );
  }
  Widget getRecommended(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recommended Jobs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),),
              Text('SEE ALL',style: TextStyle(color: Colors.indigo),),

            ],
          ),
        ),
        Container(
          child:
        Expanded(flex:6,
          child: GridView(
            padding: EdgeInsets.only(left:10.0,right: 10.0),

            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getJobTile(Colors.purple, 'Senior Ui/Ux', 'microsoft Corp', ' Delhi'),
                getJobTile(Colors.orange, 'Graphics Designer', 'samsung', ' Delhi'),
                getJobTile(Colors.green, 'mobileDeveloper', 'XXX', ' Delhi'),

            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 15.0),
          ),
        ),
        )
      ],
    );

  }
  getRecentActivity(){
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Recent Activies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(

              children: <Widget>[
                Expanded(child: recentActivitytab(Icons.bookmark,49,'Saved jobs',Colors.pink)),
                SizedBox.fromSize(size: Size.fromWidth(10)),
                Expanded(child: recentActivitytab(Icons.check,121,'Aplied',Colors.indigo)),
              ],
            ),
          ),
        )


      ],



    );

  }
  Widget recentActivitytab(iconData, int count,String title,Color backColor){
    return new Container(
      decoration: BoxDecoration(
        color:Colors.white ,
        borderRadius: BorderRadius.circular(20),
      ),
        child:Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(child: Icon(iconData,color:backColor),backgroundColor: backColor.withOpacity(0.1),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('$count',style: TextStyle(fontSize: 20),),
                Text(title),
            ]
            )

          ],
        )

    );
  }
}
//          PageView(
//            children: <Widget>[
//              getJobTile(Colors.purple, 'Senior Ui/Ux', 'microsoft Corp', ' Delhi'),
//              getJobTile(Colors.orange, 'Graphics Designer', 'samsung', ' Delhi'),
//              getJobTile(Colors.green, 'mobileDeveloper', 'XXX', ' Delhi'),
//
//            ],
//          ),