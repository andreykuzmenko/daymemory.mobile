// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get tab_timeline => 'Timeline';

  @override
  String get tab_questions => 'Questions';

  @override
  String get done_nav_button => 'Done';

  @override
  String get memory_hint_text => 'What is on your mind?';

  @override
  String get error_refresh => 'Oops, some error occured. Ty again';

  @override
  String get minutes_label => 'min';

  @override
  String get save_error_message => 'Ooops. Can\'t save changes.';

  @override
  String get finish_error_message => 'Oops. Can\'t finish the action.';

  @override
  String get settings_page_title => 'Settings';

  @override
  String get settings_app_version => 'Version: ';

  @override
  String get settings_passcode_page_title => 'Passcode';

  @override
  String get settings_passcode_require_after_page_title => 'Require Passcode';

  @override
  String get settings_passcode_require_after_explanation =>
      'After leaving the app, how long until a passcode is required for re-opening?';

  @override
  String get settings_passcode_option => 'Passcode & Biometrics';

  @override
  String get settings_passcode_require_after_option => 'Require after';

  @override
  String get settings_encryption_key_page_title => 'Encryption key';

  @override
  String get settings_encryption_key_placeholder => 'Enter the encryption key';

  @override
  String get settings_encryption_key_explanation =>
      'If you loose your private key, you will no be able to access the data anymore. Backup you key in the secured place.';

  @override
  String get settings_encryption_key_copy_option => 'Copy';

  @override
  String get settings_sync_page_title => 'Sync';

  @override
  String get settings_sync_enable_sync => 'Enable Sync';

  @override
  String get settings_sync_disable_sync => 'Disable Sync';

  @override
  String get settings_sync_encryption_explanation =>
      'End-to-end encryption utilizes a private key to encrypt your data before it reaches the cloud';

  @override
  String get settings_sync_disable_explanation =>
      'Disabling sync will not allow the app to backup your data in the cloud';

  @override
  String get settings_sync_enable_explanation =>
      'With sync enabled, your data will be synced with the cloud. Right now, it is only stored on your device';

  @override
  String get settings_account_page_title => 'Account';

  @override
  String get settings_enable_location_saving_option => 'Save location';

  @override
  String get settings_enable_screen_locking_option => 'Enable passcode';

  @override
  String get settings_biometric_title_option => 'Biometric unlock';

  @override
  String get settings_logout_option => 'Logout';

  @override
  String get settings_login_option => 'Login';

  @override
  String get settings_privacy_policy_option => 'Privacy Policy';

  @override
  String get settings_language_option => 'Language';

  @override
  String get settings_show_in_review_option => 'Notebooks';

  @override
  String get settings_review_period_option => 'Periods';

  @override
  String get settings_geo_location_disabled_error =>
      'Grant Location access to \'Always\' is settings.';

  @override
  String get settings_sync_option => 'Sync';

  @override
  String get settings_sync_status_option => 'Status';

  @override
  String get settings_sync_status_failed => 'Failed';

  @override
  String get settings_sync_status_on => 'On';

  @override
  String get settings_sync_status_off => 'Off';

  @override
  String get settings_encryption_set_key => 'Set Encryption Key';

  @override
  String get settings_encryption_view_key => 'View Encryption Key';

  @override
  String get settings_encryption_create_key => 'Enable Encryption';

  @override
  String get settings_clear_data => 'Clear all data';

  @override
  String get settings_clear_cache => 'Clear cache';

  @override
  String get settings_tags_option => 'Tags';

  @override
  String get settings_syncing_in_progress => 'Syncing...';

  @override
  String get settings_last_sync_time => 'Last sync time:';

  @override
  String get settings_signin_option => 'Sign in';

  @override
  String get settings_sync_never_status => 'Never';

  @override
  String get settings_clear_data_title => 'Clearing data';

  @override
  String get settings_logged_in_as => 'Logged in as:';

  @override
  String get settings_clear_data_message =>
      'Are you sure you want to remove all data?';

  @override
  String get settings_blocking_explanation =>
      'Secure access to the app with a passcode or biometrics';

  @override
  String get settings_show_in_review_explanation => 'Review memories';

  @override
  String get settings_intro_option => 'App intro';

  @override
  String get settings_send_email_to_developers_option =>
      'Write an email to developers';

  @override
  String get settings_account_email_option => 'Email';

  @override
  String get settings_account_name_option => 'Name';

  @override
  String get settings_account_explanation => 'Day Memory account information';

  @override
  String get settings_account_clear_data_explanation =>
      'Make sure that your data is synced with the cloud before deleting it. Otherwise, you won\'t be able to restore it.';

  @override
  String get settings_sync_error_title => 'Synchronization failed';

  @override
  String get settings_sync_error_generic_message =>
      'Unknown error has occured. Please try again.';

  @override
  String get settings_select_theme_option => 'Themes';

  @override
  String get settings_select_theme_title => 'Select a theme';

  @override
  String get settings_theme_mode_system => 'Auto';

  @override
  String get settings_theme_mode_light => 'Light';

  @override
  String get settings_theme_mode_dark => 'Dark';

  @override
  String get settings_encryption_key_absent_error_title =>
      'Encryption key is empty';

  @override
  String get settings_encryption_key_absent_error_message =>
      'Data encryption in your account is enabled, but the encryption key is empty. Please, enter the encryption key manually.';

  @override
  String get settings_encryption_key_invalid_error_title =>
      'Invalid Encryption key';

  @override
  String get settings_encryption_key_invalid_error_message =>
      'The encryption key is invalid. Please check whether it\'s correctly entered.';

  @override
  String get settings_token_expired_error_title => 'Token expired';

  @override
  String get settings_token_expired_error_message =>
      'Sync to the cloud is stopped. Please sign in again and resume the sync process.';

  @override
  String get settings_passcode_time_immediately => 'Immediately';

  @override
  String get settings_passcode_time_1minute => '1 minute';

  @override
  String get settings_passcode_time_3minutes => '3 minutes';

  @override
  String get settings_passcode_time_5minutes => '5 minutes';

  @override
  String get settings_passcode_time_10minutes => '10 minutes';

  @override
  String get settings_passcode_time_30minutes => '30 minutes';

  @override
  String get settings_passcode_time_1hour => '1 hour';

  @override
  String get no_review_items => 'No items to review yet';

  @override
  String get review_yearly => 'Yearly';

  @override
  String get review_half_year => 'Half a year ago';

  @override
  String get review_month => 'A month ago';

  @override
  String get review_three_months => 'Three months ago';

  @override
  String get review_10_days => '10 days ago';

  @override
  String get review_7_days => '7 days ago';

  @override
  String get review_one_year => 'year ago';

  @override
  String get review_two_four_years => 'years ago';

  @override
  String get review_many_years => 'years ago';

  @override
  String get sync_loading_data => 'Loading data...';

  @override
  String get sync_uploading_data => 'Uploading data...';

  @override
  String sync_uploading_new_data(Object count) {
    return 'Uploading new data. Remaining: $count';
  }

  @override
  String sync_uploading_modified_data(Object count) {
    return 'Uploading modified data. Remaining: $count';
  }

  @override
  String get sync_loading_tags => 'Loading tags...';

  @override
  String get sync_loading_notebooks => 'Loading notebooks...';

  @override
  String sync_loading_notes(Object count) {
    return 'Loading notes. Remaining: $count';
  }

  @override
  String get review_memories_page_title => 'Memories';

  @override
  String get settings_select_language_title => 'Select a language';

  @override
  String get edit_tags_title => 'Tags';

  @override
  String get edit_tags_add_tag => 'Add tag';

  @override
  String get edit_tags_placeholder => 'Enter a tag';

  @override
  String get tag_family => 'Family';

  @override
  String get tag_work => 'Work';

  @override
  String get tag_life => 'Life';

  @override
  String get notebook_general => '📘 General';

  @override
  String get side_menu_settings => 'Settings';

  @override
  String get side_menu_review_memories => 'Review memories';

  @override
  String get side_menu_new_notebook => 'New notebook';

  @override
  String get side_menu_notebooks => 'Notebooks';

  @override
  String get remove_note_message => 'Confirm deletion';

  @override
  String get remove_question_list_message => 'Confirm deletion';

  @override
  String get select_tags_title => 'Select tags';

  @override
  String get new_tag => 'New tag';

  @override
  String get no_notes => 'No memories yet';

  @override
  String get no_notebook_notes =>
      'You don\'t have notebooks. Please start with creating one.';

  @override
  String get note_delete_title => 'Delete note';

  @override
  String get note_delete_message => 'Are you sure you want to delete the item?';

  @override
  String get note_discard_changes_title => 'Unsaved changes';

  @override
  String get note_discard_changes_message =>
      'Are you sure you want to discard changes?';

  @override
  String get note_use_photo_datetime => 'Use photo date and time?';

  @override
  String get notebook_delete_title => 'Delete notebook';

  @override
  String get notebook_delete_message =>
      'Are you sure you want to delete the item?';

  @override
  String get show_more => 'Показати більше...';

  @override
  String get edit_notebook_delete => 'Delete notebook';

  @override
  String get edit_notebook_new_title => 'New notebook';

  @override
  String get edit_notebook_edit_title => 'Edit notebook';

  @override
  String get edit_notebook_title_placeholder => 'Enter title';

  @override
  String get edit_tag_new_title => 'New tag';

  @override
  String get edit_tag_edit_title => 'Edit tag';

  @override
  String get edit_tag_title_placeholder => 'Enter title';

  @override
  String get edit_notebook_sortby_option => 'Sort notes by';

  @override
  String get edit_notebook_sortby_title => 'Sort by';

  @override
  String get edit_notebook_sortby_created_date => 'Entry Date';

  @override
  String get edit_notebook_sortby_modified_date => 'Edit Date';

  @override
  String get all_notes => 'All notes';

  @override
  String get note_options_title => 'Options';

  @override
  String get note_select_notebook_title => 'Select a notebook';

  @override
  String get note_options_date_label => 'Date';

  @override
  String get note_options_tags_label => 'Tags';

  @override
  String get note_options_no_tags_label => 'No tags';

  @override
  String get note_options_notebook_label => 'Notebook';

  @override
  String get note_options_location_label => 'Location';

  @override
  String get note_options_no_location_text => 'No location';

  @override
  String get sort_notebooks_title => 'Sort notebooks';

  @override
  String get sort_notebooks_no_items => 'You don\'t have notebooks';

  @override
  String get show_in_review_notebooks_title => 'Select notebooks';

  @override
  String get show_in_review_notebooks_no_items => 'You don\'t have notebooks';

  @override
  String get select_review_period_title => 'Select periods';

  @override
  String get question_lists_page_title => 'Questions';

  @override
  String get menu_edit => 'Edit';

  @override
  String get menu_delete => 'Delete';

  @override
  String get menu_cancel => 'Cancel';

  @override
  String get loading => 'Loading, please wait';

  @override
  String get open_settings => 'Open Settings';

  @override
  String get locations_blocked_title => 'Can\'t track location';

  @override
  String get locations_blocked_message =>
      'Please open Settings and allow usage of locations.';

  @override
  String get clear_cache_title => 'Clear cache';

  @override
  String get clear_cache_message => 'The cache has been cleared.';

  @override
  String get biometric_blocked_title => 'Can\'t use biometric';

  @override
  String get biometric_blocked_message =>
      'Please open Settings and allow usage of biometric.';

  @override
  String get enter_pin_title => 'Enter passcode';

  @override
  String welcome(Object appName) {
    return 'Welcome to $appName';
  }

  @override
  String get email_field_label => 'E-mail';

  @override
  String get email_field_placeholder => 'Enter your e-mail';

  @override
  String get password_field_label => 'Password';

  @override
  String get password_field_placeholder => 'Enter your password';

  @override
  String get code_field_label => 'Code';

  @override
  String get code_field_placeholder => 'Enter the code';

  @override
  String get first_name_field_label => 'First Name';

  @override
  String get first_name_field_placeholder => 'Enter your first name';

  @override
  String get last_name_field_label => 'Last name';

  @override
  String get last_name_field_placeholder => 'Enter your last name';

  @override
  String get terms_of_use => 'Terms of use';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get login_page_title => 'Login';

  @override
  String get login_page_login_button => 'Login';

  @override
  String get login_page_forgot_password_button => 'Forgot your password?';

  @override
  String get login_page_create_account_button => 'Create an account';

  @override
  String get login_page_and_separator => 'and';

  @override
  String get signup_page_title => 'Sign up';

  @override
  String get signup_page_signup_button => 'Sign up';

  @override
  String get signup_page_and_separator => 'and';

  @override
  String get forgot_password_page_title => 'Restore password';

  @override
  String get forgot_password_page_instruction =>
      'Enter your user account\'s verified email address and we will send you a code.';

  @override
  String get forgot_password_page_button => 'Restore password';

  @override
  String get restore_password_page_title => 'Change password';

  @override
  String get restore_password_page_instruction =>
      'Enter the code that we have sent to your e-mail and a new password.';

  @override
  String get restore_password_page_button => 'Change password';

  @override
  String get loading_message => 'loading...';

  @override
  String get required_field_validator => 'Required field';

  @override
  String get invalid_email_password => 'Invalid e-mail or password';

  @override
  String get email_is_in_use_error => 'E-mail is already in use';

  @override
  String get short_password_validator =>
      'Password should be at least 7 symbols';

  @override
  String get invalid_email_validator => 'Invalid e-mail format';

  @override
  String get create_account_error => 'Can\'t create an account. Try again.';

  @override
  String get restore_password_error => 'Can\'t restore password. Try again.';

  @override
  String get user_is_not_found => 'The user with such an e-mail is not found';

  @override
  String get somethingWrong => 'Oops, something went wrong. Please try again.';

  @override
  String get gotIt => 'OK';

  @override
  String get error => 'Error';

  @override
  String get photo_library_no_access =>
      'Please open Settings and allow usage of Photo library';

  @override
  String get jailbrakeTitle => 'Rooted device';

  @override
  String get jailbrakeMessage =>
      'This application cannot be used on a rooted device.';

  @override
  String get skip => 'Skip';

  @override
  String get play_store => 'Play Store';

  @override
  String get apple_store => 'Apple Store';

  @override
  String get maintenance_mode_title => 'Application under Maintenance';

  @override
  String get maintenance_mode_description =>
      'We are performing scheduled maintenance. We will be back on-line shortly!';

  @override
  String get yes => 'Yes';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Close';

  @override
  String get delete => 'Delete';

  @override
  String get create_pin_title => 'Enter new passcode';

  @override
  String get confirm_pin_title => 'Re-enter new passcode';

  @override
  String get biometric_auth_subtitle => 'Sign in to the app without a PIN code';

  @override
  String get allow_biometric_auth => 'Allow Biometric';

  @override
  String get biometrics_auth_reason => 'Unlock using Biometric';

  @override
  String get no_internet => 'There is no Internet connection';

  @override
  String get retry => 'Retry';

  @override
  String get next => 'Next';

  @override
  String get get_started => 'Get started';

  @override
  String get tutorial2_title => 'Write your story';

  @override
  String get tutorial3_title => 'Review memories';

  @override
  String get tutorial4_title => 'Write from any device';

  @override
  String get tutorial5_title => 'Protect your data';

  @override
  String get tutorial1_subtitle =>
      'Your personal notebook that is always with you';

  @override
  String get tutorial2_subtitle => 'Preserve important events from your life';

  @override
  String get tutorial3_subtitle =>
      'Remember everything that happened in your life.';

  @override
  String get tutorial4_subtitle =>
      'Download for free on iPhone, iPad, Android, Mac and Windows';

  @override
  String get tutorial5_subtitle =>
      'Configure a passcode and biometric protection to keep your data safe';
}
