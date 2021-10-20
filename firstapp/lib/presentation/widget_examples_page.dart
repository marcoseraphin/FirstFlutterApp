import 'package:firstapp/application/theme_service.dart';
import 'package:firstapp/presentation/widgets/container_text_example.dart';
import 'package:firstapp/presentation/widgets/custom_button.dart';
import 'package:firstapp/presentation/widgets/media_query_example.dart';
import 'package:firstapp/presentation/widgets/page_view_example.dart';
import 'package:firstapp/presentation/widgets/row_expanded_example.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/profile_picture.dart';
import 'widgets/rectangluar_image.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            size: 30,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          title: const Text("First flutter App"),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ContainerTextExample(),
                const SizedBox(height: 30),
                const RowExpandedExample(),
                const SizedBox(height: 30),
                const ProfilePicture(),
                const SizedBox(height: 30),
                const RectImage(),
                const SizedBox(height: 30),
                const MediaQueryExample(),
                const SizedBox(height: 30),
                const PageViewExample(),
                const SizedBox(height: 30),
                IconButton(
                    splashColor: Colors.blue,
                    onPressed: () {
                      // ignore: avoid_print
                      print("IconButton was pressed");
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print("TextButton pressed");
                    },
                    child: Container(
                        color: Colors.amber,
                        child: const Text(
                          "Text Button",
                          style: TextStyle(color: Colors.white),
                        ))),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen1");
                  },
                  text: 'Goto Screen 1',
                  color: Colors.blue[200]!,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen2");
                  },
                  text: 'Goto Screen 2',
                  color: Colors.green[200]!,
                ),
                const SizedBox(width: 15),
                Switch(
                    value: Provider.of<ThemeService>(context).isDarkModeOn,
                    onChanged: (value) {
                      Provider.of<ThemeService>(context, listen: false)
                          .toggleTheme();
                    })
              ],
            ),
          ),
        )
        // body: const Center(
        //   child: Text(
        //     "Hello World",
        //     style: TextStyle(color: Colors.white, fontSize: 34),
        //  ),
        //),
        );
  }
}
