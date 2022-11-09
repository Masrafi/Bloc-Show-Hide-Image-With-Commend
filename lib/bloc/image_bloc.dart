import 'package:blocapp/bloc/image_event.dart';
import 'package:blocapp/bloc/image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageAddState()) {
    on<ImageAddEvent>((event, emit) {
      if (event.textAdd == "Add") {
        emit(ImageAddState());
      }
      if (event.textAdd == "Remove") {
        emit(ImageRemoveSate());
      }
    });
  }
}
