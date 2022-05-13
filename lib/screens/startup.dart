import 'package:flutter/material.dart';
import 'package:yoga_apps/screens/r_u_ready.dart';

class Start_UP extends StatefulWidget {
  const Start_UP({Key? key}) : super(key: key);

  @override
  State<Start_UP> createState() => _StarrupState();
}

class _StarrupState extends State<Start_UP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>rUready()));
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.blueGrey,
            textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold)),
        child: Text("Start",),),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
           pinned: true,
           backgroundColor: Colors.blueGrey,
           // title: Text("AppBar"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/img/14.jpg",fit: BoxFit.cover,),
               title: Text("EXERCISE !"),
            ),
         //   leading: Icon(Icons.backup_sharp),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.thumb_down_alt_rounded))
            ],
          ),
          SliverToBoxAdapter(
            child:  Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("20 Mins || 50+ Workout",style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                    Divider(thickness: 2,),
                    ListView.separated(
                        shrinkWrap: true,
                        physics:NeverScrollableScrollPhysics(),
                        separatorBuilder: (context,index)=>Divider(thickness: 2,),
                        itemBuilder: (context, index)=>
                            ListTile(
                              leading:Image.network("https://i.gifer.com/J0jR.gif",fit: BoxFit.cover,height: 70,width: 70) ,
                              title: Text("Yoga ${index}"),
                              subtitle: Text((index%2==0)?"00:20":"x20")

                            ),
                      itemCount: 10,)
                  ],
                ),
              ),
            )
          )

        ],
      ),
    );
  }
}
