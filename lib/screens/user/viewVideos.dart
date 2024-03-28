import 'package:fitnessproadv/main.dart';
import 'package:fitnessproadv/screens/user/choosePlan.dart';
import 'package:fitnessproadv/screens/user/videoPlayScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewVideos extends StatefulWidget {
  const ViewVideos({super.key});

  @override
  State<ViewVideos> createState() => _ViewVideosState();
}

class _ViewVideosState extends State<ViewVideos> {

  String selectedoption='C';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
        actions: [
        
        
        
        
        PopupMenuButton<String>(
  onSelected: (newValue) {
    print('Selected: $newValue');
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    const PopupMenuItem<String>(
      value: 'Option 1',
      child: Text('Option 1'),
    ),
    const PopupMenuItem<String>(
      value: 'Option 2',
      child: Text('Option 2'),
    ),
    const PopupMenuItem<String>(
      value: 'Option 3',
      child: Text('Option 3'),
    ),
  ],
  icon: Icon(Icons.more_vert), // Three dots icon
)

      
        
        
        
        
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('ttile')),
                Stack(
                alignment: Alignment.center,
                
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.black12,
                    child: Container(
                      
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        navigation(context, VideoPlayScreen());
                      },
                      icon: Icon(Icons.play_circle_outline_outlined),
                    ),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Trainer: ghj'), Row(
                      children: [
                        Text('60'),
                         Icon(Icons.thumb_up_alt)
                      ],
                    ),  
                  ],
                ),
                ElevatedButton(onPressed: (){
                  navigation(context,ChoosePlan());
                }, child: Text('Please Subscribe',style: TextStyle(color: Colors.red),),),
                SizedBox(height: 10,)
              
              ],
            );
          },
        ),
      ),
    );
  }
}
