import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Admin',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Manage your club today!',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/admin.jpg'),
              radius: 20,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPerformanceAnalysis(),
            SizedBox(height: 20),
            _buildSectionHeader('All products', onViewAll: () {}),
            _buildHorizontalList(),
            SizedBox(height: 20),
            _buildSectionHeader('All sections', onViewAll: () {}),
            _buildHorizontalList(),
            SizedBox(height: 20),
            _buildSectionHeader('All team', onViewAll: () {}),
            _buildHorizontalList(),
            SizedBox(height: 20),
            _buildSectionHeader('All championships', onViewAll: () {}),
            _buildHorizontalList(),
            SizedBox(height: 20),
            _buildPaymentsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildPerformanceAnalysis() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Performance Analysis',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // Container(
          //   height: 200,
          //   child: PieChart(
          //     PieChartData(
          //       sections: [
          //         PieChartSectionData(
          //           value: 60,
          //           title: 'Trainees',
          //           color: Colors.green,
          //           radius: 50,
          //         ),
          //         PieChartSectionData(
          //           value: 25,
          //           title: 'Employees',
          //           color: Colors.red,
          //           radius: 50,
          //         ),
          //         PieChartSectionData(
          //           value: 15,
          //           title: 'Coaches',
          //           color: Colors.yellow,
          //           radius: 50,
          //         ),
          //       ],
          //       sectionsSpace: 2,
          //       centerSpaceRadius: 40,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, {required VoidCallback onViewAll}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: onViewAll,
          child: Text(
            'Show all',
            style: TextStyle(color: Colors.yellowAccent, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/product.jpg',
                  height: 60,
                ),
                SizedBox(height: 8),
                Text(
                  'Item $index',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPaymentsSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'All payments from trainees',
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            '#ID  #Subscription  #Money',
            style: TextStyle(color: Colors.red, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
