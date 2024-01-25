import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'elevation 0'},
  {'elevation': 1.0, 'label': 'elevation 1'},
  {'elevation': 2.0, 'label': 'elevation 2'},
  {'elevation': 3.0, 'label': 'elevation 3'},
  {'elevation': 4.0, 'label': 'elevation 4'},
  {'elevation': 5.0, 'label': 'elevation 5'},
];

class CardScreens extends StatelessWidget {
  static const name = 'cards_screen';

  const CardScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screens"),
      ),
      body: const _CardsVIew(),
    );
  }
}

class _CardsVIew extends StatelessWidget {
  const _CardsVIew();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map( (card) => _CardType1(label: card['label'], elevation: card['elevation']) ),
          ...cards.map( (card) => _CardType2(label: card['label'], elevation: card['elevation']) ),
        ],
      ),
    );
  }
}



class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType1({ 
    required this.label, 
    required this.elevation
    });

  
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined,),
                onPressed: () {},
              )
            ),


            Align(
              alignment: Alignment.topLeft,
              child: Text( label),
            )      
         
          ],

        ),
        ),
    );
  }
}


class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  
  const _CardType2({ 
    required this.label, 
    required this.elevation
    });

  
  
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Card(
      shape:RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        )
      ) ,
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined,),
                onPressed: () {},
              )
            ),


            Align(
              alignment: Alignment.topLeft,
              child: Text( "$label - outline" ),
            )      

          ],

        ),
        ),
    );
  }
}
