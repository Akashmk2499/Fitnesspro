import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/material.dart';

class ViewVedios extends StatefulWidget {
  ViewVedios({super.key});

  @override
  State<ViewVedios> createState() => _ViewVediosState();
}

class _ViewVediosState extends State<ViewVedios> {
  String _selectedOption = 'Category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(7)),
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
              Expanded(child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                      child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.black12,
                      ),
SizedBox(width: 6,),
Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text('headding'),
  Row(
    children: [
      ElevatedButton(onPressed: (){}, child: Text('Edit')),SizedBox(width: 5,),
      ElevatedButton(onPressed: (){}, child: Text('Delete'))
    ],
  ),
  
],)

                    ],
                  ));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
