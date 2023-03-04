import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/face_id/face_id_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../gen/assets.gen.dart';
import '../theme/app_theme_widget.dart';

class FaceIdWidget extends StatelessWidget {
  final FaceIdViewModel viewModel;

  const FaceIdWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.svg.faceId,
                color: appTheme.black,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                '${viewModel.allowFaceIdTitle}?',
                style: appTheme.semiBold24,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
                child: Text(
                  viewModel.subTitle,
                  style: appTheme.regular16.copyWith(
                    color: appTheme.secondaryTextColor,
                  ),
                ),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: SizedBox(
              height: 158,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SimpleFilledButtonWidget(
                    click: viewModel.allowCommand,
                    textColor: appTheme.white,
                    backgroundColor: appTheme.colorAccent,
                    text: viewModel.allowFaceIdTitle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: viewModel.skipCommand.command,
                      child: Text(
                        viewModel.skipTitle,
                        style: appTheme.semiBold16.copyWith(
                          color: appTheme.colorAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
