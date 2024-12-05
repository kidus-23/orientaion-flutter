import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                OrientLayoutIcon(),
                Divider(thickness: 4.0, color: Colors.black54),
                OrientLayout(),
                Divider(thickness: 4.0, color: Colors.black54),
                Grid(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrientLayoutIcon extends StatelessWidget {
  const OrientLayoutIcon({super.key});
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.savings,
                size: 100.0,
              ),
            ],
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.savings,
                size: 100.0,
              ),
              Icon(
                Icons.deck,
                size: 100.0,
              ),
            ],
          );
  }
}

class OrientLayout extends StatelessWidget {
  const OrientLayout({super.key});
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
        ? Container(
            alignment: Alignment.center,
            color: Colors.blueGrey,
            height: 200.0,
            width: 400.0,
            child: const Text('Portrait'),
          )
        : Container(
            alignment: Alignment.center,
            color: Colors.red,
            height: 200.0,
            width: 400.0,
            child: const Text('Landscape'),
          );
  }
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientaion = MediaQuery.of(context).orientation;
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: orientaion == Orientation.portrait ? 2 : 4,
      childAspectRatio: 2.0,
      children: List.generate(8, (int index) {
        return Text(
          'Grid $index',
          textAlign: TextAlign.center,
        );
      }),
    );
  }
}
