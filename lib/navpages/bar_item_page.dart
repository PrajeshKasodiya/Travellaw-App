import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:skyscanner/Pages/sidebar.dart';
import 'package:skyscanner/constant.dart';

class BaritemPage extends StatefulWidget {
  const BaritemPage({super.key});

  @override
  State<BaritemPage> createState() => _BaritemPageState();
}

class _BaritemPageState extends State<BaritemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:   NavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
            children: [for (int i = 0; i <= 5; i++) buildCard()]),
      ),
    );
  }
}

Widget buildCard() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(
                    image: AssetImage(destination[3]['imagePath']!),
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  const Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Mountain duo",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. book.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "It has survived not only five centuries, but also the leap into electronic",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      const Icon(
                        Icons.watch_later_outlined,
                        size: 15,
                        color: Colors.black54,
                      ),
                      const Text(
                        " 19 october 20",
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                      const Spacer(),
                      const Text("Rates :"),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        itemSize: 15,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.zero,
                        itemBuilder: (context, _) => const SizedBox(
                          child: Icon(Icons.star, color: Colors.amber),
                        ),
                        onRatingUpdate: (rating) {},
                      )
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Padding customAppBar() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20,
      left: 20,
      right: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black54,
            size: 30,
          ),
        ),
        const RawMaterialButton(
          onPressed: null,
          constraints: BoxConstraints(minWidth: 0),
          elevation: 2.0,
          fillColor: Colors.white10,
          padding: EdgeInsets.all(8),
          shape: CircleBorder(),
          child: Icon(Icons.search_rounded, color: Colors.black54, size: 30),
        )
      ],
    ),
  );
}
