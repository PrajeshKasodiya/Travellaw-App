import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:skyscanner/Pages/sidebar.dart';
import 'package:skyscanner/navpages/navhome_page.dart';
import 'package:skyscanner/properties.dart';

var properties = Properties();

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: NavBar(),
        appBar: appbar(),
        body: SafeArea(
            child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 30,
                spacing: 0,
                children: [
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                  _recommendationCardView(
                      "assets/mountain.jpg", "Mountain", "Nepal"),
                ],
              ),
            ),
          )
        ])));
  }

  Widget _recommendationCardView(
      String imagePath, String scenryName, String placeName) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 5,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          scenryName,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          placeName,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 13,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.zero,
                    itemBuilder: (context, _) => const SizedBox(
                      child: Icon(Icons.star, color: Colors.amber),
                    ),
                    onRatingUpdate: (rating) {

                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
