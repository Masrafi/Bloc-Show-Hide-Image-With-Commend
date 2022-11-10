import 'package:flutter_bloc/flutter_bloc.dart';

class ImageCubit extends Cubit<String> {
  ImageCubit() : super("Add");

  void showImage(String text) {
    emit(text);
  }

  void hideImage(String text) {
    emit(text);
  }
}
