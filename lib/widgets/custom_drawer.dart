import 'package:flutter/material.dart';

class Custome_Drawer extends StatelessWidget {
  const Custome_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://images.unsplash.com/flagged/photo-1573556278922-ad9a1914c801?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1099&q=80"),
              )
            ),
          ),
          ListTile(
            title: Text("Reset Progress",style: TextStyle(fontSize: 19),),
            leading: Icon(Icons.restart_alt_sharp),
          ),
          ListTile(
            title: Text("Share with Friends",style: TextStyle(fontSize: 19),),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title: Text("Rate Us",style: TextStyle(fontSize: 19),),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text("Reset Progress",style: TextStyle(fontSize: 19),),
            leading: Icon(Icons.comment),
          ),
          ListTile(
            title: Text("Privacy Policy",style: TextStyle(fontSize: 19),),
            leading: Icon(Icons.security),
          ),
          Divider(thickness: 2,endIndent: 30,indent: 30,),
          Text("version  1.0.0" ,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
