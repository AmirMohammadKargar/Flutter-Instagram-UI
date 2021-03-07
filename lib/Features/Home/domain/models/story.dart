class Story {
  String image, name;
  bool live, selfStory, hasStory;
  Story(image, name, live, selfStory, hasStory) {
    this.image = image;
    this.name = name;
    this.live = live;
    this.selfStory = selfStory;
    this.hasStory = hasStory;
  }
}

List<Story> stories = [
  Story("assets/images/38.jpg", "Anne", false, true, true),
  Story("assets/images/36.jpg", "Ash", true, false, true),
  Story("assets/images/37.jpg", "Mike", false, false, true),
  Story("assets/images/39.jpg", "Ted", false, false, true),
  Story("assets/images/38.jpg", "Nova", true, false, true),
  Story("assets/images/36.jpg", "Bana", false, false, true),
  Story("assets/images/39.jpg", "Jack", true, false, true),
  Story("assets/images/37.jpg", "John", false, false, true),
];
