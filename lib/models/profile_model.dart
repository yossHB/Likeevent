class Profile {
  String title;
  List<String> image = [];
  Profile({required this.title, required this.image});
}

final profileList = <Profile>[
  Profile(
    title: 'For Today',
    image: [
      'loup.png',
      'loup.png',
      'loup.png',
      'loup.png',
      'loup.png',
      'loup.png',
      'loup.png'
    ],
  ),
  Profile(
    title: 'Reserved',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
  Profile(
    title: 'Payed',
    image: ['loup.png', 'loup.png', 'loup.png', 'loup.png'],
  ),
  Profile(
    title: 'Saved',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
];
