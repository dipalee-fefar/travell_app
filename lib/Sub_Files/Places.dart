class NearbyPlaceModel {
  final String image;
  String Name;
  NearbyPlaceModel({
    required this.image,
    required this.Name,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "assets/places/place7.jpg",
    Name: 'Mountain',
  ),
  NearbyPlaceModel(
    image: "assets/places/place6.jpg",
    Name: 'Tower',
  ),
  NearbyPlaceModel(
    image: "assets/places/place5.jpg",
    Name: 'Beach',
  ),
  NearbyPlaceModel(
    image: "assets/places/place4.jpg",
    Name: 'Forest',
  ),
  NearbyPlaceModel(
    image: "assets/places/place3.jpg",
    Name: 'Temple',
  ),
  NearbyPlaceModel(
    image: "assets/places/place2.jpg",
    Name: 'Desert',
  ),
  NearbyPlaceModel(
    image: "assets/places/place1.jpg",
    Name:'City'
  ),
];