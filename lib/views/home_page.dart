import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:appbar_large/widgets/list_events.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.location_on, size: 20.0),
            tooltip: 'Location',
            onPressed: () {},
          ),
          title: DropdownButton(
              style: TextStyle(color: Colors.white),
              focusColor: Colors.grey[900],
              iconEnabledColor: Colors.white,
              dropdownColor: Colors.grey[800],
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Monterrey"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Guadalajara"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("CDMX"),
                  value: 3,
                )
              ],
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
              hint: Text("Select item")),
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
                        Maki.art_gallery,
                        color: Colors.white,
                      ),
                      text: "Galerias",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.family_restroom,
                        color: Colors.white,
                      ),
                      text: "Familiar",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.eco,
                        color: Colors.white,
                      ),
                      text: "Ecoturismo",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        FontAwesome.shopping_bag,
                        color: Colors.white,
                      ),
                      text: "Compras",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        RpgAwesome.vase,
                        color: Colors.white,
                      ),
                      text: "Arqueologia",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        FontAwesome.map,
                        color: Colors.white,
                      ),
                      text: "Aventura",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Maki.museum,
                        color: Colors.white,
                      ),
                      text: "Museos",
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      icon: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      text: "Atractivos",
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
                Container(
                  child: Center(
                    child: Text("Quinta Pantalla"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Sexta Pantalla"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Septima Pantalla"),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text("Octava Pantalla"),
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
