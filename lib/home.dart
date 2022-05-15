import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateFormat formatter = DateFormat('MMM');
  @override
  Widget build(BuildContext context) {
    String monthAbbr = formatter.format(DateTime.now());
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/header.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color(0xFF262626).withOpacity(0.2),
                  BlendMode.darken,
                ),
              ),
              color: Color(0xFF262626),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed('/book');
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 15,
                        ),
                        shadowColor: Colors.black,
                      ),
                      child: const Text('Book Now'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('Current Booking(s)'),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          color: Colors.grey.shade300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                const Text(
                                  '30',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.brown,
                                  ),
                                ),
                                Text(
                                  monthAbbr.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.brown,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 15),
                            child: TextButton(
                              onPressed: () {
                                Get.toNamed('/queue');
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8,
                                ),
                              ),
                              child: const Text('Cek Booking'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Today\'s Proffesionals'),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  child: Scrollbar(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        listProffesionals(),
                        listProffesionals(),
                        listProffesionals(),
                        listProffesionals(),
                        listProffesionals(),
                        listProffesionals(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Latest News'),
                    const Text('See all(3)'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  child: Scrollbar(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset(
                          'assets/news1.png',
                          height: 140,
                          width: 140,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/news2.png',
                          height: 140,
                          width: 140,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/news3.png',
                          height: 140,
                          width: 140,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listProffesionals() {
    return Container(
      margin: EdgeInsets.only(right: 14),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/photo.png',
            ),
            minRadius: 20,
            maxRadius: 35,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(
            height: 2,
          ),
          RatingStars(
            value: 3,
            starBuilder: (index, color) => Icon(
              Icons.star_sharp,
              color: color,
              size: 10.0,
            ),
            starCount: 5,
            starSize: 10,
            maxValue: 5,
            starSpacing: 0,
            maxValueVisibility: true,
            valueLabelVisibility: false,
            starOffColor: const Color(0xffe7e8ea),
            starColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
