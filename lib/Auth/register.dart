import 'package:efisiensiku_apps/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var fullname, email, phone;

  bool autoValidate = false;

  final _formKey = GlobalKey<FormState>();

  check() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(fullname);
      print(email);
      print(phone);
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFFff6f00),
                              Color(0xFFff6d00),
                              Color(0xFFff9800),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.ioxhost,
                                  size: 80.0,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                ),
                                Text(
                                  'Efisiensiku'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 30, bottom: 20),
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.amberAccent,
                      // color: Colors.blue,
                      padding: EdgeInsets.only(left: 30, right: 30, top: 50),
                      child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            autovalidate: autoValidate,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  onSaved: (val) => fullname = val,
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'FullName is empty';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Fullname',
                                    prefixIcon: Icon(
                                      FontAwesomeIcons.userAlt,
                                      size: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  onSaved: (val) => email = val,
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'Email is empty';
                                    } else if (!RegExp('@').hasMatch(val)) {
                                      return 'Email not valid';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(
                                      FontAwesomeIcons.solidEnvelope,
                                      size: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  onSaved: (val) => phone = val,
                                  validator: (val) {
                                    if (val.isEmpty) {
                                      return 'Phone Number is empty';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    prefixIcon: Icon(
                                      FontAwesomeIcons.phone,
                                      size: 20,
                                    ),
                                    prefixText: "+62 ",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  height: 50,
                                  width: 210,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: RaisedButton(
                                    splashColor: Color(0xFFff9800),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    padding: const EdgeInsets.all(0.0),
                                    onPressed: () {
                                      check();
                                    },
                                    color: Colors.transparent,
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
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
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Register".toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .textScaleFactor +
                                                  20,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already a member?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Viga',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
