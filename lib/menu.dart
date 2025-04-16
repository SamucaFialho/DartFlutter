import 'package:flutter/material.dart';
import 'package:menu_item/menu_item.dart';
import 'package:menu_item/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
            pizzaData.map((pizza) => MenuItem(pizza: pizza)).toList(),
          
             
        ),
      ),
    );
  }
List<MenuItem> _buildItems(){
  List<MenuItem> items =[];
  for(var pizza in pizzaData){
    items.add(MenuItem(pizza: pizza));
  }
  return items;
}



}