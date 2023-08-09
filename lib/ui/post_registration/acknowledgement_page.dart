import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:registration_client/provider/global_provider.dart';
import 'package:registration_client/provider/registration_task_provider.dart';
import 'package:registration_client/utils/app_style.dart';

class AcknowledgementPage extends StatefulWidget {
  const AcknowledgementPage({super.key});

  @override
  State<AcknowledgementPage> createState() => _AcknowledgementPageState();
}

class _AcknowledgementPageState extends State<AcknowledgementPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          SizedBox(
            height: 23.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Registration Acknowledgement',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppStyle.appBlackShade1,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 42.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                    color: AppStyle.appSolidPrimary,
                    border: Border.all(
                      width: 1.w,
                      color: AppStyle.appBlueShade1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PRINT',
                      style: AppStyle.mobileButtonText,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 33.h,
          ),
          Expanded(
            child: InAppWebView(
              initialData: InAppWebViewInitialData(
                data: context.watch<RegistrationTaskProvider>().previewTemplate,
              ),
            ),
          ),  
        ],
      ),
    );
  }
}