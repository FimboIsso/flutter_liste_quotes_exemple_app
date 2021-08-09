import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() =>runApp(MaterialApp(
  home:QouteListe(),
));

class QouteListe extends StatefulWidget {
  const QouteListe({Key? key}) : super(key: key);

  @override
  _QouteListeState createState() => _QouteListeState();
}

class _QouteListeState extends State<QouteListe> {
  List<Quote> quotes = [
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Justin Fimbo',text: 'Comment vas Jesus dans ta vie'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Gedeon Flanvier',text: 'Maisha Bila Yesu Ni Bure'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
    Quote(author: 'Sam Luwawa',text: 'And life goes on'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: quotes.map((quote) =>   QuoteCard(
            quote: quote,
          deleteFunction: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}



