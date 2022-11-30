import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoigg/constants/theme.dart';

class AccountController extends GetxController {
  var indexPage = 0.obs;

  void showChangePassword(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                    // height: height - 400,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(16),
                    width: width - 20,
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 16.0),
                            child: Text('Đặt mật khẩu mới',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                label: Text("Mật khẩu cũ")),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  label: Text("Mật khẩu mới")),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                label: Text("Nhập lại mật khẩu mới")),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.grey),
                                      child: const Text('Quay lại'))),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('Đổi mật khẩu'))),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ));
  }

  void deletePostSave(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                    // height: height - 400,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(16),
                    width: width - 20,
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: Text('Xoá bài viết?',
                                style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: primaryBlue,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                                'Bạn có chắc chắn muốn xoá bài viết. Sau khi bạn xoá, mọi thông tin về bài viết sẽ bị mất vĩnh viễn.',
                                textAlign: TextAlign.center),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: kSubmainColor),
                                      child: const Text('Quay lại'))),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('Đổi mật khẩu'))),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ));
  }

  void deleteMusicSave(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: Builder(
            builder: (context) {
              // Get available height and width of the build area of this widget. Make a choice depending on the size.
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return Container(
                // height: height - 400,
                color: Colors.transparent,
                padding: const EdgeInsets.all(16),
                width: width - 20,
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text('Xoá bài viết?',
                            style: GoogleFonts.openSans(
                                fontSize: 20,
                                color: primaryBlue,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            'Bạn có chắc chắn muốn xoá bài viết. Sau khi bạn xoá, mọi thông tin về bài viết sẽ bị mất vĩnh viễn.',
                            textAlign: TextAlign.center),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: kSubmainColor),
                                  child: const Text('Quay lại'))),
                          const SizedBox(width: 16),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Đổi mật khẩu'))),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  void deletePodCastSave(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: Builder(
            builder: (context) {
              // Get available height and width of the build area of this widget. Make a choice depending on the size.
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return Container(
                // height: height - 400,
                color: Colors.transparent,
                padding: const EdgeInsets.all(16),
                width: width - 20,
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text('Xoá bài viết?',
                            style: GoogleFonts.openSans(
                                fontSize: 20,
                                color: primaryBlue,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            'Bạn có chắc chắn muốn xoá bài viết. Sau khi bạn xoá, mọi thông tin về bài viết sẽ bị mất vĩnh viễn.',
                            textAlign: TextAlign.center),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: kSubmainColor),
                                  child: const Text('Quay lại'))),
                          const SizedBox(width: 16),
                          Expanded(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Đổi mật khẩu'))),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }


}
