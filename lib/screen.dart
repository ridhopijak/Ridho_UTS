import 'package:flutter/material.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Inbox');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Outbox');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Spam');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Forums');
              },
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Promos');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Abdul Holik",
    "Om Yono",
    "Pakde Rizky",
    "Pak Moksen",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Inbox',
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.grey,
        ),
        drawer: DrawerWidget(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(
                          "2h",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text('' + isi[index]),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + title[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Outbox'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}

class Spam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spam'),
        ),
        body: Column(children: [
          Text("Nama: Ridho Pijak Imana"),
          Text("Email: ridhopjk12@gmail.com")
        ]));
  }
}

class Forums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forums'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Musik (Bahasa Yunani: μουσική, mousikê).Musik terdiri dari beberapa unsur, yaitu melodi, harmoni, ritme, dan timbre.Musik termasuk sejenis fenomena intuisi, untuk mencipta, memperbaiki, dan mempersembahkannya adalah suatu bentuk seni. Musik adalah sebuah fenomena unik yang dihasilkan oleh beberapa alat musik. Namun seni musik tidak hanya sebatas bunyi/suara yang dihasilkan dari alat musik, apa pun yang bisa menghasilkan bunyi/suara itu bisa dianggap sebagai musik istilahnya disebut dengan musik alam, bahkan suara langkah kaki manusia yang sedang berjalan, suara desiran angin, suara hantaman ombak itu sudah bisa dianggap musik walaupun tidak ada unsur kesengajaan dari perbuatan makhluk.', overflow: TextOverflow.clip, style: TextStyle(fontSize: 18, color: Colors.black), textAlign: TextAlign.start),
          ),
        ],
      ),
    );
  }
}

class Promos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Promos'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto2.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto3.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'assets/foto4.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
