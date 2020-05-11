import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {

  String urlImage = 'https://static.toiimg.com/photo/72975551.cms';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 8, 24, 8 ),
      width: 200,
      height: 270,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  urlImage,
                  width: MediaQuery.of(context).size.width/1.7,
                  height: MediaQuery.of(context).size.height/2,
                  fit: BoxFit.cover,
              ),
            )
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 25
                  )
                ],
                borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Cosmos',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'By David Evangelista',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500]
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: EdgeInsets.only(top : 72, right: 16),
                        child: Icon(Icons.arrow_forward_ios),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}