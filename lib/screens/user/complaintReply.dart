import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComplaintReplayScreen extends StatelessWidget {
  const ComplaintReplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => Column(
                      children: [
                        AlertDialog(
                          insetPadding: EdgeInsets.all(10),
                          title: Text('Sent Complaint'),
                          content: Column(
                            children: [
                              TextFormField(
                                maxLines: null,
                                decoration: InputDecoration(
                                    hintText: 'Add Comments',
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
                      ],
                    ));
          },
          child: Text('Sent Complaint')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Complaint.....'),
                        ),
                        ListTile(
                          title: Text('Replay:'),
                          subtitle: Text('rrrrrrrrrrrrrrrrrrrrrr'),
                        )
                      ],
                    ),
                  );
                },itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
