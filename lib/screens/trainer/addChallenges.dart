import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AdddChallenge extends StatefulWidget {
  const AdddChallenge({super.key});

  @override
  State<AdddChallenge> createState() => _AdddChallengeState();
}

class _AdddChallengeState extends State<AdddChallenge> {
 File? _selectedVideo;
  
  late VideoPlayerController _videoPlayerController;
  TextEditingController titleController=TextEditingController();

  void _pickVideo() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.video);

    if (result != null) {
      setState(() {
        _selectedVideo = File(result.files.single.path!);
        _videoPlayerController = VideoPlayerController.file(_selectedVideo!);
        _videoPlayerController.initialize().then((_) {
          setState(() {});
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add challenges'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 20,),
           customtextfeild(labelText: Text('Title'),controller:titleController ,),
           SizedBox(height: 20,),
           
        ElevatedButton(
                  onPressed: _pickVideo,
                  child: Text('Pick Video'),
                  
                ),
                SizedBox(width: 20),
                 if (_selectedVideo != null)
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: _videoPlayerController.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _videoPlayerController.value.aspectRatio,
                            child: VideoPlayer(_videoPlayerController),
                          )
                        : CircularProgressIndicator(),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){}, child: Text('Submit'))
        
            ],),
      ),);
  }
}