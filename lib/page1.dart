import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myprovider.dart';
import 'package:provider/provider.dart';


class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
       appBar: AppBar(title: Text('Page1'),),


       body: Column(children: [
          Text(
          Provider.of<MyProvider>(context).text),
         Text(Provider.of<MyProvider>(context,listen: false).text ='hello word')

          
          ],
      ));

       
    
  }

}