import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100)),
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('assets/images/profil-image.png'),
                      fit: BoxFit.cover)),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            onPressed: null),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _title(),
            _content()
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 20, fontFamily: "Viga"),
      ),
    );
  }

  Widget _content() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person,
              size: 20,
              color: Color(0xFFff6f00),
            ),
            title: Text("Velloceni",
                style: TextStyle(fontSize: 15, fontFamily: "Sriracha")),
          ),
          ListTile(
            leading: Icon(
              Icons.mail,
              size: 20,
              color: Color(0xFFff6f00),
            ),
            title: Text("velloceni@gmail.com",
                style: TextStyle(fontSize: 15, fontFamily: "Sriracha")),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              size: 20,
              color: Color(0xFFff6f00),
            ),
            title: Text("0812223454535",
                style: TextStyle(fontSize: 15, fontFamily: "Sriracha")),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              size: 20,
              color: Color(0xFFff6f00),
            ),
            title: Text("Kebumen",
                style: TextStyle(fontSize: 15, fontFamily: "Sriracha")),
          ),
        ],
      ),
    );
  }


  
}
