import 'package:flutter/material.dart';
import 'package:appbar_large/widgets/list_events.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.location_on, size: 20.0),
            tooltip: 'Location',
            onPressed: () {},
          ),
          title: Text(
            "New York, USA",
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.underline,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle, size: 30.0),
              tooltip: 'Perfil',
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey[900],
              child: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: TabBar(isScrollable: true, tabs: [
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      text: "Home",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      text: "Settings",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      text: "Personal",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      text: "Personal",
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Container(
                  child: Center(
                    child: const ListEvents(),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Segunda Pantalla"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Tercera Pantalla"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Cuarta Pantalla"),
                  ),
                ),
              ],
            ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Eventos"),
            BottomNavigationBarItem(icon: Icon(Icons.place), label: "Lugares")
          ],
        ),
      ),
    );
  }
}
