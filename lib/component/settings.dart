import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFFff6f00),
                  Color(0xFFff6d00),
                  Color(0xFFff9800),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PreferredSize(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, top: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white12),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context)),
                      ),
                      preferredSize:
                          Size(MediaQuery.of(context).size.width, 100)),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                      child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 260,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Notifikasi
                    InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                        ),
                        child:Text("Notifikasi"),
                      ),
                    ),
                    /// Bantuan
                    InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                        ),
                        child:Text("Bantua"),
                      ),
                    ),
                    /// Syarat dan Ketentuan
                    InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.black26, width: 1))
                        ),
                        child:Text("Syarat dan Ketentuan"),
                      ),
                    ),
                    /// Kebijakan Privasi
                    InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child:Text("Kebijakan Privasi"),
                      ),
                    ),

                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border(
                    //           bottom:
                    //               BorderSide(color: Colors.black26, width: 1))),
                    //   child: ListTile(
                    //     title: Text("Notifikasi"),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border(
                    //           bottom:
                    //               BorderSide(color: Colors.black26, width: 1))),
                    //   child: ListTile(
                    //     title: Text("Bantuan"),
                    //     onTap: () => Navigator.pop(context),
                    //   ),
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border(
                    //           bottom:
                    //               BorderSide(color: Colors.black26, width: 1))),
                    //   child: ListTile(
                    //     title: Text("Syarat dan Ketentuan"),
                    //   ),
                    // ),
                    // Container(
                    //   child: ListTile(
                    //     title: Text("Kebijakan Privasi"),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
              child: Container(
                height: 50,
                width: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {},
                  color: Colors.transparent,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFff6f00),
                          Color(0xFFff6d00),
                          Color(0xFFff9800),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "LogOut".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).textScaleFactor + 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
