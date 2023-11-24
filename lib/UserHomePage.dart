import 'package:demoapp/apptheme.dart';
import 'package:flutter/material.dart';

import 'Utilities.dart';

class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key, required this.title});
  final String title;

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  dynamic text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appbarbgcolor,
        title: Text(
          AppText.appname,
          style: TextStyle(color: AppTheme.textcolor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(75),
                      bottomLeft: Radius.circular(75))),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //***************Img column***********************
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Image.network(
                              "https://cdn.pixabay.com/photo/2016/01/08/20/02/michelle-obama-1129160_1280.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Center(
                            child: Text(
                              "Tanya Singh",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Center(
                            child: Text(
                              "Advocate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  //*****************Message column*************
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                              BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 10,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Welcome To ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Advocate',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue)),
                                          TextSpan(text: ' App'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Card(
                                    child: Text("Latest news",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                    width: 200,
                                    child: Card(
                                      child: Text(
                                          "Alert the crime Satark reho Crime se oe use kerne se  ndewdew fedjfdj fdf jd ffefejf effdfddvdnv  j jb jcbsj ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //WhatsApp logo and link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(75),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: const Center(
                        child: Text("img"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [Text("link")],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            //facebook logo and link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(75),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: const Center(
                        child: Text("img"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [Text("link")],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            //Twitter logo and link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(75),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 10,
                              spreadRadius: 1.0,
                            ),
                          ]),
                      child: Center(
                        child: Text("img"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [Text("link")],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //Lets go button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text("Let's -> go")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//Page structure here............

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appbarbgcolor,
        title: Text(
          AppText.appname,
          style: TextStyle(color: AppTheme.textcolor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(

                decoration: BoxDecoration(
                    color: Colors.yellow.shade300,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75),bottomLeft: Radius.circular(75))
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           CircleAvatar(
                             radius: 50,
                           )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Titel",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),

            //Message
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 10,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.transparent,
                        offset: Offset(-2.0, -2.0),
                        blurRadius: 10,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Card(
                        child: Text(
                          "Latest News",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                              width: 250,
                              child: Card(
                                child: Text(
                                  "nhsby hdsbc cdsuc wc dubcd cdjcs xsaxksajhsgcs ddskjcgdsh dsc sd dsjcgvs cdsjcasv "
                                  "njbsbx m jdc d ejdend edewde jdijccbhdch jcndcdjicjd aibgchgd djdcjbducgdb ddbcdichd dbcdhucdb bugcdo ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Whatsapp
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/05/22/11/38/whatsapp-6273368_1280.png"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [Text("Whatsapp")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //facebook
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/05/22/11/38/whatsapp-6273368_1280.png"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [Text("Whatsapp")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Twitter
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2021/05/22/11/38/whatsapp-6273368_1280.png"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [Text("Whatsapp")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //Button
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        //border: Border.all(color: Colors.white),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                        ],

                      ),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text("Let's -> go")),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
