import 'package:fitnessproadv/chatScreen.dart';
import 'package:fitnessproadv/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserPhysiotherapy extends StatelessWidget {
  const UserPhysiotherapy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Trainers'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
        
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    
                      child: ListTile(
                    title: Text('name'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.SD-ZTfTjeX7kHNPvqQhn0gHaKZ?w=157&h=220&c=7&r=0&o=5&dpr=1.4&pid=1.7'),
                    ),
                    trailing: ElevatedButton(onPressed: () {
                      navigation(context, ChatScreen());
                    }, child: Text('chat')),
                    subtitle:RatingBar.builder(
                      itemSize: 15,
                       initialRating: 3.5,
                       minRating: 1,
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                      
                       itemCount: 5,
                       itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                       itemBuilder: (context, _) => Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                       onRatingUpdate: (rating) {
                         
                       },
                    ),
                  ));
                },
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
