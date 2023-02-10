import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:skyscanner/Pages/sidebar.dart';
import 'package:skyscanner/constant.dart';
import 'package:skyscanner/home_page.dart';
import 'package:skyscanner/navpages/search_page.dart';
import 'package:skyscanner/style.dart';

class NavHomePage extends StatefulWidget {
  const NavHomePage({super.key});

  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      drawer: const NavBar(),
      appBar: appbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        // homepage element
        child: ListView(
          children: [
            //custom height
            customSizebox(),
            //discover text
            appLargeText(),
            //custom height
            customSizebox(),
            //homepage tabBar  element
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 18, right: 20),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.red,
                      controller: tabController,
                      tabs: const [
                        Tab(text: "Places"),
                        Tab(text: "Inspriration"),
                      ]),
                )),
            //homepage tabBar widget
            Container(
              padding: const EdgeInsets.only(top: 20),
              width: double.maxFinite,
              height: 650,
              child: TabBarView(controller: tabController, children: [
                //place element
                ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //first item
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: destination.length,
                            itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      left: index == 0 ? 30 : 0),
                                  child: destinationCard(context,
                                      destination[index]['imagePath']!),
                                )),
                      ),
                      //second item
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 30,
                          right: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Explore Mode',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            PrimaryText(
                                text: 'More', size: 16, color: Colors.black),
                          ],
                        ),
                      ),
                      //third item
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: exploreIcon.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 30 : 0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        color: exploreColor[index]),
                                    margin: const EdgeInsets.only(
                                        right: 30, top: 20),
                                    width: 65,
                                    height: 65,
                                    child: exploreIcon[index],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 30, top: 10),
                                    width: 65,
                                    child: Center(child: exploreText[index]),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          left: 30,
                          right: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Explore Mode',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            PrimaryText(
                                text: 'More', size: 16, color: Colors.black),
                          ],
                        ),
                      ),
                      //Four item
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: hotDestination.length,
                            itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      left: index == 0 ? 30 : 0),
                                  child: hotDestinationCard(
                                      hotDestination[index]['imagePath']!,
                                      hotDestination[index]['placeName']!,
                                      hotDestination[index]['placeCount']!,
                                      context),
                                )),
                      ),
                    ]),
                //insprition element
                Column(
                  children: [
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 260,
                      width: double.maxFinite,
                      child: ImageSlideshow(
                        indicatorColor: Colors.blue,
                        onPageChanged: (value) {
                          debugPrint('Page changed: $value');
                        },
                        autoPlayInterval: 3000,
                        isLoop: true,
                        children: [
                          Image.asset(
                            "assets/city.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/tower.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            "https://images.unsplash.com/photo-1454391304352-2bf4678b1a7a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/explore.jpg",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Explore Mode',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          PrimaryText(
                              text: 'More', size: 16, color: Colors.black),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 210,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                            child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromARGB(255, 231, 229, 229),
                                ),
                                margin: const EdgeInsets.only(right: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: 150,
                                          width: 150,
                                          child: Image.network(
                                            properties.recommendedImages[index],
                                            fit: BoxFit.cover,
                                          )),
                                      const Padding(
                                          padding: EdgeInsets.only(
                                        top: 10,
                                      )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          properties.recommendedText[index],
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 9, top: 3),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              const WidgetSpan(
                                                child: Icon(
                                                  Icons.location_pin,
                                                  size: 14,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              TextSpan(
                                                  text:
                                                      recommendedImgText[index],
                                                  style: const TextStyle(
                                                      color: Colors.blue)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ])),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 60,
                            color: Colors.pink.shade100,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              height: 60,
                              color: Colors.pink.shade100,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
            //continue to listview part
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Explore Mode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  PrimaryText(text: 'More', size: 16, color: Colors.black),
                ],
              ),
            ),
            for (int i = 0; i <= 6; i++)
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/tower.jpg',
                      width: MediaQuery.of(context).size.width / 1.16,
                    ),
                    const Text("Place").frosted(
                      blur: 5,
                      borderRadius: BorderRadius.circular(10),
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 3,
                          vertical: MediaQuery.of(context).size.width / 4.8),
                    ),
                  ],
                ),
              ),

            // _recommendationPlaceCardView(
            //     "assets/mountain.jpg", "Mountain", "Nepal", context),
          ],
        ),
      ),
    );
  }
}

// Padding customAppBar() {
//   return Padding(
//     padding: const EdgeInsets.only(
//       top: 20,
//       left: 25,
//       right: 25,
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.menu,
//             color: Colors.black54,
//             size: 30,
//           ),
//         ),
//         const RawMaterialButton(
//           onPressed: null,
//           constraints: BoxConstraints(minWidth: 0),
//           elevation: 2.0,
//           fillColor: Colors.white10,
//           padding: EdgeInsets.all(8),
//           shape: CircleBorder(),
//           child: Icon(Icons.search_rounded, color: Colors.black54, size: 30),
//         )
//       ],
//     ),
//   );
// }

AppBar appbar() => AppBar(
  backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu,color: Colors.black),
          ),
        ),
      ),
    );

SizedBox customSizebox() => const SizedBox(
      height: 10,
    );

Padding appLargeText() => Padding(
      padding: const EdgeInsets.only(left: 35, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Discover",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CircleAvatar(
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/prajesh.jpeg")),
          )
        ],
      ),
    );
//
// Widget _recommendationPlaceCardView(String imagePath, String scenryName,
//     String placeName, BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Card(
//       color: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           children: [
//             Image.asset(
//               imagePath,
//               fit: BoxFit.cover,
//               width: 150,
//               height: MediaQuery.of(context).size.height / 6,
//             ),
//             Expanded(
//                 child: Column(
//               children: const [Text("hello")],
//             ))
//           ],
//         ),
//       ),
//     ),
//   );
// }
