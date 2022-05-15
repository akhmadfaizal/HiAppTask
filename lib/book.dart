import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';

class BookPage extends StatefulWidget {
  BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        backgroundColor: Color(0xFF262626),
        centerTitle: true,
        title: Text('Book Now'),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How can we help you?',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(
                  height: 25,
                ),
                Text('Select Service'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 2.0, color: Colors.brown),
                    ),
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Regular Haircut'),
                                Text(
                                  '15 Minutes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  color: Colors.yellow.shade200,
                                  child: Text(
                                    'Rp 150.000',
                                    style: TextStyle(
                                      color: Colors.brown,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.keyboard_arrow_down_sharp)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Select Barber'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 2.0, color: Colors.brown),
                    ),
                  ),
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/photo.png',
                                  ),
                                  minRadius: 20,
                                  maxRadius: 25,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'John Doe',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      RatingStars(
                                        value: 3,
                                        starBuilder: (index, color) => Icon(
                                          Icons.star_sharp,
                                          color: color,
                                          size: 12.0,
                                        ),
                                        starCount: 5,
                                        starSize: 12,
                                        maxValue: 5,
                                        starSpacing: 1,
                                        maxValueVisibility: true,
                                        valueLabelVisibility: false,
                                        starOffColor: const Color(0xffe7e8ea),
                                        starColor: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.keyboard_arrow_down_sharp)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Date & Time'),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'September',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dateWidget(
                                day: 'Sun',
                                date: '28',
                                color: Colors.grey.shade200),
                            dateWidget(
                                day: 'Mon',
                                date: '29',
                                color: Colors.grey.shade200),
                            dateWidget(
                                day: 'Tue',
                                date: '30',
                                color: Colors.grey.shade200),
                            dateWidget(
                                day: 'Wed',
                                date: '31',
                                color: Colors.grey.shade200),
                            dateWidget(
                                day: 'Thu',
                                date: '1',
                                color: Colors.brown,
                                dateColor: Colors.white),
                            dateWidget(
                                day: 'Fri',
                                date: '2',
                                color: Colors.grey.shade200),
                            dateWidget(
                                day: 'Sat',
                                date: '3',
                                color: Colors.grey.shade200),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          dateList(time: '10:30 am'),
                          dateList(
                              time: '11:00 am',
                              color: Colors.brown,
                              textColor: Colors.white),
                          dateList(time: '11:30 am'),
                          dateList(time: '12:00 am'),
                          dateList(time: '12:30 am'),
                          dateList(time: '13:00 am'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Payment'),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/payment');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 2.0, color: Colors.brown),
                      ),
                    ),
                    child: Card(
                      margin: EdgeInsets.zero,
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text('Choose payment method'))
                                ],
                              ),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child:
                                        Icon(Icons.keyboard_arrow_down_sharp)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Color(0xFF262626),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: 3.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp 150,000',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/book');
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 15,
                            ),
                            shadowColor: Colors.black,
                          ),
                          child: const Text('Book Now'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container dateList({String? time, Color? color, Color? textColor}) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(8.0),
      child: Text(
        time!,
        style: TextStyle(color: textColor ?? Colors.black),
      ),
    );
  }

  Widget dateWidget(
      {String? day, String? date, Color? color, Color? dateColor}) {
    return Column(
      children: [
        Text(day!),
        SizedBox(height: 5),
        Container(
          width: 30.0,
          height: 30.0,
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Text(
            date!,
            style: TextStyle(fontSize: 12, color: dateColor ?? Colors.black),
          ),
        ),
      ],
    );
  }
}
