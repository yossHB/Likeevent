class Event {
  String title;
  List<String> image = [];
  Event({required this.title, required this.image});
}

final eventList = <Event>[
  Event(
    title: 'Film',
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
  Event(
    title: 'Sport',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
  Event(
    title: 'Formation',
    image: ['loup.png', 'loup.png', 'loup.png', 'loup.png'],
  ),
  Event(
    title: 'Film',
    image: ['loup.png', 'loup.png', 'loup.png'],
  ),
  Event(
    title: 'Film',
    image: ['loup.png', 'loup.png', 'loup.png', 'loup.png', 'loup.png'],
  ),
  Event(
    title: 'Film',
    image: ['loup.png', 'loup.png', 'loup.png', 'loup.png', 'loup.png'],
  ),
];
