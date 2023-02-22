class IntroModel {
  final String title;
  final String description;
  final String photo;

  IntroModel(
      {required this.title, required this.description, required this.photo});
}

List<IntroModel> introData = [
  IntroModel(
    title: 'FEATURE 1',
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et",
    photo: 'https://www.wepal.net/ar/uploads/2732018-073911PM-1.jpg',
  ),
  IntroModel(
    title: 'FEATURE 2',
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et",
    photo:
        'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
  ),
  IntroModel(
    title: 'FEATURE 3',
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et",
    photo:
        'https://us.123rf.com/450wm/massonforstock/massonforstock1111/massonforstock111100136/11147955-girl-sitting-near-tree-with-vintage-camera-photo-in-old-yellow-color-image-style-.jpg?ver=6',
  ),
];
