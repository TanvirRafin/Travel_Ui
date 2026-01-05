import 'package:flutter/material.dart';
class popularcard extends StatelessWidget {

  final String image;
  final String title;
  final String location;
  final String price;
  final String rating;
  const popularcard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.price,
    required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          child: Image.asset(image, height: 130,width: double.infinity,fit: BoxFit.cover,),
        ),
          Padding(padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
              SizedBox(height: 4,),
              Text(location,style: TextStyle(
                fontSize: 10,
                color: Colors.lightBlue
              ),),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Icon(Icons.star, size: 16,color: Colors.amber,),
                  SizedBox(width: 4,),
                  Text("$rating", style: TextStyle(

                  ),),
                  Text(price, style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),)

                ],
              )
            ],
          ),
          )
        ],
      ),
    );
  }
}
