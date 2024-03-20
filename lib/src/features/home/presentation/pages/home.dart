import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/section/about/about.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/section/contact/contact.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/section/expertise/expertise.dart';
import 'package:hti_indonesia/src/features/home/presentation/widgets/section/opener/opener.dart';
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
        double screenHeight = constraint.maxHeight - footerHeight;
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // opener
                const MyOpener(),

                // expertise
                const MyExpertise(),

                // contact
                const MyContact(),

                // about
                const MyAbout(),

                if (contentHeight < screenHeight)
                  SizedBox(height: screenHeight - contentHeight),

                // footer
                MyFooter(height: footerHeight),
              ],
            ),
          ),
        );
      }),
    );
  }
}
