import 'package:flutter/material.dart';

class Starrup extends StatefulWidget {
  const Starrup({Key? key}) : super(key: key);

  @override
  State<Starrup> createState() => _StarrupState();
}

class _StarrupState extends State<Starrup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
           pinned: true,
           // title: Text("AppBar"),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://images.unsplash.com/flagged/photo-1573556278922-ad9a1914c801?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1099&q=80",fit: BoxFit.cover,),
               title: Text("Yoga for begginers"),
            ),
            leading: Icon(Icons.backup_sharp),
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
                    ListView.separated(shrinkWrap: true,physics:NeverScrollableScrollPhysics(),
                        separatorBuilder: (context,index)=>Divider(thickness: 2,),itemBuilder: (context, index)=>
                            ListTile(title: Text("Yoga ${index}"),), itemCount: 10)
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
