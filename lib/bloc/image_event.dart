abstract class ImageEvent {}

class ImageAddEvent extends ImageEvent {
  String textAdd;
  ImageAddEvent({required this.textAdd});
}
