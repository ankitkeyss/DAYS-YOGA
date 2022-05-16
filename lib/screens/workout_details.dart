import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_apps/providers/provider_models.dart';

class Workout_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WorkoutDetails>(
      create: (context) => WorkoutDetails(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img/5.jpg"),
                    )),
                  ),
                  Text(
                    "Anulom Vilom",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: Container(
                      // margin: EdgeInsets.symmetric(horizontal:120),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "  00 ",
                            style:
                                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ": ",
                            style:
                                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Consumer<WorkoutDetails>(
                              builder: (context, workoutDetProvider, child) {
                            return Text(
                              workoutDetProvider.countdown.toString(),
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 30,
                  ),
                  Spacer(),
                  Consumer<WorkoutDetails>(builder: (context,providerValue,child){
                    return  ElevatedButton(
                      onPressed: () {providerValue.show();},
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Text(
                            "PAUSE",
                            style: TextStyle(fontSize: 20),
                          )),
                    );
                  })
                 ,
                  Spacer(),
                  Container(
                    //   padding: EdgeInsets.only(top: 100),
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Previous",
                              style: TextStyle(fontSize: 16),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Next",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          "Next: Anulom Vilom",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            Consumer<WorkoutDetails>(builder: (context,Workout_Details,child){
              return  Visibility(
                  visible: Workout_Details.visible,
                  child: Container(
                    color: Colors.purpleAccent.withOpacity(0.8),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("PAUSE",style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold,color: Colors.white),),
                        OutlinedButton(onPressed: (){}, child: Container(
                          width: 70,
                          child: Text("RESTART",style: TextStyle(),textAlign: TextAlign.center,),
                        ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),),
                        OutlinedButton(onPressed: (){}, child: Container(
                          width: 70,
                          child: Text("QUIT",style: TextStyle(),textAlign: TextAlign.center,),
                        ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),),
                      // Consumer<WorkoutDetails>(builder: (context,providerValue,child){
                      //   return  OutlinedButton(onPressed: (){providerValue.visible;}, child: Container(
                      //     width: 70,
                      //     child: Text("RESUME",style: TextStyle(),textAlign: TextAlign.center,),
                      //   ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),);
                      // })
                        OutlinedButton(onPressed: (){Workout_Details.hide();}, child: Container(
                          width: 70,
                          child: Text("RESUME",style: TextStyle(),textAlign: TextAlign.center,),
                        ),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),)
                      ],
                    ),
                  ));
            }),

          ],
        ),
      ),
    );
  }
}
