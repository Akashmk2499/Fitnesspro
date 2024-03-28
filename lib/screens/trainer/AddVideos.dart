import 'dart:io';

import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:video_player/video_player.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({Key? key});

  @override
  _AddVideoState createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  File? _selectedVideo;
  File? _selectedImage;
  late VideoPlayerController _videoPlayerController;
  TextEditingController titleController=TextEditingController();
  String _selectedOption='Category';

  @override
  void initState() {
    super.initState();
    if (_selectedVideo!=null) {
       _videoPlayerController = VideoPlayerController.file(_selectedVideo!);
    }
   
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

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

  void _pickImage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      setState(() {
        _selectedImage = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Video'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black12),borderRadius: BorderRadius.circular(7)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  underline: SizedBox(),
                          value: _selectedOption, // Initially selected item
                          onChanged: (String? newValue) {
                            setState(() {
                _selectedOption = newValue!; // Update selected option
                            });
                          },
                          items: <String>[
                            'Category',
                            'Option 2',
                            'Option 3',
                            'Option 4',
                            'Option 5',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                            );
                          }).toList(),
                        ),
              ),
       SizedBox(height: 10),
          
          customtextfeild(labelText: Text('Title'),controller:titleController ,),
          
             
              SizedBox(height: 20),

              Row(
                children: [ ElevatedButton(
                onPressed: _pickVideo,
                child: Text('Pick Video'),
                
              ),
              SizedBox(width: 20),
               if (_selectedVideo != null)
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: _videoPlayerController.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _videoPlayerController.value.aspectRatio,
                          child: VideoPlayer(_videoPlayerController),
                        )
                      : CircularProgressIndicator(),
                ), ],),
              SizedBox(height: 20),
             Row(children: [ ElevatedButton(
                onPressed: _pickImage,
                child: Text('Pick Image'),
              ),SizedBox(width: 20),
              if (_selectedImage != null)
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Image.file(_selectedImage!),
                ), ],),
             
              
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Submit logic here
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
