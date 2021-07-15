import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myprovider.dart';
import 'package:flutter_application_1/product_modle.dart';
import 'package:provider/provider.dart';


class ProducteWidget extends StatelessWidget{
  
  int id;
  ProducteWidget( this.id);
  @override
  Widget build(BuildContext context) {
     
    return   Container(
       margin: EdgeInsets.all(10),
          child: Stack(
        children: [
          Container(
        
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Image.network( 
         Provider.of<MyProvider>(context). products.where((element) => element.id==id).first.imageUrl ,
        fit: BoxFit.cover,),
      ),
       Container(
         height:180,
         margin: EdgeInsets.all(5),
                child:Column(
                   
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,

                  
                  children: [
                   GestureDetector(
                     onTap: (){
                      Provider.of<MyProvider>(context,listen: false).addToFavorite(Provider.of<MyProvider>(context,listen: false). products.where((element) => element.id==id).first); 
                     },
                   child: CircleAvatar(
           radius: 30,
           backgroundColor: Colors.black.withOpacity(0.3),
              child: Icon(Icons.favorite,size: 40,
          color: Provider.of<MyProvider>(context). products.where((element) => element.id==id).first.isFavourite?Colors.red:Colors.white,),
     
      ),
                  ),
      Container (
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white.withOpacity(0.4),
        
        child: Text(Provider.of<MyProvider>(context). products.where((element) => element.id==id).first.name,
        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),))
      ],
                   
                )   
       )
        ],
        
      ),
    );
    
  }

}