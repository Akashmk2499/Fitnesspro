import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/material.dart';

class AddDietPlans extends StatefulWidget {
  const AddDietPlans({super.key});

  @override
  State<AddDietPlans> createState() => _AddDietPlansState();
}

class _AddDietPlansState extends State<AddDietPlans> {
  TextEditingController titleController=TextEditingController();
  File? _selectedImage;


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
    return Scaffold(appBar: AppBar(title: Text('Add diet'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
           customtextfeild(labelText: Text('Title'),controller:titleController ,),
           SizedBox(height: 5,),
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
             
              
           SizedBox(height: 15,),
           
           ElevatedButton(onPressed: (){}, child: Text('Submit')),
        
            ],),
      ),);
  }
}
  
