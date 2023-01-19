import 'package:flutter/material.dart';
import 'package:study_flutter_01_toonflix/widgets/buttons.dart';
import 'package:study_flutter_01_toonflix/widgets/currency-card.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFFF4EDDB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click Counter',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30),
            ),
            IconButton(
              iconSize: 40,
              onPressed: onClicked,
              icon: const Icon(
                Icons.add_box_rounded,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build_(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5,194,482',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyButton01(
                        text: 'Transfer',
                        bgColor: Colors.amber,
                        textColor: Colors.black,
                      ),
                      MyButton01(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    order: 0,
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6,428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  const CurrencyCard(
                    order: 1,
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9,654',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                  ),
                  const CurrencyCard(
                    order: 2,
                    name: 'Dollar',
                    code: 'USD',
                    amount: '3,328',
                    icon: Icons.monetization_on_outlined,
                    isInverted: false,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
