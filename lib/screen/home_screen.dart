import 'package:flutter/material.dart';

import '../custom_weidget/popular place card.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F5),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 30,)),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child:IconButton(onPressed: _ontablogin, icon: Icon(Icons.person, size: 30,)) ,
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text("Good Morning, Alex", style: TextStyle(color: Colors.grey, fontSize: 18),),
              SizedBox(height: 10),
              Text("Explore World", style: TextStyle(
                  color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold

              ),),
              SizedBox(height: 18),
              TextField(
                decoration:InputDecoration(
                  hintText: "Where do you went to go ?",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  suffixIcon: Icon(Icons.tune, color: Colors.blue,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ) ,
              ),
              SizedBox(height: 12,),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 40,width: 120,

                  decoration: BoxDecoration(
                   color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.beach_access, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("beach", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                  
                ),
                  SizedBox(width: 20,),
                  Container(
                      height: 40,width: 120,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.terrain, color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("mountain", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      )

                  ),
                  SizedBox(width: 20,),
                  Container(
                      height: 40,width: 120,

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_city, color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text("city", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      )

                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Place", style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("see all", style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20
                  ),)
                  
                ],
              ),
              SizedBox(height: 20,),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(

               children: [
                PopularPlaceCard(
                    image: 'assets/images/12.png',
                    title: 'mountain',
                    location: 'bandar ban',
                    price: '12,000 taka',
                    rating: 5),
                 PopularPlaceCard(
                     image: 'assets/images/13.png',
                     title: 'Dolphin mor',
                     location: 'Coxs Bazer',
                     price: '12,000 taka',
                     rating: 5),
                 PopularPlaceCard(
                     image: 'assets/images/12.png',
                     title: 'mountain',
                     location: 'bandar ban',
                     price: '12,000 taka',
                     rating: 5),
               ],
             ),
         )

            ],
            
          ),

        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "trips"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profil"),
        ],
      ),
    );
  }
  void _ontablogin(){
    Navigator.pushReplacementNamed(context, '/login');
  }
}
