import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:Scaffold(
      appBar:AppBar(
        title:Text('WhatsApp'),
        bottom:const TabBar(tabs: [
          Icon(Icons.camera_alt_rounded),
          Text('Chats'),
          Text('Status'),
          Text('Call'),
        ],),
        actions: [
          Icon(Icons.search),
          SizedBox(height: 10),
          PopupMenuButton(
            icon: Icon(Icons.more_vert_sharp),
            itemBuilder: (context)=>[
               PopupMenuItem(child: Text('New group')
            ),
            PopupMenuItem(child: Text('Settings')
            ),
            
             PopupMenuItem(child: Text('Logout')
            ),

          ])
          
          
          
        ],
      
      ),
      // body: ListView.builder(itemBuilder: context),

    ));

  }
}