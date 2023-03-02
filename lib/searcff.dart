import 'package:flutter/material.dart';
class Searchbb extends StatefulWidget {
  const Searchbb({Key? key}) : super(key: key);

  @override
  State<Searchbb> createState() => _SearchbbState();
}

class _SearchbbState extends State<Searchbb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 77, 66, 100),
        title: Column(
          children: [
            Text("Select contact",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            Padding(
              padding: const EdgeInsets.only(right:30),
              child: Text("100 conacts",style: TextStyle(fontSize: 13),),
            )
          ],
        ),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            padding: EdgeInsets.symmetric(vertical: 20),
            iconSize: 28,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Invite a friend",
                  style: (TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Contacts",
                  style: (TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Text(
                  "Refresh",
                  style: (TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Text(
                  "Help",
                  style: (TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              ),

            ],
          ),
        ],
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading:  CircleAvatar(
                radius: 25,
                child: Icon(Icons.link_outlined),
              ),
              title: Text("New call link"),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading:  CircleAvatar(
                backgroundImage: NetworkImage(""),
                radius: 25,
                child: Icon(Icons.groups),
              ),
              title: Text("New group call"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading:  CircleAvatar(
                backgroundImage: NetworkImage(""),
                radius: 25,
                child: Icon(Icons.group_add),
              ),
              title: Text("New contact"),
              trailing: Icon(Icons.qr_code),

            ),
          ),


          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(""),
                          radius: 25,
                        ),
                        title: Text("name2"),
                        subtitle:Text("message yourself"),
                        trailing:
                            Icon(Icons.call),

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
