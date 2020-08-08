import 'package:efisiensiku_apps/component/settings.dart';
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
                            onPressed: () {
                              _editProfile();
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Settings()));
                            }),
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

  Future _editProfile() {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.grey[300],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        isDismissible: false,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView(
              physics: ScrollPhysics(),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(),
                    child: Form(
                      child: Column(
                        children: [
                          _nama(),
                          SizedBox(
                            height: 10,
                          ),
                          _email(),
                          SizedBox(
                            height: 10,
                          ),
                          _phone(),
                          SizedBox(
                            height: 10,
                          ),
                          _asal(),
                          SizedBox(
                            height: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  onPressed: () {},
                                  color: Colors.grey[400],
                                  child: Center(
                                    child: Text(
                                      "batal".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context)
                                                .textScaleFactor +
                                            18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
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
                                        "Simpan".toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .textScaleFactor +
                                              18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          );
        });
  }

  Widget _nama() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Nama",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person)),
        ));
  }

  Widget _email() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Email',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.mail)),
        ));
  }

  Widget _phone() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hintText: 'No Hp',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.phone)),
        ));
  }

  Widget _asal() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Asal',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.location_on)),
        ));
  }
}
