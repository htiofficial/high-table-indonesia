import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/colors/colors.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/decoration/my_circle.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyNews extends StatefulWidget {
  const MyNews({Key? key}) : super(key: key);

  @override
  State<MyNews> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _initNews();
  }

  void _initNews() {
    _pageController = PageController();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (_currentPageIndex < 2) {
          _currentPageIndex++;
        } else {
          _currentPageIndex = 0;
        }
        if (_pageController.hasClients) {
          _pageController.animateToPage(
            _currentPageIndex,
            duration: const Duration(milliseconds: 2000),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final news = [
      {
        'title': 'Rencanakan Liburan Keluarga Bersama Penerbangan Kami',
        'path': 'assets/images/news1.jpeg',
      },
      {
        'title':
            'Menikmati Pengalaman Berlayar dengan Kapal Pesiar Terbesar di Asia',
        'path': 'assets/images/news3.jpg',
      },
      {
        'title': 'Bali Menjadi Tempat Favorit Turis 2024',
        'path': 'assets/images/news2.jpeg',
      },
    ];
    return SizedBox(
      height: 170,
      // width: 360,
      child: PageView.builder(
        controller: _pageController,
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => MyNewsItem(
          title: news[index]['title']!,
          path: news[index]['path']!,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class MyNewsItem extends StatelessWidget {
  const MyNewsItem({
    required this.title,
    required this.path,
    super.key,
  });

  final String title;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          path,
          height: 176,
          width: 340,
          fit: BoxFit.fitWidth,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          height: 176,
          width: 340,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.6),
                AppColors.baseBlack.withOpacity(0.4),
                AppColors.baseBlack.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(
                text: 'Today News',
                fontSize: AppFontSize.description,
                color: AppColors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: title,
                    fontSize: AppFontSize.description,
                    color: AppColors.white,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      MyText(
                        text: 'Kid Cudi',
                        fontSize: AppFontSize.caption,
                        color: AppColors.white,
                      ),
                      MyBlueCircle(),
                      MyText(
                        text: '01 Jan 2024',
                        fontSize: AppFontSize.caption,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // ListView.builder(
        //     itemCount: 5, itemBuilder: (context, index) => Container()),
      ],
    );
  }
}
