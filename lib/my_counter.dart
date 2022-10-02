import 'package:flutter/cupertino.dart';

class MyCounter extends ChangeNotifier{
  int counter=0;

  inc(){
    counter++;
    notifyListeners();
  }

  dec(){
    counter--;
    notifyListeners();
  }
}