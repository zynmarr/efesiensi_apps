import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFff6f00),
                            Color(0xFFff6d00),
                            Color(0xFFff9800),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mau Ke Mana ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' Booking tiket bus EFISIENSI Anda sekarang',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  _asal(),
                  _tujuan(),
                  _berangkat(),
                  _pulang(),
                  _penumpang(),
                  _button(null)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _asal() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(Icons.train, size: 20, color: Colors.black45),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Asal',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Kebumen',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/Home - 1-image.png',
            height: 30,
            width: 30,
          )
        ],
      ),
    );
  }

  bool pp = false;

  Widget _tujuan() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(Icons.train, size: 20, color: Colors.black45),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tujuan',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Yokyakarta',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Pulang-Pergi?", style: TextStyle(color: Colors.black45)),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: Switch(
                  value: pp,
                  onChanged: (bool newValue) {
                    setState(() {
                      pp = newValue;
                      print(pp);
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _berangkat() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(Icons.web_asset, size: 20, color: Colors.black45),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Berangkat',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Jumat, 21 Desember 2018',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 18,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _pulang() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(Icons.web_asset, size: 20, color: Colors.black45),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pulang',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Minggu, 23 Desember 2018',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _penumpang() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Icon(Icons.person, size: 20, color: Colors.black45),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Penumpang',
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '1 Dewasa',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(var onPressed) {
    return Container(
      height: 50,
      width: 210,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: RaisedButton(
        splashColor: Color(0xFFff9800),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: const EdgeInsets.all(0.0),
        onPressed: () {
          onPressed;
        },
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
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: Colors.transparent
            ),
            child: Center(
              child: Text(
                "Cari Tiket",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).textScaleFactor + 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
