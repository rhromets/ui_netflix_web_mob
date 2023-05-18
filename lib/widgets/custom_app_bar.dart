import 'package:flutter/material.dart';
import 'package:ui_netflix_web_mob/assets.dart';
import 'package:ui_netflix_web_mob/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 24.0,
        ),
        color: Colors.black.withOpacity(
          (scrollOffset / 350).clamp(0, 1).toDouble(),
        ),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => debugPrint('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => debugPrint('Movies'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => debugPrint('My List'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  onTap: () => debugPrint('Home'),
                ),
                _AppBarButton(
                  title: 'Tv Shows',
                  onTap: () => debugPrint('Tv Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => debugPrint('Movies'),
                ),
                _AppBarButton(
                  title: 'Latest',
                  onTap: () => debugPrint('Latest'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => debugPrint('My List'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => debugPrint('Search'),
                ),
                _AppBarButton(
                  title: 'KIDS',
                  onTap: () => debugPrint('KIDS'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => debugPrint('DVD'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => debugPrint('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => debugPrint('Notifications'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
