import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/data_list.dart';

class SubCHomeUI extends StatelessWidget {
  SubCHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            'สายด่วน\nธนาคาร',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 220,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              bankImagesForCarouselSlider.first,
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
                    children: bankDataList.map((item) {
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
