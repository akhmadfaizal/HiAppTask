import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        backgroundColor: Color(0xFF262626),
        centerTitle: true,
        title: Text('Antrian'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/photo.png',
                  ),
                  minRadius: 20,
                  maxRadius: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      RatingStars(
                        value: 4,
                        starBuilder: (index, color) => Icon(
                          Icons.star_sharp,
                          color: color,
                          size: 14.0,
                        ),
                        starCount: 5,
                        starSize: 14,
                        maxValue: 5,
                        starSpacing: 0,
                        maxValueVisibility: true,
                        valueLabelVisibility: false,
                        starOffColor: const Color(0xffe7e8ea),
                        starColor: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            height: 1.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Material(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                        Color(0xFF8F8F8F),
                        Color(0xFF000000),
                      ],
                      tileMode: TileMode.mirror,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Your are on queue number',
                          style: TextStyle(color: Colors.yellow.shade100),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '30',
                          style: TextStyle(
                              fontSize: 80, color: Colors.yellow.shade100),
                        ),
                        Text(
                          'Current queue: 27',
                          style: TextStyle(color: Colors.yellow.shade100),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text('Est. Time 4 Hour(s)'),
        ],
      ),
    );
  }
}
