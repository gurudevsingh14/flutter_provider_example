import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier{
    int value=0;

    int get getValue => value;

    void increament(){
      value++;
      notifyListeners();
    }
    void decreament(){
      value--;
      notifyListeners();
    }
}