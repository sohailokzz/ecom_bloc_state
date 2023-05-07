class HomePageSates {
  final int index;

  HomePageSates({
    required this.index,
  });

  HomePageSates copyWith(int? index) {
    return HomePageSates(
      index: index ?? this.index,
    );
  }
}
