import 'package:flutter/material.dart';

class WhatsappCommunitypage extends StatefulWidget {
  const WhatsappCommunitypage({Key? key}) : super(key: key);

  @override
  State<WhatsappCommunitypage> createState() => _WhatsappCommunitypageState();
}

class _WhatsappCommunitypageState extends State<WhatsappCommunitypage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 70,
                width: 70,
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(Icons.groups),
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
                "New community",
                style: TextStyle(color: Colors.black),
              ),
            );
          }),
    );
  }
}
