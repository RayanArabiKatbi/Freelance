import 'package:changehorizonsfreelancer/ui/screens/HandOver/handOver_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/chat/chat_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/fill_forms/first_fill_form.dart';
import 'package:changehorizonsfreelancer/ui/screens/fill_forms/job_add.dart';
import 'package:changehorizonsfreelancer/ui/screens/fill_forms/second_fill_form.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/about.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/contact_us.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/delete_account.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/delete_alert.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/help.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/notification_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/terms_conditions.dart';
import 'package:changehorizonsfreelancer/ui/screens/messages/add_service.dart';
import 'package:changehorizonsfreelancer/ui/screens/messages/message_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/messages/messages.dart';
import 'package:changehorizonsfreelancer/ui/screens/my_favorites/my_favorites.dart';
import 'package:changehorizonsfreelancer/ui/screens/profile/profile_first.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/accept_requests.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/awaiting_choosing.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/completed_requests.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/default_request_box.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/refuse_requests.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/underway_requests.dart';
import 'package:changehorizonsfreelancer/ui/screens/services/review_service/freelancer_review.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/language_choose.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/language_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/missions_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/second_info_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/signup2_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/signup_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/welcome_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/add_stage.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/rate_resieve.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/receive_level.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/send.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/send_project.dart';
import 'package:changehorizonsfreelancer/ui/screens/stages_oforder_execution/start_level.dart';
import 'package:changehorizonsfreelancer/ui/screens/update_phone_number/check_phone.dart';
import 'package:changehorizonsfreelancer/ui/screens/update_phone_number/confirm_alert.dart';
import 'package:changehorizonsfreelancer/ui/screens/update_phone_number/main_update.dart';
import 'package:changehorizonsfreelancer/ui/screens/update_phone_number/ok_change.dart';
import 'package:changehorizonsfreelancer/ui/screens/update_phone_number/resend_code.dart';
import 'package:changehorizonsfreelancer/ui/screens/wallet/my_wallet.dart';
import 'package:changehorizonsfreelancer/ui/widgets/filled_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:changehorizonsfreelancer/ui/widgets/text_with_link.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'ui/widgets/note_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: standardTheme,
      home: About(),
    );
  }
}

//WelcomeScreen
