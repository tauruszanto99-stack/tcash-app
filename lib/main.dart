import 'package:flutter/material.dart';

void main() => runApp(TcashApp());

class TcashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tcash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double balance = 1500.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tcash Wallet'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Wallet Balance', style: TextStyle(fontSize: 16)),
                trailing: Text('LRD ${balance.toStringAsFixed(2)}', 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              onPressed: (){setState((){balance += 500;});}, 
              child: Text('Cash In LRD 500')
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              onPressed: (){setState((){balance -= 100;});}, 
              child: Text('Send LRD 100')
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
              onPressed: (){}, 
              child: Text('Transaction History')
            ),
          ],
        ),
      ),
    );
  }
}
