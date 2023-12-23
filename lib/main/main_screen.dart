import 'package:bottom_navbar/favorite_screen.dart';
import 'package:bottom_navbar/home_screen.dart';
import 'package:bottom_navbar/main/bloc/main_bloc.dart';
import 'package:bottom_navbar/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Widget> _bodyItems = [
  const HomeScreen(),
  const FavoriteScreen(),
  const ProfileScreen(),
];

List<BottomNavigationBarItem> _bottomNavbarItem = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: _bodyItems[state.tabIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: _bottomNavbarItem,
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<MainBloc>(context).add(ChangeTabEvent(index));
            },
          ),
        );
      },
    );
  }
}
