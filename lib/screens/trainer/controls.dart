import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  const Controls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Controls'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            SizedBox(
              height: 20,
            ),
            // Container(
            //     padding: EdgeInsets.symmetric(horizontal: 10),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: Colors.grey),

            //     ),child: Text('ggvr'),),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                           width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                        ),
                        Text('Wrist'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Text('UP'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(onPressed: () {}, child: Text('Down')),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width*0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                        ),
                        Text('Wrist'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Text('UP'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(onPressed: () {}, child: Text('Down')),
                ],
              ),
            ),
          ]),
        ));
  }
}
