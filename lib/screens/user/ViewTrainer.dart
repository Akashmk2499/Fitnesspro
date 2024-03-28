import 'package:fitnessproadv/chatScreen.dart';
import 'package:fitnessproadv/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ViewTrainers extends StatelessWidget {
  const ViewTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trainers'),
      ),
      body: ListView.builder(
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
    );
  }
}
