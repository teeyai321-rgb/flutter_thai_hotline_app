import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';
import 'package:flutter_thai_hotline_app/models/data_list.dart';
import 'package:flutter_thai_hotline_app/views/emg_ui.dart';
import 'package:flutter_thai_hotline_app/views/bank_ui.dart';
import 'package:flutter_thai_hotline_app/views/pub_ui.dart';

class SubAHomeUI extends StatefulWidget {
  SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

class _SubAHomeUIState extends State<SubAHomeUI> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 82,
        centerTitle: true,
        backgroundColor: Color(0xFFD9D9D9),
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const AboutUI(),
                  ),
                );
              },
              icon: Icon(Icons.info_outline),
            ),
          ),
        ],
      ),
      body: switch (_selectedIndex) {
        0 => SubAPageUI(),
        1 => SubBHomeUI(),
        2 => SubCHomeUI(),
        _ => SubDHomeUI(),
      },
      bottomNavigationBar: SizedBox(
        height: 86,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFFCF9FE),
          selectedItemColor: Color(0xFF222222),
          unselectedItemColor: Color(0xFF888888),
          selectedFontSize: 13,
          unselectedFontSize: 12,
          iconSize: 27,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus),
              activeIcon: Icon(
                Icons.directions_bus,
                color: Colors.blue,
                size: 32,
              ),
              label: 'การเดินทาง',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              activeIcon: Icon(
                Icons.local_hospital,
                color: Colors.blue,
                size: 32,
              ),
              label: 'เหตุฉุกเฉิน',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              activeIcon: Icon(
                Icons.account_balance,
                color: Colors.blue,
                size: 32,
              ),
              label: 'ธนาคาร',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.electrical_services),
              activeIcon: Icon(
                Icons.electrical_services,
                color: Colors.blue,
                size: 32,
              ),
              label: 'สาธารณูปโภค',
            ),
          ],
        ),
      ),
    );
  }
}

class SubAPageUI extends StatelessWidget {
  SubAPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            'สายด่วน\nการเดินทาง',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 220,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              travelImagesForCarouselSlider.first,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 12),
              Expanded(
                child: ClipRect(
                  child: ListView(
                    clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.only(bottom: 12),
                    children: travelDataList.map((item) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xFFD6D6D6)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          minVerticalPadding: 24,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          leading: Image.asset(
                            item.image,
                            width: 78,
                            height: 78,
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            item.description,
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.call, size: 30),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
