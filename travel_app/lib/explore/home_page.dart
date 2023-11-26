import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: AppBar(
              actions: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 22,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Hi, John',
                      style: TextStyle(
                          color: Colors.black54, fontFamily: 'SpaceGrotesk'),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.line_axis,
                  color: Colors.black54,
                )
              ],
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 243, 241, 241)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'SpaceGrotesk',
                    color: const Color(0xff282828).withOpacity(.9),
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
              const Text(
                ' Natural',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.orange,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Text(
            'Beauty of the Earth',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpaceGrotesk',
                color: const Color(0xff282828).withOpacity(.9),
                decoration: TextDecoration.none),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Indonesia',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.black54,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 201, 201, 201)
                            .withOpacity(.5),
                        blurRadius: 15,
                        spreadRadius: 5)
                  ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Find your next location...',
                        hintStyle: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            color: Colors.black54.withOpacity(.4),
                            fontSize: 12),
                        prefixIcon: Icon(Icons.search, size: 25),
                        filled: true,
                        fillColor: Color.fromARGB(255, 245, 244, 244),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Expanded(
                flex: 2,
                child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 245, 244, 244),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 201, 201, 201)
                                .withOpacity(.5),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ],
                    ),
                    child: Icon(Icons.nature_people_rounded,
                        color: Colors.black54)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Catagories',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpaceGrotesk',
                color: const Color(0xff282828).withOpacity(.9),
                decoration: TextDecoration.none),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catagories.length,
              itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                     ),
                  margin: EdgeInsets.only(right: 10),
                  height: 50,width: 150,
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          catagories[index],
                          height: 50,
                          width: 50,fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          catagoriesName[index],
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SpaceGrotesk',
                              color: Colors.black54,
                              decoration: TextDecoration.none),
                        ),
                      )
                    ],
                  )),
            ),
          ), SizedBox(height: 20,),  Text(
            'Top Destination',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpaceGrotesk',
                color: const Color(0xff282828).withOpacity(.9),
                decoration: TextDecoration.none),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),          Expanded(flex: 7,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catagories.length,
              itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                  ),
                  margin: EdgeInsets.only(right: 10),
                  height: 50,width: 250,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          catagories[index],
                          height: 130,
                          width: 240,fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  catagoriesName[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'SpaceGrotesk',
                                      color: Colors.black54,fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),   Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Indonesia',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'SpaceGrotesk',
                    color: Colors.black54,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.start,
              ),
            ],
          ), 
                              ],
                            ),
                          ),Stack(children: [],)
                        ],
                      )
                    ],
                  )),
            ),
          ), Expanded(flex: 4,child: SizedBox(height: 50,))
        ]),
      ),
    );
  }
}

final catagories = [
  'assets/images/28.jpg',
  'assets/images/slide_2.jpg',
  'assets/images/4266213.jpg'
];
final catagoriesName = ['Beach', 'Lake', 'Mauntians'];
