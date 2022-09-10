import 'package:appbar_large/models/post.dart';
import 'package:appbar_large/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:appbar_large/views/card_page.dart';

class ListEvents extends StatefulWidget {
  const ListEvents({Key? key}) : super(key: key);

  @override
  _ListEventsState createState() => _ListEventsState();
}

class _ListEventsState extends State<ListEvents> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const minPrice = 60;
    const maxPrice = 240;
    return Visibility(
      visible: isLoaded,
      child: ListView.builder(
        itemCount: posts?.length,
        itemBuilder: (context, index) {
          return RaisedButton(
            color: Colors.white,
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 450,
                maxWidth: 450,
                minHeight: 70,
              ),
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  constraints: const BoxConstraints(
                    minWidth: 70,
                    minHeight: 150,
                    maxWidth: 400,
                    maxHeight: 220,
                  ),
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(posts![index].cover),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          bottom: 5.0,
                          left: 5.0,
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 250,
                            ),
                            child: Text(
                              minPrice.toString() +
                                  '- \u0024' +
                                  maxPrice.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Text(posts![index].title),
              ]),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CardScreen(posts![index])),
              );
            },
          );
        },
      ),
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
