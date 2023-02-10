import 'package:colours/colours.dart';
import 'package:flutter/material.dart';

const destination = [
  {'imagePath': 'assets/tower.jpg'},
  {'imagePath': 'assets/mountain.jpg'},
  {'imagePath': 'assets/city.jpg'},
  {'imagePath': 'assets/statue.jpg'},
];

List exploreColor = [
  Colours.swatch('#F3E5F5'),
  Colours.swatch('#E0F2F1'),
  Colours.swatch('#EdE7F6'),
  Colours.swatch('#E1F5FE'),
  Colours.swatch('#FCE4EC'),
  Colours.swatch('#FBE9E7'),
];

List recommendedImgText = [
  "Hills",
  "Himalya",
  "Metropoli",
  "Nature",
  "Pillips",
  "City",
  "Street"
];

const exploreIcon = [
  Icon(
    Icons.directions_bike,
    color: Colors.red,
    size: 30,
  ),
  Icon(Icons.sports_handball_outlined, color: Colors.green, size: 30),
  Icon(Icons.anchor, color: Colors.purple, size: 30),
  Icon(Icons.paragliding, color: Colors.cyan, size: 30),
  Icon(Icons.add_circle_outline_sharp, color: Colors.pink, size: 30),
  Icon(Icons.details_rounded, color: Colors.purple, size: 30),
];

const exploreText = [
  Text("hi"),
  Text("hello"),
  Text("there"),
  Text("now "),
  Text("whats"),
  Text("up"),
];

const hotDestination = [
  {
    'imagePath': 'assets/bridge.jpg',
    'placeName': 'AMERICA',
    'placeCount': '18 Tourist place',
  },
  {
    'imagePath': 'assets/japan-home.jpg',
    'placeName': 'JAPAN',
    'placeCount': '10 Tourist place',
  },
  {
    'imagePath': 'assets/mountain.jpg',
    'placeName': 'NEWYORK',
    'placeCount': '20 Tourist place',
  },
  {
    'imagePath': 'assets/city.jpg',
    'placeName': 'NEWYORK',
    'placeCount': '20 Tourist place',
  },
];
