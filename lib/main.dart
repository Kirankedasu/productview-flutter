import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

import 'package:like_button/like_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:gradient_borders/gradient_borders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _dropquantity = '1';
  var _items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  int activeIndex = 0;
  final urlimage = [
    'https://picsum.photos/200/300.webp',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300/?blur=2',
    'https://picsum.photos/seed/324/600',
    'https://picsum.photos/200',
    'https://picsum.photos/seed/324/600',
  ];
  final story = [
    'https://picsum.photos/200/300.webp',
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300/?blur=2',
    'https://picsum.photos/seed/324/600',
    'https://picsum.photos/200',
    'https://picsum.photos/seed/324/600',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF240046),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          elevation: 4,
                          backgroundColor: Colors.transparent,
                        ),
                        child: Icon(Icons.arrow_back,
                            size: 30, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Text(
                      'Product name',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFFF9FBFD),
                        fontSize: 22,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 20, 0, 0),
                  child: Text(
                    'about the product name,its specific details.',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 0, 0, 0),
                  child: Text(
                    'about the product name,its specific details.',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Container(
                    width: 358,
                    height: 258,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Stack(
                      children: [
                        Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                                child: CarouselSlider.builder(
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      height: 258,
                                      enableInfiniteScroll: false,
                                      onPageChanged: (index, reason) =>
                                          setState(() => activeIndex = index),
                                    ),
                                    itemCount: urlimage.length,
                                    itemBuilder: (context, index, realIndex) {
                                      final urlimages = urlimage[index];
                                      return buildimage(urlimages, index);
                                    }))),
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.share,
                                size: 20,
                                color: Color(0xFF240046),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.94, 0.94),
                          child: SizedBox(
                              width: 30,
                              height: 30,
                              child: LikeButton(
                                size: 25,
                              )),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.93, -0.95),
                          child: SizedBox(
                            width: 70,
                            height: 20,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 20,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x00000080),
                                        blurRadius: 10,
                                        offset: Offset(2.5, 0)),
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                      colors: [
                                        Color.fromARGB(255, 155, 137, 171),
                                        Color.fromARGB(255, 167, 152, 177),
                                      ]),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Icon(
                                        Icons.star_rounded,
                                        size: 14,
                                        color: Color(0xFFffc700),
                                      ),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 14,
                                      color: Color(0xFFffc700),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 14,
                                      color: Color(0xFFffc700),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 14,
                                      color: Color(0xFFffc700),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 14,
                                      color: Color(0xFFffc700),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(130, 10, 0, 0),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    buildIndicator()
                  ],
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 20, 0, 0),
                  child: Text(
                    'Colour : Colours',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Container(
                    height: 110,
                    child: Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: story.length,
                        itemBuilder: (context, index) {
                          return buildstory(
                            story[index],
                            index,
                          );
                        },
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 1,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 4, 0, 0),
                  child: Text(
                    'Measurements / size',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 1,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 2, 0, 0),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Icon(
                          Icons.currency_rupee_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                      child: Text(
                        'amount',
                        style: TextStyle(
                          fontFamily: 'inter',
                          color: Color(0xFFF9FBFD),
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                      child: Text(
                        'M.R.P.',
                        style: TextStyle(
                          fontFamily: 'inter',
                          color: Color.fromARGB(255, 117, 96, 135),
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Container(
                          width: 110,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFF240046),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  '₹ Amount',
                                  style: TextStyle(
                                    fontFamily: 'inter',
                                    color: Color.fromARGB(255, 117, 96, 135),
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: SizedBox(
                                  width: 110,
                                  child: Divider(
                                    height: 5,
                                    thickness: 1,
                                    color: Color.fromARGB(255, 149, 122, 161),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 0, 0, 0),
                  child: Text(
                    '(%% off)',
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 24,
                      color: Color.fromARGB(255, 117, 96, 135),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(17, 4, 0, 0),
                  child: Text(
                    'Other information about the cost\nand the offers',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF9FBFD),
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                child: Container(
                  width: 90,
                  height: 20,
                  alignment: AlignmentDirectional(-12, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      'In Stock',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFFF9FBFD),
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFd9d9d9),
                    ),
                    width: 89,
                    height: 37,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                          child: Text(
                            'Qty:',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF240046),
                              letterSpacing: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: DropdownButton(
                            dropdownColor: Color(0xFFd9d9d9),
                            focusColor: Color(0xFF240046),
                            items: _items.map((String item) {
                              return DropdownMenuItem(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF240046),
                                      letterSpacing: 0,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ));
                            }).toList(),
                            onChanged: (String? newvalue) {
                              setState(() {
                                _dropquantity = newvalue!;
                              });
                            },
                            value: _dropquantity,
                            borderRadius: BorderRadius.circular(10),
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xFF240046),
                            ),
                            iconSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 370,
                  height: 41,
                  decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                      width: 2,
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 220, 215, 225),
                        ],
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 121, 92, 151),
                        Color.fromARGB(255, 84, 58, 108),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 370,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFFffc700),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Color(0xFF240046),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: const TextStyle(
                          color: Color(0xFF240046),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 72,
                  height: 22,
                  alignment: AlignmentDirectional(-55, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFFF9FBFD),
                        fontSize: 18,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 433,
                    height: 118,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            child: CircleAvatar(
                          radius: 44,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4), // Border radius
                            child: ClipOval(
                                child: Image.network(
                                    'https://picsum.photos/seed/324/600')),
                          ),
                        )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Maya Joshi',
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      color: Color(0xFFF9FBFD),
                                      letterSpacing: 0,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 8, 0),
                                    child: Container(
                                      width: 75,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [
                                              Color.fromARGB(255, 94, 69, 118),
                                              Color.fromARGB(
                                                  255, 137, 118, 155),
                                            ]),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 0, 0, 0),
                                            child: Icon(
                                              Icons.star_rounded,
                                              size: 14,
                                              color: Color(0xFFffc700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            letterSpacing: 0,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'days ago',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                child: Container(
                  width: 358,
                  child: const ReadMoreText(
                    'Excellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly \nrecomended for mastering new skills...\nExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skillsExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skills. ',
                    trimMode: TrimMode.Line,
                    trimLines: 3,
                    lessStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFF9FBFD),
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 433,
                    height: 118,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            child: CircleAvatar(
                          radius: 44,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4), // Border radius
                            child: ClipOval(
                                child: Image.network(
                                    'https://picsum.photos/seed/324/600')),
                          ),
                        )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Maya Joshi',
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      color: Color(0xFFF9FBFD),
                                      letterSpacing: 0,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 8, 0),
                                    child: Container(
                                      width: 75,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [
                                              Color.fromARGB(255, 94, 69, 118),
                                              Color.fromARGB(
                                                  255, 137, 118, 155),
                                            ]),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 0, 0, 0),
                                            child: Icon(
                                              Icons.star_rounded,
                                              size: 14,
                                              color: Color(0xFFffc700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            letterSpacing: 0,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'days ago',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                child: Container(
                  width: 358,
                  child: const ReadMoreText(
                    'Excellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly \nrecomended for mastering new skills...\nExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skillsExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skills. ',
                    trimMode: TrimMode.Line,
                    trimLines: 3,
                    lessStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFF9FBFD),
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 433,
                    height: 118,
                    decoration: BoxDecoration(
                      color: Color(0xFF240046),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            child: CircleAvatar(
                          radius: 44,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(4), // Border radius
                            child: ClipOval(
                                child: Image.network(
                                    'https://picsum.photos/seed/324/600')),
                          ),
                        )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Maya Joshi',
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      color: Color(0xFFF9FBFD),
                                      letterSpacing: 0,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 8, 0),
                                    child: Container(
                                      width: 75,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                            colors: [
                                              Color.fromARGB(255, 94, 69, 118),
                                              Color.fromARGB(
                                                  255, 137, 118, 155),
                                            ]),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    3, 0, 0, 0),
                                            child: Icon(
                                              Icons.star_rounded,
                                              size: 14,
                                              color: Color(0xFFffc700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            size: 14,
                                            color: Color(0xFFffc700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 10, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            letterSpacing: 0,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'days ago',
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            color: Color(0xFFF9FBFD),
                                            fontSize: 12,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                child: Container(
                  width: 358,
                  child: const ReadMoreText(
                    'Excellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly \nrecomended for mastering new skills...\nExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skillsExcellent course! Comprehensive context and effective teaching\nmethods ensure a profound lerning experience. Highly recomended for mastering new skills. ',
                    trimMode: TrimMode.Line,
                    trimLines: 3,
                    lessStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFffc700),
                    ),
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xFFF9FBFD),
                      fontSize: 10,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: SizedBox(
                  width: 358,
                  child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Color.fromARGB(255, 149, 122, 161),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 40),
                child: Container(
                  width: 118,
                  height: 41,
                  decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                      width: 2,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 218, 209, 209),
                          Color.fromARGB(255, 192, 181, 203),
                        ],
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 121, 92, 151),
                        Color.fromARGB(255, 84, 58, 108),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    child: Text(
                      'Show more',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildstory(String story, int index) => Padding(
        padding: EdgeInsets.all(5),
        child: Container(
            height: 100,
            width: 100,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: Image.network(
              story,
              fit: BoxFit.cover,
            )),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlimage.length,
        effect: WormEffect(
          dotHeight: 8,
          dotWidth: 8,
          dotColor: Colors.white,
          activeDotColor: Color(0xFFffc700),
        ),
      );
}

Widget buildimage(String urlimage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 0),
    child: Image.network(
      urlimage,
      width: 358,
      height: 258,
      fit: BoxFit.cover,
    ));
