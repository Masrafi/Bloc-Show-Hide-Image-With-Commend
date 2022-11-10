import 'package:blocapp/withCubit/cubit/image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenCubit extends StatefulWidget {
  const HomeScreenCubit({Key? key}) : super(key: key);

  @override
  State<HomeScreenCubit> createState() => _HomeScreenCubitState();
}

class _HomeScreenCubitState extends State<HomeScreenCubit> {
  var textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: textController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (textController.text == "Add") {
                  BlocProvider.of<ImageCubit>(context)
                      .showImage(textController.text);
                }
                if (textController.text == "Remove") {
                  BlocProvider.of<ImageCubit>(context)
                      .hideImage(textController.text);
                }

                textController.clear();
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<ImageCubit, String>(builder: (context, state) {
              if (state == "Add") {
                return Image.asset('assets/mas.jpeg');
              }

              if (state == "Remove") {
                return Center(child: Text("Image is hide"));
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
