import 'package:flutter/material.dart';
import 'package:walletui/utils/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            // cards
            Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(),
                    MyCard(),
                    MyCard(),
                    MyCard(),
                  ],
                ))
            // 3 buttons

            // column
          ],
        ),
      ),
    );
  }
}
