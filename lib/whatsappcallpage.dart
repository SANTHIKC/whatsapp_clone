import 'package:flutter/material.dart';

class Whatsappcallpage extends StatefulWidget {
  const Whatsappcallpage({Key? key}) : super(key: key);

  @override
  State<Whatsappcallpage> createState() => _WhatsappcallpageState();
}

class _WhatsappcallpageState extends State<Whatsappcallpage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ListTile(
            leading:  CircleAvatar(
              backgroundImage: NetworkImage(""),
              radius: 25,
              child: Icon(Icons.link_outlined),
            ),
            title: Text("Create call link"),
            subtitle:Text("share a link for your Whatsapp call"),
          ),

          Row(
            children: [
              Text("Recent "),
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
                        subtitle:Text("yesterday 1.13 pm"),
                        trailing: Icon(Icons.call),
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
