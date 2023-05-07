abstract class HomePageEvents {
  const HomePageEvents();
}

class HomePageDotsEvent extends HomePageEvents {
  final int index;
  HomePageDotsEvent(
    this.index,
  );
}
