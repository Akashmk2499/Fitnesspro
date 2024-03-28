import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbacScreen extends StatelessWidget {
  const FeedbacScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feedback'),),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
                            children: [
                              TextFormField(
                                maxLines: null,
                                decoration: InputDecoration(
                                    hintText: 'Enter Feedback',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text('sent'))
                            ],
                          ),
      ),
    );
  }
}
