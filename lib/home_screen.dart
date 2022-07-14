import 'package:flutter/material.dart';
import 'package:flutter_provider_example/home_page_controller.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controllerL = Provider.of<HomePageController>(context);
    final controller = Provider.of<HomePageController>(context,listen: false);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              controller.decreament();
            }, icon: Icon(Icons.remove,color: Colors.white,)),
            IconButton(onPressed: (){
              controller.increament();
            }, icon: Icon(Icons.add,color: Colors.white,)),
          ],
        ),
      ),
      body: Center(
        child: Text("Value : ${controllerL.getValue}",style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
