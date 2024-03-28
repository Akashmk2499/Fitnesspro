import 'package:fitnessproadv/chatScreen.dart';
import 'package:fitnessproadv/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TarainerPhysiotherapy extends StatelessWidget {
  const TarainerPhysiotherapy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: Column(
        children: [
           Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Action on search button pressed
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                    child: ExpansionTile(
                      expandedAlignment: Alignment.bottomLeft,
                  title: Text(' Name ★'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.SD-ZTfTjeX7kHNPvqQhn0gHaKZ?w=157&h=220&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                  ),
                  trailing: ElevatedButton(onPressed: () {
                    navigation(context, ChatScreen());
                  }, child: Text('chat')),
                  subtitle:Text('male'),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                      Text('Dob'),
                      Text('Email'),
                       Text('Phone'),
                      Text('Place'),
                      Text('Height'),
                      Text('Weight'),
                      SizedBox(height: 15,),
           
           ElevatedButton(onPressed: (){
            navigation(context, ChatScreen());
           }, child: Text('Control')),
        
            
                      ],),
                    )
                    
                  ],
                  
                ));
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
