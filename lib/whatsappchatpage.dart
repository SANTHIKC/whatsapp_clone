import 'package:flutter/material.dart';
import 'package:watsapp_cloneapp/selectedcontactwhatsapp.dart';
import 'package:watsapp_cloneapp/utilities.dart';

import 'detailsofmap.dart';

class WhatsAppChatpage extends StatefulWidget {
  const WhatsAppChatpage({Key? key}) : super(key: key);

  @override
  State<WhatsAppChatpage> createState() => _WhatsAppChatpageState();
}

class _WhatsAppChatpageState extends State<WhatsAppChatpage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => whatupcontactlist(),
            ));
          },
          child: Icon(Icons.chat),
          backgroundColor: Color.fromRGBO(7, 77, 66, 100),
        ),
        body: Column(
          children: [
            (Expanded(
              child: ListView.builder(
                itemCount: contact.length,
                itemBuilder: (context, index) {
                  final contacts = contact[index];
                  return ListTile(
                    title: Text(contacts["name"],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(contacts["message"]),
                    leading: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Image.asset(contacts["profile_pic"]

                      ) ,
                    ),


                    trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(contacts["last_seen"],
                              style: TextStyle(color: Utilities.backgcolor)),
                          Container(
                            height: 15,
                            width: 15,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(contacts["unread"],
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                            decoration: BoxDecoration(
                                color: Utilities.backgcolor,
                                shape: BoxShape.circle),
                          ),
                        ]),
                  );
                },
              ),
            )),
          ],
        ),
      );
  }
}
