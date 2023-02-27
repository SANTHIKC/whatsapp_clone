import 'package:flutter/material.dart';
import 'package:watsapp_cloneapp/selectedcontactwhatsapp.dart';
import 'package:watsapp_cloneapp/whatsappcallpage.dart';
import 'package:watsapp_cloneapp/whatsappchatpage.dart';
import 'package:watsapp_cloneapp/whatsappcommunitypage.dart';
import 'package:watsapp_cloneapp/whatsappststuspage.dart';

class WhatsAppUiPage extends StatefulWidget {
  const WhatsAppUiPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppUiPage> createState() => _WhatsAppUiPageState();
}

class _WhatsAppUiPageState extends State<WhatsAppUiPage> {
  int selectedindex = 0;
  List page = [
    WhatsappCommunitypage(),
    WhatsAppChatpage(),
    WhatsappStatuspage(),
    Whatsappcallpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => whatupcontactlist(),
            ));
          },
          child: Icon(Icons.chat),
          backgroundColor: Color.fromRGBO(7, 77, 66, 100),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(7, 77, 66, 100),
          title: Text("WhatsApp",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10, top: 10),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10, top: 10),
              child: Icon(Icons.search_rounded),
            ),
            PopupMenuButton(
              padding: EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "New Group",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "New broadcast",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Linked devices",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Starred messages",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "Payments",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text(
                    "Settings",
                    style: (TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
              ],
            ),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            WhatsappCommunitypage(),
            WhatsAppChatpage(),
            WhatsappStatuspage(),
            Whatsappcallpage(),
          ],
        ),
      ),
    );
  }
}
