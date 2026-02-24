import 'package:get/get.dart';

class BmiController extends GetxController {
  var weight = 0.0.obs;
  var feet = 0.0.obs;
  var inch = 0.0.obs;
  var bmiResult = 0.0.obs;
  var status = ''.obs;

  void calculateBmi() {
    if (weight.value == 0 || feet.value == 0 || inch.value == 0) {
      Get.snackbar('Error', 'Please fill all the fields');
      return;
    }
    double heightInMeters = (feet.value * 0.3048) + (inch.value * 0.0254);
    bmiResult.value = weight.value / (heightInMeters * heightInMeters);

    if (bmiResult.value < 18.5) {
      status.value = 'Underweight';
    } else if (bmiResult.value >= 18.5 && bmiResult.value < 24.9) {
      status.value = 'Normal weight';
    } else if (bmiResult.value >= 25 && bmiResult.value < 29.9) {
      status.value = 'Overweight';
    } else {
      status.value = 'Obesity';
    }

    // double heightInMeters = (feet.value * 0.3048) + (inch.value * 0.0254);
    // bmiResult.value = weight.value / (heightInMeters * heightInMeters);

    // if (bmiResult.value < 18.5) {
    //   status.value = 'Underweight';
    // } else if (bmiResult.value >= 18.5 && bmiResult.value < 24.9) {
    //   status.value = 'Normal weight';
    // } else if (bmiResult.value >= 25 && bmiResult.value < 29.9) {
    //   status.value = 'Overweight';
    // } else {
    //   status.value = 'Obesity';
    // }
  }
}
