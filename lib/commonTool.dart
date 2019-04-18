import 'package:flutter/material.dart';

getCircularProfilePic(double size) {
  return Container(
    height: size,
    width: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Center(
        child: ClipOval(
      child: Image.asset(
        'images/profile.jpeg',
        fit: BoxFit.fill,
        height: size - 10,
        width: size - 10,
      ),
    )),
  );
}

getBottomBar() {
  return new BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home, color: Colors.indigoAccent,
          ),
          title: Text(
            'Home',
            style: TextStyle(
                color: Colors.indigoAccent, fontWeight: FontWeight.bold),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.grey[400]),
          title: Text(
            'Home',
            style: TextStyle(
                color: Colors.indigoAccent, fontWeight: FontWeight.bold),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.grey[400]),
          title: Text('Setting',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), title: Text('Setting')),
    ],
  );

}
getCustomBottomBar(){
  return BottomAppBar(child:
  Row(
    children: <Widget>[

          Icon(Icons.chat, color: Colors.grey[400]),


         Icon(Icons.settings, color: Colors.grey[400]),




         Icon(Icons.settings),


    ],
  )
    ,);

}
getFAB(context){
  return FloatingActionButton(onPressed: (){
    Navigator.pushNamed(context,'/search');
  },

    child: Icon(Icons.search,size: 30,),backgroundColor: Colors.deepPurpleAccent[400],
    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color:Colors.indigoAccent)),);

}
