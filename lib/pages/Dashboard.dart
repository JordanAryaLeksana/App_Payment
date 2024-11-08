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
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Rp",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 68, 68, 68),
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "10.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.mail_outline),
              color: Colors.white,    
              onPressed: () {
                // Tambahkan aksi ketika ikon pesan ditekan
              },
            ),
          ],
        ),
 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80), 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuBox(Icons.add, "Isi Saldo"),
                _buildMenuBox(Icons.send, "Transfer"),
                _buildMenuBox(Icons.payment, "Bayar"),
                _buildMenuBox(Icons.more_horiz, "Lainnya"),
              ],
            ),
          ),
        ),
      ),
      body: const Center(child: Text("Dashboard Content")),
    );
  }

  // Widget untuk membuat kotak menu
  Widget _buildMenuBox(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
