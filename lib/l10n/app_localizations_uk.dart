// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get tab_timeline => 'Записи';

  @override
  String get tab_questions => 'Питання';

  @override
  String get done_nav_button => 'Зберегти';

  @override
  String get memory_hint_text => 'Що у вас на думці?';

  @override
  String get error_refresh => 'Виникла помилка. Спробуйте ще раз';

  @override
  String get minutes_label => 'хв';

  @override
  String get save_error_message => 'Оой. Ми не змогли зберегти зміни.';

  @override
  String get finish_error_message => 'Оой. Ми не змогли виконати дію.';

  @override
  String get settings_page_title => 'Налаштування';

  @override
  String get settings_app_version => 'Версія: ';

  @override
  String get settings_passcode_page_title => 'Пін-код';

  @override
  String get settings_passcode_require_after_page_title => 'Блокування екрану';

  @override
  String get settings_passcode_require_after_explanation =>
      'Через який час після покидання додатку ви б хотіли заблокувати екран?';

  @override
  String get settings_passcode_option => 'Пін-код і біометрика';

  @override
  String get settings_passcode_require_after_option => 'Блокувати через';

  @override
  String get settings_encryption_key_page_title => 'Ключ шифрування';

  @override
  String get settings_encryption_key_placeholder => 'Введіть ключ шифрування';

  @override
  String get settings_encryption_key_explanation =>
      'Якщо ви втратите ключ шифрування, ви не зможете більше отримати доступ до своїх даних. Збережіть ваш ключ в надійному місці.';

  @override
  String get settings_encryption_key_copy_option => 'Скопіювати';

  @override
  String get settings_sync_page_title => 'Синхронізація';

  @override
  String get settings_sync_enable_sync => 'Включити синхронізацію';

  @override
  String get settings_sync_disable_sync => 'Виключити синхронізацію';

  @override
  String get settings_sync_encryption_explanation =>
      'End-to-end шифрування використовує приватий ключ для шифрування даних перед тим як їх буде надіслано на сервер';

  @override
  String get settings_sync_disable_explanation =>
      'При виключеній синхронізації ваші дані будуть зберігатись лише на даному пристрої без можливості відновлення';

  @override
  String get settings_sync_enable_explanation =>
      'Включена синхронізація дозволяє зберігати ваші дані на сервері. В даний момент інформація зберігається лише на поточному пристрої';

  @override
  String get settings_account_page_title => 'Профіль';

  @override
  String get settings_enable_location_saving_option => 'Зберігати локацію';

  @override
  String get settings_enable_screen_locking_option => 'Включити пін-код';

  @override
  String get settings_biometric_title_option =>
      'Біометричне розблокування екрану';

  @override
  String get settings_logout_option => 'Вийти';

  @override
  String get settings_login_option => 'Увійти';

  @override
  String get settings_privacy_policy_option => 'Політика конфіденційності';

  @override
  String get settings_language_option => 'Мова';

  @override
  String get settings_show_in_review_option => 'Блокноти';

  @override
  String get settings_review_period_option => 'Періоди';

  @override
  String get settings_geo_location_disabled_error =>
      'Дозвольте використання місця знаходження в налаштуваннях.';

  @override
  String get settings_sync_option => 'Синхронізація';

  @override
  String get settings_sync_status_option => 'Статус';

  @override
  String get settings_sync_status_failed => 'Помилка';

  @override
  String get settings_sync_status_on => 'Вкл.';

  @override
  String get settings_sync_status_off => 'Викл.';

  @override
  String get settings_encryption_set_key => 'Ввести ключ шифрування';

  @override
  String get settings_encryption_view_key => 'Переглянути ключ';

  @override
  String get settings_encryption_create_key => 'Включити шифрування';

  @override
  String get settings_clear_data => 'Видалити дані';

  @override
  String get settings_clear_cache => 'Очистити кеш';

  @override
  String get settings_tags_option => 'Теги';

  @override
  String get settings_syncing_in_progress => 'Синхронізую...';

  @override
  String get settings_last_sync_time => 'Час останнього збереження:';

  @override
  String get settings_signin_option => 'Вхід в обліковий запис';

  @override
  String get settings_sync_never_status => 'Ніколи';

  @override
  String get settings_clear_data_title => 'Видалення даних';

  @override
  String get settings_logged_in_as => 'Ви увійшли як:';

  @override
  String get settings_clear_data_message =>
      'Ви впевнені, що хочете очистити пристрій?';

  @override
  String get settings_blocking_explanation =>
      'Захистіть доступ до нотаток за допомогою пароля або біометрики';

  @override
  String get settings_show_in_review_explanation => 'Перегляд спогадів';

  @override
  String get settings_intro_option => 'Знайомство з додатком';

  @override
  String get settings_send_email_to_developers_option =>
      'Написати листа розробникам';

  @override
  String get settings_account_email_option => 'Email';

  @override
  String get settings_account_name_option => 'Ім\'я';

  @override
  String get settings_account_explanation => 'Інформація профілю Day Memory';

  @override
  String get settings_account_clear_data_explanation =>
      'Перед видаленням даних важливо впевнитись, що ваші дані синхронізовані з сервером. В іншому випадку, ви не зможете їх більше відновити.';

  @override
  String get settings_sync_error_title => 'Помилка синхронізації';

  @override
  String get settings_sync_error_generic_message =>
      'Виникла невідома помилка. Спробуйте ще раз.';

  @override
  String get settings_select_theme_option => 'Теми';

  @override
  String get settings_select_theme_title => 'Виберіть тему';

  @override
  String get settings_theme_mode_system => 'Автоматична';

  @override
  String get settings_theme_mode_light => 'Світла';

  @override
  String get settings_theme_mode_dark => 'Темна';

  @override
  String get settings_encryption_key_absent_error_title =>
      'Відсутній ключ шифрування';

  @override
  String get settings_encryption_key_absent_error_message =>
      'У вашому профілі увімкнено шифрування даних, але відсутній ключ шифрування. Будь ласка, введіть ключ шифрування.';

  @override
  String get settings_encryption_key_invalid_error_title =>
      'Невірний ключ шифрування';

  @override
  String get settings_encryption_key_invalid_error_message =>
      'Перевірте чи ключ шифрування було введено коректно.';

  @override
  String get settings_token_expired_error_title => 'Час дії токену вийшов';

  @override
  String get settings_token_expired_error_message =>
      'Синхронізація даних з сервером призупинена. Увійдіть до свого профілю для відновлення процесу синхронізації.';

  @override
  String get settings_passcode_time_immediately => 'Відразу';

  @override
  String get settings_passcode_time_1minute => '1 хвилина';

  @override
  String get settings_passcode_time_3minutes => '3 хвилини';

  @override
  String get settings_passcode_time_5minutes => '5 хвилин';

  @override
  String get settings_passcode_time_10minutes => '10 хвилин';

  @override
  String get settings_passcode_time_30minutes => '30 хвилин';

  @override
  String get settings_passcode_time_1hour => '1 година';

  @override
  String get no_review_items => 'У вас немає спогадів для перегляду';

  @override
  String get review_yearly => 'Щорічно';

  @override
  String get review_half_year => 'Півроку тому';

  @override
  String get review_month => 'Місяць тому';

  @override
  String get review_three_months => 'Три місяці тому';

  @override
  String get review_10_days => '10 днів тому';

  @override
  String get review_7_days => '7 днів тому';

  @override
  String get review_one_year => 'рік тому';

  @override
  String get review_two_four_years => 'роки тому';

  @override
  String get review_many_years => 'років тому';

  @override
  String get sync_loading_data => 'Скачування даних...';

  @override
  String get sync_uploading_data => 'Завантаження даних...';

  @override
  String sync_uploading_new_data(Object count) {
    return 'Завантаження нових даних. Залишилось: $count';
  }

  @override
  String sync_uploading_modified_data(Object count) {
    return 'Завантаження модифікованих даних. Залишилось: $count';
  }

  @override
  String get sync_loading_tags => 'Скачування тегів...';

  @override
  String get sync_loading_notebooks => 'Скачування блокнотів...';

  @override
  String sync_loading_notes(Object count) {
    return 'Скачування нотаток. Залишилось: $count';
  }

  @override
  String get review_memories_page_title => 'Спогади';

  @override
  String get settings_select_language_title => 'Виберіть мову';

  @override
  String get edit_tags_title => 'Теги';

  @override
  String get edit_tags_add_tag => 'Додати тег';

  @override
  String get edit_tags_placeholder => 'Введіть назву';

  @override
  String get tag_family => 'Сім\'я';

  @override
  String get tag_work => 'Робота';

  @override
  String get tag_life => 'Життя';

  @override
  String get notebook_general => '📘 Загальні';

  @override
  String get side_menu_settings => 'Налаштування';

  @override
  String get side_menu_review_memories => 'Переглянути спогади';

  @override
  String get side_menu_new_notebook => 'Новий блокнот';

  @override
  String get side_menu_notebooks => 'Блокноти';

  @override
  String get remove_note_message => 'Ви дійсно хочете видали запис?';

  @override
  String get remove_question_list_message =>
      'Ви дійсно хочете видали список питань?';

  @override
  String get select_tags_title => 'Вибрати теги';

  @override
  String get new_tag => 'Новий тег';

  @override
  String get no_notes => 'Нотатки відсутні';

  @override
  String get no_notebook_notes =>
      'У вас немає блокнотів. Розпочніть зі створення першого.';

  @override
  String get note_delete_title => 'Видалення нотатки';

  @override
  String get note_delete_message => 'Ви впевнені, що хочете видалити нотатку?';

  @override
  String get note_discard_changes_title => 'Незбережені зміни';

  @override
  String get note_discard_changes_message =>
      'Ви впевнені, що бажаєте скасувати зміни?';

  @override
  String get note_use_photo_datetime => 'Використовувати дату і час із фото?';

  @override
  String get notebook_delete_title => 'Видалення блокноту';

  @override
  String get notebook_delete_message =>
      'Ви впевнені, що хочете видалити блокнот?';

  @override
  String get show_more => 'Показати більше...';

  @override
  String get edit_notebook_delete => 'Видалити блокнот';

  @override
  String get edit_notebook_new_title => 'Новий блокнот';

  @override
  String get edit_notebook_edit_title => 'Редагування блокноту';

  @override
  String get edit_notebook_title_placeholder => 'Введіть заголовок';

  @override
  String get edit_tag_new_title => 'Новий тег';

  @override
  String get edit_tag_edit_title => 'Редагування тегу';

  @override
  String get edit_tag_title_placeholder => 'Введіть назву';

  @override
  String get edit_notebook_sortby_option => 'Сортування нотаток';

  @override
  String get edit_notebook_sortby_title => 'Сортування нотаток';

  @override
  String get edit_notebook_sortby_created_date => 'Дата створення';

  @override
  String get edit_notebook_sortby_modified_date => 'Дата редагування';

  @override
  String get all_notes => 'Всі записи';

  @override
  String get note_options_title => 'Опції';

  @override
  String get note_select_notebook_title => 'Вибрати блокнот';

  @override
  String get note_options_date_label => 'Дата';

  @override
  String get note_options_tags_label => 'Теги';

  @override
  String get note_options_no_tags_label => 'Теги відсутні';

  @override
  String get note_options_notebook_label => 'Блокнот';

  @override
  String get note_options_location_label => 'Місце';

  @override
  String get note_options_no_location_text => 'Немає збереженого місця';

  @override
  String get sort_notebooks_title => 'Сортувати ноубуки';

  @override
  String get sort_notebooks_no_items => 'У вас немає блокнотів';

  @override
  String get show_in_review_notebooks_title => 'Виберіть блокноти';

  @override
  String get show_in_review_notebooks_no_items => 'У вас немає блокнотів';

  @override
  String get select_review_period_title => 'Виберіть періоди';

  @override
  String get question_lists_page_title => 'Питання';

  @override
  String get menu_edit => 'Редагувати';

  @override
  String get menu_delete => 'Видалити';

  @override
  String get menu_cancel => 'Відмінити';

  @override
  String get loading => 'Завантажуємо дані';

  @override
  String get open_settings => 'Відкрити налаштування';

  @override
  String get locations_blocked_title => 'Неможливо визначити локацію';

  @override
  String get locations_blocked_message =>
      'Відкрийте Налаштування та дозвольте використання локацій.';

  @override
  String get clear_cache_title => 'Очистка кешу';

  @override
  String get clear_cache_message => 'Кеш був успішно очищений';

  @override
  String get biometric_blocked_title => 'Неможливо використати біометрику';

  @override
  String get biometric_blocked_message =>
      'Відкрийте Налаштування та дозвольте використання біометрики.';

  @override
  String get enter_pin_title => 'Введіть ПІН-код';

  @override
  String welcome(Object appName) {
    return 'Вітаємо в $appName';
  }

  @override
  String get email_field_label => 'E-mail';

  @override
  String get email_field_placeholder => 'Введіть ваш e-mail';

  @override
  String get password_field_label => 'Пароль';

  @override
  String get password_field_placeholder => 'Введіть ваш password';

  @override
  String get code_field_label => 'Код';

  @override
  String get code_field_placeholder => 'Введіть код';

  @override
  String get first_name_field_label => 'Ім\'я';

  @override
  String get first_name_field_placeholder => 'Введіть ваше ім\'я';

  @override
  String get last_name_field_label => 'Прізвище';

  @override
  String get last_name_field_placeholder => 'Введіть ваше прізвище';

  @override
  String get terms_of_use => 'Terms of use';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get login_page_title => 'Вхід';

  @override
  String get login_page_login_button => 'Логін';

  @override
  String get login_page_forgot_password_button => 'Забули ваш пароль?';

  @override
  String get login_page_create_account_button => 'Створити обліковий запис';

  @override
  String get login_page_and_separator => 'та';

  @override
  String get signup_page_title => 'Реєстрація';

  @override
  String get signup_page_signup_button => 'Реєстрація';

  @override
  String get signup_page_and_separator => 'та';

  @override
  String get forgot_password_page_title => 'Відновлення паролю';

  @override
  String get forgot_password_page_instruction =>
      'Введіть ваш e-mail і ми надішлемо вам код на пошту';

  @override
  String get forgot_password_page_button => 'Відновити пароль';

  @override
  String get restore_password_page_title => 'Зміна паролю';

  @override
  String get restore_password_page_instruction =>
      'Введіть код, який ми надіслали на вашу пошту, та новий пароль';

  @override
  String get restore_password_page_button => 'Змінити пароль';

  @override
  String get loading_message => 'завантаження...';

  @override
  String get required_field_validator => 'Обов\'язкове поле';

  @override
  String get invalid_email_password => 'Невірний e-mail чи пароль';

  @override
  String get email_is_in_use_error => 'Даний e-mail вже використовується';

  @override
  String get short_password_validator => 'Пароль має бути мінімум 7 символів';

  @override
  String get invalid_email_validator => 'Невірний формат e-mail';

  @override
  String get create_account_error =>
      'Не вдалось створити обліковий запис. Спробуйте ще раз';

  @override
  String get restore_password_error =>
      'Не вдалось відновити пароль. Спробуйте ще раз';

  @override
  String get user_is_not_found => 'Користувача з таким e-mail не знайдено';

  @override
  String get somethingWrong => 'Ой, щось пішло не так. Спробуйте ще раз.';

  @override
  String get gotIt => 'Зрозуміло!';

  @override
  String get error => 'Помилка';

  @override
  String get photo_library_no_access =>
      'Відкрийте Налаштування і дозвольте використання Фото';

  @override
  String get jailbrakeTitle => 'Пристрій з Root-доступом';

  @override
  String get jailbrakeMessage =>
      'Даний додаток неможливо використовувати на пристрої з root-доступом.';

  @override
  String get skip => 'Пропустити';

  @override
  String get play_store => 'Play Store';

  @override
  String get apple_store => 'Apple Store';

  @override
  String get maintenance_mode_title => 'Додаток на обслуговуванні';

  @override
  String get maintenance_mode_description =>
      'Ми виконуємо заплановане обслуговування. Ми скоро повернемось!';

  @override
  String get yes => 'Так';

  @override
  String get cancel => 'Відмінити';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Закрити';

  @override
  String get delete => 'Видалити';

  @override
  String get create_pin_title => 'Придумайте ПІН-код';

  @override
  String get confirm_pin_title => 'Підтвердіть ПІН-код';

  @override
  String get biometric_auth_subtitle => 'Увійти додатку без введення ПІН-коду';

  @override
  String get allow_biometric_auth => 'Дозволити використання біометріки';

  @override
  String get biometrics_auth_reason => 'Розблокувати за допомогою біометрики';

  @override
  String get no_internet => 'Немає інтернет з\'єднання';

  @override
  String get retry => 'Повторити';

  @override
  String get next => 'Далі';

  @override
  String get get_started => 'Розпочати';

  @override
  String get tutorial2_title => 'Напишіть свою історію';

  @override
  String get tutorial3_title => 'Переглядайте спогади';

  @override
  String get tutorial4_title => 'Використовуйте будь-який пристрій';

  @override
  String get tutorial5_title => 'Захистіть свої дані';

  @override
  String get tutorial1_subtitle => 'Персональний записник, який завжди з вами';

  @override
  String get tutorial2_subtitle => 'Зберігайте важливі події з вашого життя';

  @override
  String get tutorial3_subtitle =>
      'Згадуйте все, що відбувалось у вашому житті.';

  @override
  String get tutorial4_subtitle =>
      'Завантажуйте безкоштовно додатки для iPhone, iPad, Android, Mac та Windows';

  @override
  String get tutorial5_subtitle =>
      'Налаштуйте PIN-код та біометричну аутентифікацію для доступу до записів';
}
