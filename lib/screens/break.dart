import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_apps/providers/provider_models.dart';

class Break extends StatelessWidget {
  const Break({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Breaks>(
      create: (context) => Breaks(context),
      child: Scaffold(
        body: Container(
          //height: MediaQuery.of(context).size.width,
           width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
    image: AssetImage("assets/img/25.jpg"),)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Break Time",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
              ),
             // SizedBox(height: 65,),
              Consumer<Breaks>(builder: (context,breakProvider,child){
                return Text(
                  "${breakProvider.countdown}s",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                );
              }),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                  child: Text(
                  "SKIP",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
                ),),
              Spacer(),
              Divider(
                thickness: 2,color: Colors.white,
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(
                      "Next: Anulom Vilom",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
