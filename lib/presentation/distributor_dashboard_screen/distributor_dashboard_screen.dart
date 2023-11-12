import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green, // Set primary color to green
        highlightColor: Colors.lightBlue, // Set secondary color to light blue
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DistributorDashboardScreen(),
    );
  }
}

class DistributorDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Chakula link Donor',
          style: TextStyle(
          fontSize: 20,
          color: Colors.black45,
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlue.shade100, Colors.lightBlue.shade50],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    'Total Donations: 1000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: <Widget>[
                Card(
                  color: Colors.white, // Header color
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Number of Donors',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                                '100',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0), // Add space between cards
                Card(
                  color: Colors.white, // Header color
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Number of Distributors',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0), // Add space between cards
                Card(
                  color: Colors.white, // Header color
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Number of Beneficiaries',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      tabs: [
                        Tab(text: 'Donation List'),
                        Tab(text: 'In Transit'),
                        Tab(text: 'Delivered Items'),
                      ],
                      indicatorColor: Colors.green, // Set background color of selected tab
                      labelColor: Colors.green, // Set text color of selected tab
                      unselectedLabelColor: Colors.black,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildOrdersList('Placed Orders'),
                          _buildOrdersList('Orders in Transit'),
                          _buildOrdersList('Delivered Orders'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue, // Change this color to set selected item color
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Entity Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_sharp),
            label: 'Order Management',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildOrdersList(String status) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Donation ${index + 1} - $status'),
          subtitle: Text('${index + 1 * 1} bags of maize '),
        );
      },
    );
  }
}
