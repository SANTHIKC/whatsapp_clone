import 'package:flutter/material.dart';

import 'detailsofmap.dart';

class WhatsappStatuspage extends StatefulWidget {
  const WhatsappStatuspage({Key? key}) : super(key: key);

  @override
  State<WhatsappStatuspage> createState() => _WhatsappStatuspageState();
}

class _WhatsappStatuspageState extends State<WhatsappStatuspage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),
        ),
        FloatingActionButton(onPressed: (){},child: Icon(Icons.camera_alt),)
      ],
    ),
      body:
       Column(
        children: [
          Expanded(
            child: Column(
              children: [
            ListTile(
            leading: Container(
            height: 70,
              width: 70,
              child: Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey),

                  ),
                  Align(alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.add_circle,
                        color: Color.fromRGBO(7, 77, 66, 100),
                        size: 30,
                      )),
                ],
              ),
            ),
            title: Text(
              "My Status",
              style: TextStyle(color: Colors.black),
            ),
              subtitle:Text("Tap to add status update"),

          ),
                Row(
                  children: [
                    Text("Recent Updated"),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: contact.length,
                      itemBuilder: (context,index) {
                        final contacts = contact[index];
                        return Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                                child: Image.asset(contacts["profile_pic"]

                                ) ,
                              ),

                              title: Text(contacts["name"]),
                              subtitle:Text(contacts["last_seen"]),
                            ),

                          ],
                        );

                      }
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
