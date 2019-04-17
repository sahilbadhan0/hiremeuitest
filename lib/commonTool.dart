import 'package:flutter/material.dart';
getCircularProfilePic(double size ){
  return  Container(
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
            fit: BoxFit.fill,height: size-10,width: size-10,
          ),
        )),
  );
}
