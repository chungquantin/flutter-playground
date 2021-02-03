import 'package:flutter/material.dart';
import 'package:tutorials/screen/game_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  Widget getBody() {
    switch (_selectedIndex) {
      case 0:
        return MyHomePage();
      case 1:
        return GameScreen();
      default:
        return MyHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              this._selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.yellow[800],
                ),
                // ignore: deprecated_member_use
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.yellow[800]),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.gamepad,
                  color: Colors.grey,
                ),
                // ignore: deprecated_member_use
                title: Text(
                  "Games",
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        ),
        body: this.getBody());
  }
}

void customPageTransition(BuildContext context, dynamic page) {
  Navigator.of(context).push(
      PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
    return page;
  }));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Image(
              image: NetworkImage(
                  "https://icons-for-free.com/iconfiles/png/512/go+pikachu+play+pokemon+icon-1320186973527720987.png"),
              height: 100,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("PokeStan",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "All Pokemon",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
