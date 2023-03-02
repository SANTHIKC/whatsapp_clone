import 'package:flutter/material.dart';
import 'package:watsapp_cloneapp/searcff.dart';
import 'package:watsapp_cloneapp/searcff.dart';
import 'package:watsapp_cloneapp/utilities.dart';
import 'detailsofmap.dart';
class Whatsappcallpage extends StatefulWidget {
  const Whatsappcallpage({Key? key}) : super(key: key);

  @override
  State<Whatsappcallpage> createState() => _WhatsappcallpageState();
}

class _WhatsappcallpageState extends State<Whatsappcallpage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Searchbb(),));
    },child: Icon(Icons.phone),),


      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading:  CircleAvatar(
                    backgroundColor: Utilities.backgcolor,
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
                              trailing: Icon(Icons.call),
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
