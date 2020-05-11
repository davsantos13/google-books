import 'package:books/book_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<String> categorias = [
    'Matemática',
    'Física',
    'História',
    'Ciências',
    'Química',
    'Ed. Física',
    'Português'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 42),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    'Browse',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 8.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorias.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12, left: 8),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = i;
                        });
                      },
                      child: Chip(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        backgroundColor: _selectedIndex == i
                            ? Colors.blueAccent
                            : Colors.grey[300],
                        label: Text(
                          categorias[i],
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedIndex == i
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: ListView.builder(
                itemCount: categorias.length,
                //shrinkWrap: true,
                itemBuilder: (_, index) {
                  return BookItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
