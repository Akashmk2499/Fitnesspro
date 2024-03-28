import 'package:fitnessproadv/main.dart';
import 'package:flutter/material.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  bool lied = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
                alignment: Alignment.center,
                
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.black12,
                   
                  ),
                  IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.play_circle_outline_outlined),
                    ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ttile'),
                IconButton(
                  onPressed: () {
                    setState(() {
                      lied = !lied;
                    });
                  },
                  icon: lied
                      ? Icon(Icons.thumb_up_alt)
                      : Icon(Icons.thumb_up_alt_outlined),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: null,
              decoration: InputDecoration(
                  hintText: 'Add Comments',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(children: [
                  Row(children: [
                   

                  Text(
                    'Nmae',
                    style: TextStyle(fontSize: 10),
                  ), ],
                  
                  ),

                   Text(
                    'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                    style: TextStyle(fontSize: 15,),
                  ),
                ],
                 
                ); 
              },
            ))
          ],
        ),
      ),
    );
  }
}
