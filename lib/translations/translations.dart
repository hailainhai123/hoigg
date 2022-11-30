import 'package:get/route_manager.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'vi_VN': {
          'login': 'Đăng nhập',
          'forgot_password': "Quên mật khẩu?",
          'password': "Mật khẩu",
          'email_phone': "Email",
          'fullName': 'Họ tên',
          're-password': 'Nhập lại mật khẩu',
          'sign_policy_first': 'Bằng việc đăng ký là bạn đã chấp nhận ',
          'sign_policy_mid': 'điều khoản và chính sách',
          'sign_policy_last': ' của chúng tôi ',
          'account_exist_first': 'Bạn đã có tài khoản? ',
          'account_exist_mid': 'Đăng nhập ngay',
          'account_exist_last': ' ngay',
          'register': "Đăng ký",
          'empty_phone_email': "Xin vui lòng nhập Email hoặc SĐT",
          'empty_password': "Xin vui lòng nhập mật khẩu",
          'wrong_email_phone_format': "Sai định dạng Email",
          'not_enough_coin':'Để đăng câu hỏi, bạn cần có tối thiểu 30 xu, đi đến nạp xu hoặc hoàn thành các nhiệm vụ để nhận thêm xu.'
        },
      };
}
