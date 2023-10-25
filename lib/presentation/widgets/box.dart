import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  //final String url;

  const Box({super.key, 
    //required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
         /* image:  DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover,
          ), */  //DecorationImage
          border: Border.all(
            color: Colors.grey,
            width: 4,
          ), //Border.all
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(
                5.0,
                5.0,
              ), //Offset
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        //child: Text(url),
        //child: Text(url),
      ),
    );
  }
}
