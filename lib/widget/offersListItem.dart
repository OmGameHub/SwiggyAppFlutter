import 'package:flutter/material.dart';

Widget offersListItem({
  imageUrl
}) =>
Container(
  height: 192,
  width: 192,
  child: Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: AssetImage(imageUrl),
        height: 192,
        width: 192,
      ),
    ),
  ),
);