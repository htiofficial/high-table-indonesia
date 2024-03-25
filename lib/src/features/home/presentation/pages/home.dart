import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/about/about.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/contact/contact.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/expertise/expertise.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/opener/opener.dart';
import 'package:hti_indonesia/src/global/widgets/footer/footer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    double contentHeight = 600;
    double footerHeight = 96;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        String type = 'web';
        if (constraint.maxWidth < 700) {
          type = 'mobile';
          footerHeight = 116;
        }

        double screenHeight = constraint.maxHeight - footerHeight;

        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // opener
                MyOpener(type: type),

                // expertise
                MyExpertise(type: type),

                // contact
                MyContact(type: type),

                // about
                MyAbout(type: type),

                if (contentHeight < screenHeight)
                  SizedBox(height: screenHeight - contentHeight),

                // footer
                MyFooter(
                  height: footerHeight,
                  type: type,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
