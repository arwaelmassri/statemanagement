import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/product_modle.dart';

class MyProvider extends ChangeNotifier{

  List<ProductModle> favouriteProducts=[];
  setFavouriteProducts(){
    this.favouriteProducts=products.where((element) => element.isFavourite).toList();
     notifyListeners();
  }

 
  List<ProductModle> products=[
    ProductModle(
      1,
      imageUrl: 'https://images.unsplash.com/photo-1615884465870-85b936e70330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',
    name: 'Table',
    price: 100),
    ProductModle(
      2,
      
      imageUrl: 'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=80',
    name: 'Labtop',
    price: 2000),
    ProductModle(
      3,
      
      imageUrl: 'https://images.unsplash.com/photo-1626184358417-1502f6faf7c9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    name: 'Car',
    price: 10000),
    ProductModle(
      4, 
      imageUrl: 'https://images.unsplash.com/photo-1626186867799-a925e46292f4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80  ',
    name: 'See',
    price: 200)
  ];

  addToFavorite(ProductModle productModle){
    int index=products.indexOf(productModle);

    products[index].isFavourite=!products[index].isFavourite;
    setFavouriteProducts();


  }





  String text='First Data';

  changeTextValue(String value){
    this.text=value;
    notifyListeners();
  }
}