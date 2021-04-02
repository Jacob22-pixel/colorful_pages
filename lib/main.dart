
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: PageOne(),
    ),
  );
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Strona 1",
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Purple"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.purple),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("Blue"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.blue),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("yellow"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(Colors.yellow),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  final Color value;
  PageTwo(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2", textAlign: TextAlign.center),
        backgroundColor: value,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
            TextButton(
              child: Text("Go to page  3", textAlign: TextAlign.center),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context, 6);
              },
            ),
          ],
        ),
      ),
    );
  }
}