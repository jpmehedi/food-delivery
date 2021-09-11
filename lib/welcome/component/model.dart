class Pageview {
  String? image;
  String? titletext;
  String? dteals;
  Pageview({this.image, this.titletext, this.dteals});
}

List<Pageview> contans = [
  Pageview(
      image: 'assets/image/welcome1.png',
      titletext: 'Find Food you love',
      dteals: 'Citycover the best foods from over 1000'
          'restont and fast devlvary in your home'),
  Pageview(
      image: 'assets/image/welcome2.png',
      titletext: 'First Delivery',
      dteals: 'Citycover the best foods from over 1000'
          'restont and fast devlvary in your home'),
  Pageview(
      image: 'assets/image/welcome3.png',
      titletext: 'Live Tracking',
      dteals: 'Citycover the best foods from over 1000'
          'restont and fast devlvary in your home'),
];
