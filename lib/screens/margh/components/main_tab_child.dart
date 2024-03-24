import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/const/resource.dart';
import 'package:task1/extension.dart';

class MainTabChild extends StatefulWidget {
  const MainTabChild({super.key});

  @override
  State<MainTabChild> createState() => _MainTabChildState();
}

class _MainTabChildState extends State<MainTabChild> {
  static final List<String> images = [
    R.ASSETS_IMAGES_LION1_JPG,
    R.ASSETS_IMAGES_LION2_JPG
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColoredBox(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    const Text("May your day be filled with joy ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              //dark blue color
                              backgroundColor: Colors.lightBlue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Inspirational",
                              style: TextStyle(color: Colors.white),
                            )),
                        10.wBox,
                        Expanded(
                            child: Container(
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.grey,
                              ),
                              const Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )),
                        10.wBox,
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 600,
              child: _buildPageView(),
            ),
          ],
        ),
      ),
    );
  }

  _buildPageView() {
    return PageView.builder(
      pageSnapping: true,
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  margin: const EdgeInsets.all(13),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              CupertinoIcons.heart,
                              size: 40,
                            ),
                            Text("Save")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              CupertinoIcons.arrow_down_to_line,
                              size: 40,
                            ),
                            Text("Downlaod")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              //share icon
                              CupertinoIcons.share,
                              size: 40,
                            ),
                            Text("share")
                          ],
                        ),
                      ]),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
