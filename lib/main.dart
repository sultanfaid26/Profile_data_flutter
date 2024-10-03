import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(), //halaman awal ketika program dijalankan
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context)
            .size
            .width, //Lebar diatur sesuai dengan lebar layar
        height: MediaQuery.of(context)
            .size
            .height, //Tinggi diatur sesuai dengan tinggi layar
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromARGB(200, 122, 28, 172),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/fotoprofil.jpg'),
                      ),
                      Text(
                        "Sultan Faid Amani",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text("Bogor City, Indonesia",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, color: Color.fromARGB(248, 255, 255, 255))),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        },
                        child: Text('See More',
                                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
