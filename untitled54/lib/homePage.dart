import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled54/detailPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> images = [
    'assets/comedyclub2.jpg',
    'assets/comedyclub4.jpg',
    'assets/comdeyclub5.jpg',
    'assets/comdedyclub3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WELCOME TO COMEDY CLUB',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Laugh, Relax & Enjoy!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                letterSpacing: 2,
                fontFamily: 'Cursive',
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to the funniest place in town! Get ready to experience unforgettable moments with our exciting shows.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepPurple.shade600,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'Previous Events',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 20),

            CarouselSlider.builder(options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              height: 150,
              reverse: true,
              enlargeCenterPage: true,
            ),
            itemCount: images.length,
              itemBuilder: (context,index,reindex){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                );
              },
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute
                (builder: (context)=>TicketsPage()));
            }, child: Text('Next',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)),
          ],
        ),
      ),
    );
  }
}
