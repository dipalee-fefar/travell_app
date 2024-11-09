import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travell_app/View_Detail_Page.dart';
import 'Sub_Files/Detail_Page.dart';
import 'Sub_Files/Places.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String check = "";

  int indexValue = 0;
  int index = 1;
  bool isCheck = false;
  static MaterialColor buttonColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  child: Icon(Icons.grid_view, size: 25),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text("Rambang.Ind"),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  child: Icon(
                    Icons.notifications,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp),
                    hintText: 'Street, Address, City',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                        ),
                        onPressed: () {},
                        child: Text("Search", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCategoryIcon(Icons.electric_scooter_rounded, 1),
                    _buildCategoryIcon(Icons.car_rental_outlined, 2),
                    _buildCategoryIcon(Icons.flatware_rounded, 3),
                    _buildCategoryIcon(Icons.airplanemode_active, 4),
                    _buildCategoryIcon(Icons.home, 5),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _buildImageBanner(),
              SizedBox(height: 10),
              _buildRecommendationSection(context),
              SizedBox(height: 10),
              _buildGridPlaces(context),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.red,
          tabs: [
            _buildBottomTabIcon(Icons.home_outlined),
            _buildBottomTabIcon(Icons.location_searching),
            _buildBottomTabIcon(Ionicons.heart_outline),
            _buildBottomTabIcon(Icons.settings),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, int newIndex) {
    return InkWell(
      onTap: () {
        setState(() {
          index = newIndex;
        });
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: index == newIndex ? Colors.redAccent : Colors.white54,
        child: Icon(icon, color: Colors.black, size: 30),
      ),
    );
  }

  Widget _buildImageBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'assets/images/Flight.jpg',
        height: 130,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildRecommendationSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Recommendation",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => View_Detail_Page()),
            );
          },
          child: const Text("See All"),
        ),
      ],
    );
  }

  Widget _buildGridPlaces(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: nearbyPlaces.length, // Assuming you have 7 items in nearbyPlaces
        itemBuilder: (context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TouristDetailsPage(
                    image: nearbyPlaces[index].image,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      nearbyPlaces[index].image,
                      width: double.maxFinite,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ 27.20",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow.shade700, size: 20),
                                SizedBox(width: 4),
                                Text("4.60", style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                        Text("Nusa Penida", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomTabIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Icon(icon),
    );
  }
}
