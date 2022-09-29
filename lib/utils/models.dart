import 'package:masmasfod/utils/images.dart';

class NearestRestuarant {
  String title;
  String subTitle;
  String imgUrl;

  NearestRestuarant({
    required this.title,
    required this.subTitle,
    required this.imgUrl,
  });

  static List<NearestRestuarant> restaurant = [
    NearestRestuarant(
      title: 'Vegan Resto',
      subTitle: "12 Mins",
      imgUrl: MyImages.image_vegan,
    ),
    NearestRestuarant(
      title: "Healthy Food",
      subTitle: "8 Mins",
      imgUrl: MyImages.image_healthy,
    ),
    NearestRestuarant(
      title: "Good Food",
      subTitle: "12 Mins",
      imgUrl: MyImages.good_food,
    ),
    NearestRestuarant(
      title: "Smart Resto",
      subTitle: "8 Mins",
      imgUrl: MyImages.smart_resto,
    ),
  ];
}

class PopularMenu {
  String title;
  String subTitle;
  String imgUrl;
  double price;

  PopularMenu({
    required this.title,
    required this.subTitle,
    required this.imgUrl,
    required this.price,
  });

  static List<PopularMenu> menus = [
    PopularMenu(
      title: "Herbal Pancake",
      subTitle: "Warung Herbal",
      imgUrl: MyImages.herbal,
      price: 7,
    ),
    PopularMenu(
      title: "Fruit Salad",
      subTitle: "Wijie Resto",
      imgUrl: MyImages.fruit_sald,
      price: 5,
    ),
    PopularMenu(
      title: "Green Noddle",
      subTitle: "Noodle Home",
      imgUrl: MyImages.image_menu1,
      price: 15,
    ),
  ];
}