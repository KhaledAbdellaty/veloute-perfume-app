part of 'bottom_nav_bar_cubit.dart';

class BottomNavBarState extends Equatable {
  final int index;

  BottomNavBarState({this.index = 0});

  final List<Widget> screens = [
    HomeScreen(),
    // MyListScreen(),
    // DownloadsScreen(),
    // GenresScreen(),
    // AccountScreen(),
  ];

  BottomNavBarState copyWith(int? pageIndex) {
    return BottomNavBarState(index: pageIndex ?? index);
  }

  @override
  List<Object?> get props => [index];
}
