import 'package:flutter/material.dart';
import 'package:hiremeuitest/profilePage.dart';
import 'commonTool.dart';

class Jobs extends StatefulWidget {
  String title;
  Jobs(this.title);
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: getAppBar(widget.title),
      body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(15),
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: getJobTile('images/googleIcon.png', "UX Product Engineer",
                  "hp", "Chennai", "yeah i can read that "),
            );
          }),
      bottomNavigationBar: getCustomBottomBar(),
      floatingActionButton: getFAB(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Widget getAppBar(String title) {
    return AppBar(
      textTheme: TextTheme(
          title: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold)),
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      elevation: 0.0,
      centerTitle: false,
      titleSpacing: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
      title: Align(
        alignment: Alignment(-1, 0),
        child: Text(
          title,
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Hero(
              tag: 'pro',
              child: getCircularProfilePic(50.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget getJobTile(
      String url, String title, String company, String location, description) {
    return new Container(
      padding: EdgeInsets.all(8),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        // logo and title
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                    child: ClipOval(
                        child: Center(
                  child: Image.asset(
                    url,
                    fit: BoxFit.fill,
                  ),
                ))),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(company, style: TextStyle(color: Colors.grey[500])),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              //bottom of JobTile
              child: new Container(
            padding: EdgeInsets.only(left: 15.0 * 2),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.grey[500],
                    ),
                    Text(location, style: TextStyle(color: Colors.grey[500])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.grey[500],
                    ),
                    Text(description),
                  ],
                ),
                Row(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
