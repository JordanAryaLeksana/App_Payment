import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 147, 225),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 21, 90, 147),
              ),
              child: const Center(
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "Rp",
              style: TextStyle(
                color: const Color.fromARGB(255, 68, 68, 68),
                fontSize: 20,
                
                fontWeight: FontWeight.values[4],
              ),
            ),
            const SizedBox(width: 5),
            Text(
              "200.000",
              style: TextStyle(
                color: const Color.fromARGB(255, 254, 252, 252),
                fontSize: 30,
                fontWeight: FontWeight.values[4], 
              ),
            ),
             const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
