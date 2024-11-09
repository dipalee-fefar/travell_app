import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TouristDetailsPage extends StatefulWidget {
  const TouristDetailsPage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  State<TouristDetailsPage> createState() => _TouristDetailsPageState();
}

class _TouristDetailsPageState extends State<TouristDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            SizedBox(
              height: size.height * 0.38,
              width: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/img1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment:Alignment.topCenter,
                        child: Text("Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {

                      });
                    },
                    child: IconButton(
                      alignment: Alignment.topRight,
                      iconSize: 30,
                      onPressed: () {},
                      icon: CircleAvatar(backgroundColor: Colors.grey,child: const Icon(Ionicons.heart_outline,color: Colors.black,)),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(15)),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 20,
                            icon: const Icon(Ionicons.chevron_back),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nusa Penida Island",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(Icons.location_on, color: Colors.red),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Bali,Indonesia"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "\$ 27.20/Person",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[800],
                        size: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "4.60",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius:
                    BorderRadius.circular(20), // Adjust the radius as needed
              ),
              child: InkWell(
                onTap: () { },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.error_outline_sharp, color: Colors.black),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Get the latest COVID-19 travel advice"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: Text(
                  "Nusa Penida is an island part of the republic of Indonesia Which is Located Southeast of Bal Which is seperated by the Badung Strait. Near this Island there are also small",style: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 10),
            Container(
              child: Text(
                  "Located on map",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 180,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                image: const DecorationImage(
                  image: AssetImage('assets/images/map1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 8.0,
                ),
              ),
              child:Container(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () { },
                child: Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white,),
                ),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}
