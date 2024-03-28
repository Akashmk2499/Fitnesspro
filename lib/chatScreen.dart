import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Example, replace with actual chat messages
              itemBuilder: (context, index) {
                // Replace this with actual chat message widget
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Card(child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Message $index'),
                      ))),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:  Card(child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Message $index'),
                      )),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {
                    // Add functionality to send message
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
