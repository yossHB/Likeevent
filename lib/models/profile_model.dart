class Profiles {
  String title;
  List<String> image = [];
  Profiles({required this.title, required this.image});
}

final profileList = <Profiles>[
  Profiles(
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
  Profiles(
    title: 'Reserved',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
  Profiles(
    title: 'Payed',
    image: ['loup.png', 'loup.png', 'loup.png', 'loup.png'],
  ),
  Profiles(
    title: 'Saved',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
];
