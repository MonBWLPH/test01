import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: DefaultTabController(
        length: 2, // กำหนดจำนวน tabs
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255), //กำหนดสีพื้นหลัง

          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 30,), //ไอคอน
              color: Color(0xFF0F6A33), //สีไอคอน
              onPressed: () {
                // โค้ดเมื่อกดปุ่มปลูกศร
              },
            ),
            
            title: 
              Text('E-Voucher'),


            bottom: TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'My E-Voucher'),
              ],
              indicatorColor: Color(0xFF0F6A33), //สีแท็บที่เลือก
              labelColor: Color(0xFF0F6A33), //สีตัวอักษรที่เลือก
              unselectedLabelColor: Color(0xFF9E9E9E), // สีอักษรที่ไม่ถูกเลือก
              indicatorSize: TabBarIndicatorSize.tab, // กำหนดให้มีความยาวเต็มช่อง

            ),
            
          ),

          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              // โค้ดที่จะทำเมื่อแตะที่ช่องสี่เหลี่ยม
                            },
                            child: Container(
                              height: 35.0,
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF9E9E9E)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Color(0xFF9E9E9E),),
                                  SizedBox(width: 8.0),
                                  
                                  Text('ค้นหา',
                                  style: TextStyle(
                                    color: Color(0xFF9E9E9E), // กำหนดสีของข้อความ
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                        
                        SizedBox(width:5.0), // ระยะห่างระหว่างแท็บค้นหากับปุ่ม Icons.filter_list
                        
                        IconButton(
                          icon: Icon(Icons.filter_list, size: 45.0, color: Color(0xFF0F6A33),),
                          onPressed: () {
                            // โค้ดเมื่อกดปุ่ม Icons.filter_list
                          },
                        ),
                      ],
                    ),
                  ),
                  // ตัวอย่างวิดเจ็ตที่คุณอาจเพิ่มเติมได้
                ],
              ),

              
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        // โค้ดที่จะทำเมื่อแตะที่ช่องสี่เหลี่ยมหรือปุ่ม Icons.filter_list
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(width: 8.0),
                                  Text('ค้นหา'),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.filter_list),
                            onPressed: () {
                              // โค้ดเมื่อกดปุ่ม Icons.filter_list
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ตัวอย่างวิดเจ็ตที่คุณอาจเพิ่มเติมได้
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
