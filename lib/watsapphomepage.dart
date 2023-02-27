import 'package:flutter/material.dart';
import 'package:watsapp_cloneapp/utilities.dart';

class WatsappHomepage extends StatefulWidget {
  const WatsappHomepage({Key? key}) : super(key: key);

  @override
  State<WatsappHomepage> createState() => _WatsappHomepageState();
}

class _WatsappHomepageState extends State<WatsappHomepage> {
  int selecttext =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(elevation: 0,
        backgroundColor: Color.fromRGBO(7, 77, 66, 100),
        title:Text("WhatsApp"), actions: [Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.camera_alt_outlined),
        ),Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.search),
        ),Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.more_vert),
        ),],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(color:Utilities.backgcolor),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(

                    onTap: () {
                      setState(() {
                        selecttext=3;
                      });
                    } , child: Icon(Icons.group,color: Colors.white,)),


                InkWell(onTap: () {
                  setState(() {
                    selecttext=0;
                  });
                },child: Text("Chats",style: TextStyle(color: Colors.white),)),

                InkWell(
                    onTap: () {
                      setState(() {
                        selecttext=1;
                      });
                    } ,
                    child: Text("Status",style: TextStyle(color: Colors.white))),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell( onTap: () {
                    setState(() {
                      selecttext=2;
                    });
                  } ,child: Text("Calls",style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
          selecttext == 0 ?

          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("")),color: Colors.green),
                    ),
                    title: Text("name1"),
                    subtitle:Text("---"),
                  );
                }
            ),
          ) : selecttext == 1 ?
          Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("")),color: Colors.green),
                  ),
                  title: Text("My Status"),
                  subtitle:Text("---"),
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
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("")),color: Colors.green),
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
          ):selecttext == 2 ?Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage("")),color: Colors.green),
                    ),
                    title: Text("name23"),
                    subtitle:Text("---"),
                  );
                }
            ),
          ):
          selecttext == 3 ?Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context,index) {
                  return ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage("")),color: Colors.green),
                    ),
                    title: Text("names3"),
                    subtitle:Text("---"),
                  );
                }
            ),
          ):Text(""),

        ],
      ),
    );
  }
}
