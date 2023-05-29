import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:hallo_doctor_doctor_app/app/modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:hallo_doctor_doctor_app/app/modules/login/views/widgets/submit_button.dart';
import 'package:hallo_doctor_doctor_app/app/styles/styles.dart';

class UpdateUsernamePage extends GetView<EditProfileController> {
  final _formKey = GlobalKey<FormBuilderState>();

  UpdateUsernamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Styles.primaryOrange,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Update Username'.tr,
            style: Styles.appBarTextStyle,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'What\'s Your New Usename ?'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
                  child: FormBuilderTextField(
                    // Handles Form Validation for First Name
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.email(context)
                    ]),
                    decoration:
                    InputDecoration(labelText: 'New Username'.tr),
                    name: 'Username',
                    //keyboardType: TextInputType.,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: submitButton(
                    onTap: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        controller
                            .updateUsername(_formKey.currentState!.value['Username']);
                      } else {
                        print("validation failed");
                      }
                    },
                    text: 'Save'.tr),
              )
            ],
          ),
        ));
  }
}
