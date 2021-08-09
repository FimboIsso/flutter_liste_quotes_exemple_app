import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback deleteFunction;


  QuoteCard({required this.quote,required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                  quote.text,
                  style: TextStyle(
                      fontSize:18.0,
                      color: Colors.grey[600]
                  )
              ),
              SizedBox(height: 1.0,),
              Text(
                  quote.author,
                  style: TextStyle(
                      fontSize:14.0,
                      color: Colors.grey[800]
                  )
              ),
              SizedBox(height: 2,),
              FlatButton.icon(
                  onPressed: deleteFunction,
                  label: Text('Delete'),
                  icon: Icon(Icons.delete),
              )
            ],
          ),
        )
    );
  }
}
