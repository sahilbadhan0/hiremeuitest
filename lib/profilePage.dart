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
                              width: 200,
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
               Expanded(  flex:3,
                 child: getRecentActivity(),
               )






              ],



            ),
          )



        ],

      )
    );
  }
  getJobTile(Color color,String jobTitle,String Description,String location){
    return new Container(
      decoration: BoxDecoration(
        color:  color,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
       children: <Widget>[
         Text(jobTitle),
         Text(Description),
         Text(location),

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
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: PageView(
            pageSnapping: true,
            children: <Widget>[
              getJobTile(Colors.purple, 'Senior Ui/Ux', 'microsoft Corp', ' Delhi'),
              getJobTile(Colors.orange, 'Graphics Designer', 'samsung', ' Delhi'),
              getJobTile(Colors.green, 'mobileDeveloper', 'XXX', ' Delhi'),

            ],
          ),
        )
      ],
    );

  }
  getRecentActivity(){
    return new Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Recent Activies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),),
        ),

        new Row(
          children: <Widget>[
            recentActivitytab(Icons.bookmark,49,'Saved jobs'),
            recentActivitytab(Icons.check,121,'Aplied'),
          ],
        )


      ],



    );

  }
  Widget recentActivitytab(iconData, int count,String title){
    return new Container(
      width: MediaQuery.of(context).size.width/2-20,
      decoration: BoxDecoration(
        color:Colors.white ,
        borderRadius: BorderRadius.circular(20),

      ),
        child:Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(child: Icon(iconData),),
            Column(
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
