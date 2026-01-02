
import 'package:flutter/material.dart' show StatelessWidget, BuildContext, Widget, EdgeInsets, BorderRadius, TextStyle, SizedBox, Icon, Colors, BoxDecoration, CrossAxisAlignment, Radius, Image, BoxFit, ClipRRect, FontWeight, Text, MainAxisAlignment, Icons, Row, Column, Padding, Container;

class PopularPlaceCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String price;
  final double rating;

  const PopularPlaceCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              image,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(location,
                    style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star, size: 16, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text(rating.toString()),
                      ],
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
