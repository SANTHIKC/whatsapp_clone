import 'package:flutter/material.dart';

class WhatsappStatuspage extends StatefulWidget {
  const WhatsappStatuspage({Key? key}) : super(key: key);

  @override
  State<WhatsappStatuspage> createState() => _WhatsappStatuspageState();
}

class _WhatsappStatuspageState extends State<WhatsappStatuspage> {

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        children: [
          ListTile(
            leading:  CircleAvatar(
              backgroundImage: NetworkImage(""),
              radius: 25,
              child: Icon(Icons.add_circle_outline_sharp),
            ),
            title: Text("My Status"),
            subtitle:Text("Tap to add status update"),
          ),

          Row(
            children: [
              Text("Recent Updated"),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7maG_e4yixSnlAz5L4B0khkNgG9O2rD3_Kg&usqp=CAU"),
                          radius: 25,
                        ),
                        title: Text("name2"),
                        subtitle:Text("---"),
                      ),

                    ],
                  );

                }
            ),
          ),


        ],
      ),
    );
  }
}
