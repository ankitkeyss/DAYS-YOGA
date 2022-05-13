import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yoga_apps/screens/break.dart';
import 'package:yoga_apps/screens/workout_details.dart';

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    MyTimer(context);
  }
  int countdown = 3;
  MyTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        timer.cancel();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Workout_Details()));
      }
      notifyListeners();
    });
  }
}

class WorkoutDetails with ChangeNotifier {
  WorkoutDetails(context) {
    Workout_Details(context);
  }
  int countdown = 3;
  Workout_Details(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        //timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Break()));
      }
      notifyListeners();
    });
  }
}

class Breaks with ChangeNotifier {
  Breaks(context){
    breakdetails(context);
  }
  int countdown = 20;
  breakdetails(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        // timer.cancel();
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutDetails(context)));
      }
      notifyListeners();
    });
  }
}
