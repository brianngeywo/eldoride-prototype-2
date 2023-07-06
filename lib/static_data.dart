import 'dart:math';

import 'package:prototype/airbnb_list_page.dart';
import 'package:prototype/drivers_list.dart';
import 'package:prototype/recent_locations.dart';

final List<String> airbnbImageList = [
  "https://images.pexels.com/photos/1428348/pexels-photo-1428348"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3769443/pexels-photo-3769443"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/4031013/pexels-photo-4031013"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/584399/living-room-couch-interior-room"
      "-584399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7746574/pexels-photo-7746574"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9130978/pexels-photo-9130978"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/11786267/pexels-photo-11786267"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9876067/pexels-photo-9876067"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7635919/pexels-photo-7635919"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10877461/pexels-photo-10877461"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
];
final List<Property> airbnbProperties = [
  Property(
    title: 'Luxury Apartment',
    location: 'Eldoret',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 200,
  ),
  Property(
    title: 'Beach House',
    location: 'Mombasa',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 300,
  ),
  Property(
    title: 'Cozy Cabin',
    location: 'Kapsabet',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 150,
  ),
  Property(
    title: 'Beachfront Villa',
    location: 'Mombasa',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 250,
  ),
  Property(
    title: 'Safari Lodge',
    location: 'Maasai Mara',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 300,
  ),
  Property(
    title: 'Mountain Cabin',
    location: 'Mount Kenya',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 150,
  ),
  Property(
    title: 'City Apartment',
    location: 'Nairobi',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 200,
  ),
  Property(
    title: 'Lake House',
    location: 'Lake Naivasha',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 180,
  ),
  Property(
    title: 'Countryside Cottage',
    location: 'Nanyuki',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 120,
  ),
  Property(
    title: 'Luxury Penthouse',
    location: 'Nairobi',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 400,
  ),
  Property(
    title: 'Secluded Lodge',
    location: 'Tsavo National Park',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 280,
  ),
  Property(
    title: 'Treehouse Retreat',
    location: 'Diani Beach',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 220,
  ),
  Property(
    title: 'Rustic Farmhouse',
    location: 'Nakuru',
    imageUrl: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    price: 160,
  ),
];

final List<Driver> drivers = [
  Driver(
    name: 'Kipchoge Kipyego',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 3.5,
  ),
  Driver(
    name: 'Chebet Talam',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 2.8,
  ),
  Driver(
    name: 'Korir Maiyo',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 4.2,
  ),
  Driver(
    name: 'Jepchirchir Cherono',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 5.1,
  ),
  Driver(
    name: 'Kiptoo Saina',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 3.9,
  ),
  Driver(
    name: 'Cherop Ngetich',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 2.1,
  ),
  Driver(
    name: 'Koech Kibiwott',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 4.5,
  ),
  Driver(
    name: 'Langat Kirui',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 3.2,
  ),
  Driver(
    name: 'Kemboi Chumba',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 4.9,
  ),
  Driver(
    name: 'Ruto Maritim',
    avatar:
        driverProfilePictures[Random().nextInt(driverProfilePictures.length)],
    distance: 2.6,
  ),
];

final List<String> carImages = [
  "assets/car-three-seater.png",
  "assets/car-five-seater.png",
  "assets/car-seven-seater.png",
];

final List<String> driverProfilePictures = [
  "https://images.pexels.com/photos/1588073/pexels-photo-1588073"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/3787149/pexels-photo-3787149"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/15487492/pexels-photo-15487492/free-photo"
      "-of-man-people-woman-sitting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/7362967/pexels-photo-7362967"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/376729/pexels-photo-376729"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/787476/pexels-photo-787476"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/2574120/pexels-photo-2574120"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/2203535/pexels-photo-2203535"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/210094/pexels-photo-210094"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/4606336/pexels-photo-4606336"
      ".jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
];
List<Location> recentLocations = [
  Location(
    name: 'Restaurant A',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '2.5 km',
    isFavorite: true,
    rating: 4.5,
    carImage: 'assets/car-three-seater.png',
    plateNumber: 'ABC 123',
  ),
  Location(
    name: 'Gym',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '1.8 km',
    isFavorite: false,
    rating: 4.0,
    carImage: 'assets/car-five-seater.png',
    plateNumber: 'DEF 456',
  ),
  Location(
    name: 'Shopping Mall',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '3.2 km',
    isFavorite: false,
    rating: 4.2,
    carImage: 'assets/car-seven-seater.png',
    plateNumber: 'GHI 789',
  ),
  Location(
    name: 'Park',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '0.5 km',
    isFavorite: true,
    rating: 4.8,
    carImage: 'assets/car-three-seater.png',
    plateNumber: 'JKL 012',
  ),
  Location(
    name: 'Cinema',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '2.1 km',
    isFavorite: false,
    rating: 4.1,
    carImage: 'assets/car-five-seater.png',
    plateNumber: 'MNO 345',
  ),
  Location(
    name: 'Restaurant B',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '1.2 km',
    isFavorite: true,
    rating: 4.9,
    carImage: 'assets/car-seven-seater.png',
    plateNumber: 'PQR 678',
  ),
  Location(
    name: 'Restaurant C',
    image: airbnbImageList[Random().nextInt(airbnbImageList.length)],
    distance: '2.5 km',
    isFavorite: true,
    rating: 4.5,
    carImage: 'assets/car-three-seater.png',
    plateNumber: 'STU 901',
  ),
];
