//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/myprovider.dart';
//import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/product_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  ChangeNotifierProvider<MyProvider> (
    create:(context)=>MyProvider(),
    child: MaterialApp(home:MyApp())));
}
 

 class MyApp extends StatelessWidget{
   String text="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return  DefaultTabController(
      length: 2,
          child: Scaffold(
        appBar:  AppBar(
          title: Text(' Provider App'),
          bottom: TabBar(tabs: [
            Tab( child: Icon(Icons.home),),
            Tab( child: Icon(Icons.favorite),),
          ],),

        ),
        body:  TabBarView(
          children: [
                    Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: Provider.of<MyProvider>(context).products.length,
               
              itemBuilder:  (context,index){
                return ProducteWidget(Provider.of<MyProvider>(context).products[index].id);
              }),



             ),

                   Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: Provider.of<MyProvider>(context). favouriteProducts  .length,
               
              itemBuilder:  (context,index){
                return ProducteWidget( Provider.of<MyProvider>(context).favouriteProducts.toList()[index].id );
              }),



             ),
        ],),
         


              ),
    );
            
            
        
    
    
  }

 }

