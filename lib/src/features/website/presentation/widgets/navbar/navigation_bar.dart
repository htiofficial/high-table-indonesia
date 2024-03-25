import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/config/font/font.dart';
import 'package:hti_indonesia/src/global/widgets/text/my_text.dart';

class MyNavigationBarWebsite extends StatefulWidget {
  const MyNavigationBarWebsite({
    required this.onChangedIndex,
    required this.currentIndex,
    super.key,
  });

  final dynamic onChangedIndex;
  final int currentIndex;
  @override
  State<MyNavigationBarWebsite> createState() => _MyNavigationBarWebsiteState();
}

class _MyNavigationBarWebsiteState extends State<MyNavigationBarWebsite> {
  bool _isExtended = true;

  void _switchExtended() {
    setState(() {
      _isExtended = !_isExtended;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      extended: _isExtended,
      onDestinationSelected: widget.onChangedIndex,
      selectedIndex: widget.currentIndex,
      elevation: 5,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.apps_outlined),
          label: MyText(
            text: 'Home',
            fontSize: AppFontSize.description,
          ),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.storage),
          label: MyText(
            text: 'Master Data',
            fontSize: AppFontSize.description,
          ),
        ),
      ],
      trailing: Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: _isExtended
              ? IconButton(
                  hoverColor: Colors.transparent,
                  onPressed: _switchExtended,
                  icon: const Icon(
                    Icons.keyboard_double_arrow_left,
                  ),
                )
              : IconButton(
                  hoverColor: Colors.transparent,
                  onPressed: _switchExtended,
                  icon: const Icon(
                    Icons.keyboard_double_arrow_right,
                  ),
                ),
        ),
      ),
    );
  }
}
