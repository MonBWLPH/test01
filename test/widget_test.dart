import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Color(0xFF0F6A33),
              onPressed: () {
                // โค้ดเมื่อกดปุ่มปลูกศร
              },
            ),
            title: Text('E-Voucher'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'My E-Voucher'),
              ],
              indicatorColor: Color(0xFF0F6A33),
              labelColor: Color(0xFF0F6A33),
              unselectedLabelColor: Colors.grey,
            ),
          ),
          
                    bottomNavigationBar: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        Icon(Icons.search),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'ค้นหา',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    // โค้ดเมื่อกดปุ่ม Icons.filter_list
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('ไม่มีอะไรเลย')),
              Center(child: Text('ไม่มีเหมือนกัน')),
            ],
            
            
          ),

        ),
      ),
    ),
  );
}
