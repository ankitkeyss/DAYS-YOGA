import 'package:flutter/material.dart';
import 'package:yoga_apps/screens/startup.dart';
import 'package:yoga_apps/widgets/custom_appbar.dart';
import 'package:yoga_apps/widgets/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_animationController);
    _iconTween = ColorTween(begin: Colors.white, end: Colors.blueGrey)
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_animationController);
    _yogaTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _textAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Custome_Drawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(50, 100, 50, 20),
                              decoration: const BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius:  BorderRadius.only(
                                      bottomRight: Radius.circular(13),
                                      bottomLeft: Radius.circular(13))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Streak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "120",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("kCal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "26",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      width: MediaQuery.of(context).size.width,
                                      child: const Text(
                                        "Exercise For All",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context,)=>const Start_UP()));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 20),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 150,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(60),
                                                  topLeft: Radius.circular(20),
                                                  //  bottomLeft: Radius.circular(20),
                                                ),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                  image: AssetImage("assets/img/1.jpg"),
                                                     )),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.black26,
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                Radius.circular(60),
                                                topLeft: Radius.circular(20),
                                                //  bottomLeft: Radius.circular(20),
                                              ),),

                                            height: 150,

                                          ),
                                          const Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 10,
                                            child: Text(
                                              "Exercise For Begineers",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          const Positioned(
                                            right: 30,
                                            left: 12,
                                            top: 38,
                                            child: Text(
                                              "Last Time : 2 Feb",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(60),
                                                topLeft: Radius.circular(20),
                                                //  bottomLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:  AssetImage("assets/img/7.jpg"))),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                              Radius.circular(60),
                                              topLeft: Radius.circular(20),
                                              //  bottomLeft: Radius.circular(20),
                                            ),),

                                          height: 150,

                                        ),
                                        const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Weight Loss Exercise",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : 22 Jan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(60),
                                                topLeft: Radius.circular(20),
                                                //  bottomLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:  AssetImage("assets/img/17.jpg") )),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                              Radius.circular(60),
                                              topLeft: Radius.circular(20),
                                              //  bottomLeft: Radius.circular(20),
                                            ),),

                                          height: 150,

                                        ),
                                        const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Suryanamaskar Exercise",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : Yesterday",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(bottom: 15),
                                      width: MediaQuery.of(context).size.width,
                                      child: const Text(
                                        "Choose Your Type",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(60),
                                                topLeft: Radius.circular(20),
                                                //  bottomLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:  AssetImage("assets/img/2.jpg"))),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                              Radius.circular(60),
                                              topLeft: Radius.circular(20),
                                              //  bottomLeft: Radius.circular(20),
                                            ),),

                                          height: 150,

                                        ),
                                        const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Power Exercise",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : Yesterday",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                  Radius.circular(60),
                                                  topLeft: Radius.circular(20),),
                                                  //  bottomLeft: Radius.circular(20),)

                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage("assets/img/15.jpg")
                                              )),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                              Radius.circular(60),
                                              topLeft: Radius.circular(20),
                                              //  bottomLeft: Radius.circular(20),
                                            ),),

                                          height: 150,

                                        ),
                                        const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Breathing Exercise",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : 29 Jan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(60),
                                                topLeft: Radius.circular(20),
                                                //  bottomLeft: Radius.circular(20),
                                              ),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage("assets/img/18.jpg")
                                              )),
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.black26,
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                              Radius.circular(60),
                                              topLeft: Radius.circular(20),
                                              //  bottomLeft: Radius.circular(20),
                                            ),),

                                          height: 150,

                                        ),
                                        const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Increase Flexibility Exercise",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        const Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : 29 Jan",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomAppBar(
                      animationController: _animationController,
                      colorsTween: _colorTween,
                      drawerTween: _drawerTween,
                      homeTween: _homeTween,
                      iconTween: _iconTween,
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      yogaTween: _yogaTween)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Yoga App"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Text("Streak"),
//                     ],
//                   ),Column(
//                     children: [
//                       Text("Streak"),
//                     ],
//                   ),Column(
//                     children: [
//                       Text("Streak"),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Divider(thickness: 3,indent: 20,endIndent: 20,),
//             Container(
//               padding: const EdgeInsets.all(25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Yoga for All"),
//                   Padding(padding: EdgeInsets.symmetric(vertical: 10,),
//                   child: Container(
//                     color: Colors.grey,
//                     height: 150,
//                   ),
//                   ),
//                   Padding(padding: EdgeInsets.symmetric(vertical: 5,),
//                     child: Container(
//                       color: Colors.grey,
//                       height: 150,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Yoga for All"),
//                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Container(
//                       color: Colors.grey,
//                       height: 150,
//                     ),
//                   ),
//                   Padding(padding: EdgeInsets.symmetric(vertical: 5, ),
//                     child: Container(
//                       color: Colors.grey,
//                       height: 150,
//                     ),
//                   )
//                 ],
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
