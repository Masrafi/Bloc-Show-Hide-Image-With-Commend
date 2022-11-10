import 'package:blocapp/withBloc/bloc/image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/image_bloc.dart';
import 'bloc/image_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                BlocProvider.of<ImageBloc>(context)
                    .add(ImageAddEvent(textAdd: textController.text));
                textController.clear();
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
              if (state is ImageRemoveSate) {
                return const Center(child: Text("Image is hide"));
              }
              if (state is ImageAddState) {
                return Image.asset('assets/mas.jpeg');
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
