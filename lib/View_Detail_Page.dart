
import 'package:flutter/material.dart';
import 'package:travell_app/Sub_Files/recommended_places_model.dart';


class View_Detail_Page extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NewPage4State();
}

class _NewPage4State extends State<View_Detail_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView.builder(
        itemCount: ListOfPlaces.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigate to the detail page for the selected truck
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SizedBox(
                    height: 235,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ;
                        },
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        itemCount: recommendedPlaces.length),
                  ),
                ),
              );
            },
            child: ListTile(
              title: ListOfPlaces[index], // Adjust based on your data structure
            ),
          );
        },
      ),
    );
  }
}

Widget listViewForDrawer(icons, String value) {
  return ListTile(
    leading: Icon(icons),
    title: Text(value,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    onTap: () {},
  );
}

Widget ListViewForBody(String title, String imagepath, ) {
  return Card(
    elevation: Material.defaultSplashRadius,
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: SizedBox(
        height: 50,
        child: Image.asset(imagepath),
      ),
    ),
  );
}

List ListOfPlaces = [
  ListViewForBody("Name1", "assets/images/img1.jpg"),
  ListViewForBody("Name2", "assets/images/img1.jpg"),
  ListViewForBody("Name3", "assets/images/img1.jpg"),
  ListViewForBody("Name4", "assets/images/img1.jpg"),
  ListViewForBody("Name5", "assets/images/img1.jpg"),
  ListViewForBody("Name6", "assets/images/img1.jpg"),
  ListViewForBody("Name7", "assets/images/img1.jpg"),
  ListViewForBody("Name8", "assets/images/img1.jpg"),
  ListViewForBody("Name9", "assets/images/img1.jpg"),
  ListViewForBody("Name10", "assets/images/img1.jpg"),
  ListViewForBody("Name11", "assets/images/img1.jpg"),
  ListViewForBody("Name12", "assets/images/img1.jpg"),
  ListViewForBody("Name13", "assets/images/img1.jpg"),

];