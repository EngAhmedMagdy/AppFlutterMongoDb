// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

import 'DataService/CustomerModel.dart';
import 'DataService/MovieModel.dart';
import 'dbHelper/mongodbAPI.dart';





class MoviesWidget extends StatefulWidget {
  const MoviesWidget({super.key});

  @override
  State<MoviesWidget> createState() => _MoviesWidget();
}

class _MoviesWidget extends State<MoviesWidget> {
  final Future _calculation = MongoDatabase.ReadMovies();

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.displayMedium!,
      textAlign: TextAlign.center,
      child: FutureBuilder(
        future: _calculation, // a previously-obtained Future<String> or null
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return displayCard(Movie.fromJson(snapshot.data[index]));
                });
          } else if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
            ];
          } else {
            children = const <Widget>[
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Awaiting result...'),
              ),
            ];
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          );
        },
      ),
    );
  }

  Widget displayCard(Movie cc) {
    return Card(
      color: Colors.amber[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('${cc.plot}', style: TextStyle(fontSize: 12.0)),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
