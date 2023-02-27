import 'package:flutter/material.dart';

class WhatsAppChatpage extends StatefulWidget {
  const WhatsAppChatpage({Key? key}) : super(key: key);

  @override
  State<WhatsAppChatpage> createState() => _WhatsAppChatpageState();
}

class _WhatsAppChatpageState extends State<WhatsAppChatpage> {
  @override
  Widget build(BuildContext context) {
    return 
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7maG_e4yixSnlAz5L4B0khkNgG9O2rD3_Kg&usqp=CAU"),
                  radius: 25,
                ),
                trailing: Text("Yesterday"),
                title: Text("name"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all),
                    Text("-----"),
                  ],
                ),
              );
            }
          ),
        );

  }
}

