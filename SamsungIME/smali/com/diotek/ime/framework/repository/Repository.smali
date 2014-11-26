.class public interface abstract Lcom/diotek/ime/framework/repository/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# static fields
.field public static final DEFAULT_STATE_SET_SIZE:I = 0xa

.field public static final IS_LOW_END:Ljava/lang/String; = "IS_LOW_END"

.field public static final KEY_ADDWORD_BACKUP_CADIDATE:Ljava/lang/String; = "ADDWORD_BACKUP_CADIDATE"

.field public static final KEY_AUTO_CAPS:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTO_CAPS"

.field public static final KEY_AUTO_PERIOD:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTO_PERIOD"

.field public static final KEY_AUTO_SPACE:Ljava/lang/String; = "AUTO_SPACE"

.field public static final KEY_AUTO_SPACING:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTO_SPACING"

.field public static final KEY_BILINGUAL_INPUT_LANGUAGE:Ljava/lang/String; = "BILINGUAL_INPUT_LANGUAGE"

.field public static final KEY_BULGARIAN_KEYBOARD_TYPE:Ljava/lang/String; = "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

.field public static final KEY_CHINESE_FUZZY_ALL:Ljava/lang/String; = "CHINESE_FUZZY_ALL"

.field public static final KEY_CHINESE_FUZZY_ANEQUALANG:Ljava/lang/String; = "CHINESE_FUZZY_ANEQUALANG"

.field public static final KEY_CHINESE_FUZZY_CEQUALCH:Ljava/lang/String; = "CHINESE_FUZZY_CEQUALCH"

.field public static final KEY_CHINESE_FUZZY_ENEQUALENG:Ljava/lang/String; = "CHINESE_FUZZY_ENEQUALENG"

.field public static final KEY_CHINESE_FUZZY_FEQUALH:Ljava/lang/String; = "CHINESE_FUZZY_FEQUALH"

.field public static final KEY_CHINESE_FUZZY_IANEQUALIANG:Ljava/lang/String; = "CHINESE_FUZZY_IANEQUALIANG"

.field public static final KEY_CHINESE_FUZZY_INEQUALING:Ljava/lang/String; = "CHINESE_FUZZY_INEQUALING"

.field public static final KEY_CHINESE_FUZZY_KEQUALG:Ljava/lang/String; = "CHINESE_FUZZY_KEQUALG"

.field public static final KEY_CHINESE_FUZZY_LEQUALH:Ljava/lang/String; = "CHINESE_FUZZY_LEQUALH"

.field public static final KEY_CHINESE_FUZZY_LEQUALN:Ljava/lang/String; = "CHINESE_FUZZY_LEQUALN"

.field public static final KEY_CHINESE_FUZZY_LEQUALR:Ljava/lang/String; = "CHINESE_FUZZY_LEQUALR"

.field public static final KEY_CHINESE_FUZZY_SEQUALSH:Ljava/lang/String; = "CHINESE_FUZZY_SEQUALSH"

.field public static final KEY_CHINESE_FUZZY_UANEQUALUANG:Ljava/lang/String; = "CHINESE_FUZZY_UANEQUALUANG"

.field public static final KEY_CHINESE_FUZZY_ZEQUALZH:Ljava/lang/String; = "CHINESE_FUZZY_ZEQUALZH"

.field public static final KEY_CHINESE_PHONETIC_SELECT_SPELL_INDEX:Ljava/lang/String; = "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

.field public static final KEY_CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN:Ljava/lang/String; = "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

.field public static final KEY_CNCORE_USE_USERDICT:Ljava/lang/String; = "CNCORE_USE_USERDICT"

.field public static final KEY_COMBINATION:Ljava/lang/String; = "KEY_COMBINATION"

.field public static final KEY_DEFAULT_SUPPORT_LANGUAGES:Ljava/lang/String; = "DEFAULT_SUPPORT_LANGUAGES"

.field public static final KEY_DWP_LICENSE:Ljava/lang/String; = "DWP_LICENSE"

.field public static final KEY_DYNAMNIC_LM_UPDATED:Ljava/lang/String; = "KEY_DYNAMNIC_LM_UPDATED"

.field public static final KEY_EMOTICON_CURRENT_CATEGORY:Ljava/lang/String; = "EMOTICON_CURRENT_CATEGORY"

.field public static final KEY_ENABLE_AUTO_CORRECTION:Ljava/lang/String; = "ENABLE_AUTO_CORRECTION"

.field public static final KEY_ENABLE_TRACE:Ljava/lang/String; = "ENABLE_TRACE"

.field public static final KEY_ENABLE_TRACE_POPUP_GUIDE:Ljava/lang/String; = "ENABLE_TRACE_POPUP_GUIDE"

.field public static final KEY_FILTERING_EVENT_THRESHOLD_DISTANCE:Ljava/lang/String; = "FILTERING_EVENT_THRESHOLD_DISTANCE"

.field public static final KEY_FILTERING_EVENT_THRESHOLD_TIME:Ljava/lang/String; = "FILTERING_EVENT_THRESHOLD_TIME"

.field public static final KEY_FIRST_PREDICTIVE_WORD_ACTIVATE:Ljava/lang/String; = "FIRST_PREDICTIVE_WORD_ACTIVATE"

.field public static final KEY_FIXED_LANGUAGE_SWYPING_OPERATING_DISTANCE:Ljava/lang/String; = "FIXED_LANGUAGE_SWYPING_OPERATING_DISTANCE"

.field public static final KEY_FOREIGN_PREDICTION_ON:Ljava/lang/String; = "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

.field public static final KEY_GERMAN_KEYBOARD_TYPE:Ljava/lang/String; = "SETTINGS_GERMAN_KEYBOARD_TYPE"

.field public static final KEY_HANGUL_DELETE_LENGTH:Ljava/lang/String; = "HANGUL_DELETE_LENGTH"

.field public static final KEY_HWR_LICENSE:Ljava/lang/String; = "HWR_LICENSE"

.field public static final KEY_HWR_MODE:Ljava/lang/String; = "HWR_MODE"

.field public static final KEY_HWR_ON:Ljava/lang/String; = "SETTINGS_DEFAULT_HWR_ON"

.field public static final KEY_HWR_PENCOLOR_INDEX:Ljava/lang/String; = "SETTINGS_DEFAULT_HWR_PENCOLOR"

.field public static final KEY_HWR_PENTHICKNESS:Ljava/lang/String; = "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

.field public static final KEY_HWR_PREVIOUS_INPUT_METHOD:Ljava/lang/String; = "PREVIOUS_INPUT_METHOD"

.field public static final KEY_HWR_RECOGNIZE_DELAY:Ljava/lang/String; = "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

.field public static final KEY_HWR_RECOGNIZE_MODE:Ljava/lang/String; = "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

.field public static final KEY_INPUT_CONTROLLER_CLASS:Ljava/lang/String; = "INPUT_CONTROLLER_CLASS_NAME"

.field public static final KEY_INPUT_LANGUAGE:Ljava/lang/String; = "INPUT_LANGUAGE"

.field public static final KEY_INPUT_METHOD:Ljava/lang/String; = "INPUT_METHOD"

.field public static final KEY_INPUT_MODE_MGR_CLASS:Ljava/lang/String; = "INPUT_MODE_MGR_CLASS_NAME"

.field public static final KEY_INPUT_RANGE:Ljava/lang/String; = "INPUT_RANGE"

.field public static final KEY_IS_CJI_TURBO_KEY_LONGPRESS:Ljava/lang/String; = "IS_CJI_TURBO_KEY_LONGPRESS"

.field public static final KEY_IS_ENABLE_DEFAULT_CANDIDATEVIEW:Ljava/lang/String; = "ENABLE_DEFAULT_CANDIDATEVIEW"

.field public static final KEY_IS_HW_KEY_INPUT:Ljava/lang/String; = "IS_HW_KEY_INPUT"

.field public static final KEY_IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED:Ljava/lang/String; = "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

.field public static final KEY_IS_LANDSCAPE:Ljava/lang/String; = "IS_LANDSCAPE"

.field public static final KEY_IS_LANGUAGE_SELECT_POPUP_SHOWN:Ljava/lang/String; = "IS_LANGUAGE_SELECT_POPUP_SHOWN"

.field public static final KEY_IS_NO_EMOTICON_MODE:Ljava/lang/String; = "KEY_IS_NO_EMOTICON_MODE"

.field public static final KEY_IS_ONE_HAND_RIGHT_SET:Ljava/lang/String; = "IS_ONE_HAND_RIGHT_SET"

.field public static final KEY_IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED:Ljava/lang/String; = "IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED"

.field public static final KEY_IS_POPUP_SHOW:Ljava/lang/String; = "IS_POPUP_SHOW"

.field public static final KEY_IS_RECAPTURING:Ljava/lang/String; = "IS_RECAPTURING"

.field public static final KEY_IS_SHORTCUT_GUIDE_POPUP_SHOW:Ljava/lang/String; = "IS_SHORTCUT_GUIDE_POPUP_SHOW"

.field public static final KEY_IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET:Ljava/lang/String; = "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

.field public static final KEY_KEYPAD_SWEEPING:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

.field public static final KEY_KEYPAD_TYPE:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_TYPE"

.field public static final KEY_KEY_LONGPRESS:Ljava/lang/String; = "IS_KEY_LONGPRESS"

.field public static final KEY_KOREAN_PREDICTION_ON:Ljava/lang/String; = "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

.field public static final KEY_KOR_MODE:Ljava/lang/String; = "KOR_MODE"

.field public static final KEY_LAST_USED_MM_KEY_CODE:Ljava/lang/String; = "LAST_USED_MM_KEY_CODE"

.field public static final KEY_MM_KEY_INPUT_METHOD:Ljava/lang/String; = "MM_KEY_INPUT_METHOD"

.field public static final KEY_NOTE_KEYPAD_TYPE:Ljava/lang/String; = "NOTE_KEYPAD_TYPE"

.field public static final KEY_NOT_CREATE_NEW_KEYBOARDVIEW:Ljava/lang/String; = "NOT_CREATE_NEW_KEYBOARDVIEW"

.field public static final KEY_NUMBER_AND_SYMBOLS_KEYPAD_TYPE:Ljava/lang/String; = "NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

.field public static final KEY_PHONE_POPUP_NUMBER_INPUT:Ljava/lang/String; = "PHONE_POPUP_NUMBER_INPUT"

.field public static final KEY_PREDICTION_ON:Ljava/lang/String; = "SETTINGS_DEFAULT_PREDICTION_ON"

.field public static final KEY_PREFERENCE_INPUT_METHOD:Ljava/lang/String; = "PREFERENCE_INPUT_METHOD"

.field public static final KEY_PREFERENCE_INPUT_METHOD_ON_KOR:Ljava/lang/String; = "KOREAN_3X4_KEYPAD_TYPE_ON_KOR"

.field public static final KEY_PREVIEW_DISMISS_DELAY:Ljava/lang/String; = "PREVIEW_DISMISS_DELAY"

.field public static final KEY_PREVIEW_SHOW_DELAY:Ljava/lang/String; = "PREVIEW_SHOW_DELAY"

.field public static final KEY_RELOAD_LANGUAGEPACK:Ljava/lang/String; = "RELOAD_LANGUAGEPACK"

.field public static final KEY_REPEATABLEKEY_PREVIEW_DISMISS_DELAY:Ljava/lang/String; = "REPEATABLEKEY_PREVIEW_DISMISS_DELAY"

.field public static final KEY_SENT_TEXT_BY_INPUTCONNECTION:Ljava/lang/String; = "SENT_TEXT_BY_INPUTCONNECTION"

.field public static final KEY_SIP_LANGUAGE:Ljava/lang/String; = "SIP_LANGUAGE"

.field public static final KEY_SPACE_LANGUAGE_CHANGING_THRESHOLD:Ljava/lang/String; = "SPACE_LANGUAGE_CHANGING_THRESHOLD"

.field public static final KEY_SPACE_LANGUAGE_NEXT_CHANGABLE_CRITICAL_VALUE:Ljava/lang/String; = "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

.field public static final KEY_SPACE_LANGUAGE_PREV_CHANGABLE_CRITICAL_VALUE:Ljava/lang/String; = "SPACE_LANGUAGE_RIGHT_CHANGABLE_CRITICAL_VALUE"

.field public static final KEY_SUPPORT_FULL_HANDWRITING:Ljava/lang/String; = "SUPPORT_FULL_HANDWRITING"

.field public static final KEY_SUPPORT_HWR_TUTORIAL:Ljava/lang/String; = "SUPPORT_HWR_TUTORIAL"

.field public static final KEY_SUPPORT_KEY_SOUND:Ljava/lang/String; = "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

.field public static final KEY_SUPPORT_KEY_VIBRATE:Ljava/lang/String; = "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

.field public static final KEY_SUPPORT_MULTI_TOUCH_PANEL:Ljava/lang/String; = "SUPPORT_MULTI_TOUCH_PANEL"

.field public static final KEY_SUPPORT_PREVIEW:Ljava/lang/String; = "SUPPORT_PREVIEW"

.field public static final KEY_SUPPORT_SPACE_LANGUAGE_CHANGE:Ljava/lang/String; = "SUPPORT_SPACE_LANGUAGE_CHANGE"

.field public static final KEY_SWIFTKEY_VERBATIM_INDEX:Ljava/lang/String; = "SWIFTKEY_VERBATIM_INDEX"

.field public static final KEY_SYMBOLS_PAGE:Ljava/lang/String; = "SYMBOLS_PAGE"

.field public static final KEY_TABLET_MODE:Ljava/lang/String; = "TABLET_MODE"

.field public static final KEY_TABLET_QWERTY_KEYPAD_TYPE:Ljava/lang/String; = "TABLET_QWERTY_KEYPAD_TYPE"

.field public static final KEY_TURKISH_KEYBOARD_TYPE:Ljava/lang/String; = "SETTINGS_TURKISH_KEYBOARD_TYPE"

.field public static final KEY_USE_ADDTO_NUMBER_KEY_FIRST_LINE:Ljava/lang/String; = "USE_ADDTO_NUMBER_KEY_FIRST_LINE"

.field public static final KEY_USE_ADD_SYMBOL_IN_FIRST_LINE_NUMBER_KEY:Ljava/lang/String; = "USE_ADD_SYMBOL_IN_FIRST_LINE_NUMBER_KEY"

.field public static final KEY_USE_AUTO_CORRECTION:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTO_CORRECTION"

.field public static final KEY_USE_BOLD_FONT_ON_MONTH_EDITTEXT:Ljava/lang/String; = "USE_BOLD_FONT_ON_MONTH_EDITTEXT"

.field public static final KEY_USE_CANDIDATE_BUTTON_ON_EMAIL_URL_MODE:Ljava/lang/String; = "USE_CANDIDATE_BUTTON_ON_EMIAL_URL_MODE"

.field public static final KEY_USE_CANDIDATE_PREV_NEXT:Ljava/lang/String; = "USE_CANDIDATE_PREV_NEXT"

.field public static final KEY_USE_CHINESE_FUZZY:Ljava/lang/String; = "USE_CHINESE_FUZZY"

.field public static final KEY_USE_CHINESE_PHONETIC_SPELL_EFFECT:Ljava/lang/String; = "USE_CHINESE_PHONETIC_SPELL_EFFECT"

.field public static final KEY_USE_DOWN_SWIPE:Ljava/lang/String; = "USE_DOWN_SWIPE"

.field public static final KEY_USE_EMOJI_SUGGESTIONS:Ljava/lang/String; = "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

.field public static final KEY_USE_EMOTICON_POPUP_ON_ENTER:Ljava/lang/String; = "USE_EMOTICON_POPUP_ON_ENTER"

.field public static final KEY_USE_EXTRACT_UI:Ljava/lang/String; = "EXTRACT_UI"

.field public static final KEY_USE_FLICK_KEYBOARD:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_FLICK"

.field public static final KEY_USE_FLICK_UMLAUT:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

.field public static final KEY_USE_FULL_HANDWRITING:Ljava/lang/String; = "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

.field public static final KEY_USE_HWR_MODE:Ljava/lang/String; = "USE_HWR_MODE"

.field public static final KEY_USE_INPUT_METHOD_TYPE_ON_KOR:Ljava/lang/String; = "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

.field public static final KEY_USE_LANGUAGE_TOAST:Ljava/lang/String; = "USE_LANGUAGE_TOAST"

.field public static final KEY_USE_LEFT_SWIPE:Ljava/lang/String; = "USE_LEFT_SWIPE"

.field public static final KEY_USE_LIVE_LANGUAGE:Ljava/lang/String; = "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

.field public static final KEY_USE_MULTI_FLOATING_KEYBOARD:Ljava/lang/String; = "USE_MULTI_FLOATING_KEYBOARD"

.field public static final KEY_USE_NUMBER_AND_SYMBOLS_KEYPAD_TYPE:Ljava/lang/String; = "USE_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

.field public static final KEY_USE_ONE_HAND:Ljava/lang/String; = "SETTINGS_DEFAULT_ONE_HAND"

.field public static final KEY_USE_PEN_DETECTION:Ljava/lang/String; = "SETTINGS_DEFAULT_PEN_DETECTION"

.field public static final KEY_USE_PHONENUMBER_ZERO_LONGPRESS:Ljava/lang/String; = "USE_PHONENUMBER_ZERO_LONGPRESS"

.field public static final KEY_USE_POINTING_KEYBOARD:Ljava/lang/String; = "SETTINGS_DEFAULT_KEYPAD_POINTING"

.field public static final KEY_USE_PREDICTION_ON_AUTOCOMPLETE:Ljava/lang/String; = "USE_PREDICTION_ON_AUTOCOMPLETE"

.field public static final KEY_USE_PREVIEW:Ljava/lang/String; = "SETTINGS_DEFAULT_USE_PREVIEW"

.field public static final KEY_USE_QUICK_POPUP:Ljava/lang/String; = "USE_QUICK_POPUP"

.field public static final KEY_USE_RIGHT_SWIPE:Ljava/lang/String; = "USE_RIGHT_SWIPE"

.field public static final KEY_USE_SPACE_LANGUAGE_CHANGE:Ljava/lang/String; = "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

.field public static final KEY_USE_SPLIT_FLOATING_KEYBOARD:Ljava/lang/String; = "USE_SPLIT_FLOATING_KEYBOARD"

.field public static final KEY_USE_SPLIT_KEYBOARD:Ljava/lang/String; = "USE_SPLIT_KEYBOARD"

.field public static final KEY_USE_STANDARD_DATA:Ljava/lang/String; = "SETTINGS_USE_STANDARD_DATA"

.field public static final KEY_USE_TOGGLE_INDIAN_CONSONANT:Ljava/lang/String; = "USE_TOGGLE_INDIAN_CONSONANT"

.field public static final KEY_USE_TOGGLE_INDIAN_CONSONANT_LONGPRESS:Ljava/lang/String; = "USE_TOGGLE_INDIAN_CONSONANT_LONGPRESS"

.field public static final KEY_USE_TOGGLE_INDIAN_VO_MATRA:Ljava/lang/String; = "KEY_USE_TOGGLE_INDIAN_VO_MATRA"

.field public static final KEY_USE_TOGGLE_NUMBER_INPUT:Ljava/lang/String; = "USE_TOGGLE_NUMBER_INPUT"

.field public static final KEY_USE_UP_SWIPE:Ljava/lang/String; = "USE_UP_SWIPE"

.field public static final KEY_USE_VIETNAMESE_TELEX:Ljava/lang/String; = "USE_VIETNAMESE_TELEX"

.field public static final KEY_VIEW_CONTROLLER_CLASS:Ljava/lang/String; = "VIEW_CONTROLLER_CLASS_NAME"

.field public static final KEY_VOICE_INPUT:Ljava/lang/String; = "SETTINGS_DEFAULT_VOICE_INPUT"

.field public static final KEY_WINDOW_HEIGHT:Ljava/lang/String; = "WINDOW_HEIGHT"

.field public static final KEY_WINDOW_WIDTH:Ljava/lang/String; = "WINDOW_WIDTH"

.field public static final KEY_XT9SETTINGS_AUTOAPPEND:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTOAPPEND"

.field public static final KEY_XT9SETTINGS_AUTOSUBSTITUTION:Ljava/lang/String; = "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

.field public static final KEY_XT9SETTINGS_NEXTWORDPREDICTION:Ljava/lang/String; = "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

.field public static final KEY_XT9SETTINGS_RECAPTURE:Ljava/lang/String; = "SETTINGS_DEFAULT_RECAPTURE"

.field public static final KEY_XT9SETTINGS_REGIONALCORRECTION:Ljava/lang/String; = "SETTINGS_DEFAULT_REGIONALCORRECTION"

.field public static final KEY_XT9SETTINGS_SPELLCORRECTION:Ljava/lang/String; = "SETTINGS_DEFAULT_SPELLCORRECTION"

.field public static final KEY_XT9SETTINGS_TRACE:Ljava/lang/String; = "SETTINGS_DEFAULT_TRACE"

.field public static final KEY_XT9SETTINGS_WORDCOMPLETION:Ljava/lang/String; = "SETTINGS_DEFAULT_WORDCOMPLETION"

.field public static final KEY_XT9SETTINGS_WORDCOMPLETIONPOINT:Ljava/lang/String; = "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

.field public static final KEY_XT9_DLM_ENABLE:Ljava/lang/String; = "XT9_DLM_ENABLE"

.field public static final KEY_XT9_GESTURE_GAP:Ljava/lang/String; = "XT9_GESTURE_GAP"

.field public static final KEY_XT9_VERSION:Ljava/lang/String; = "XT9_VERSION"

.field public static final KEY_ZH_CN_STROKE_MODE_ON:Ljava/lang/String; = "ZH_CN_STROKE_MODE_ON"

.field public static final KEY_ZH_HK_STROKE_MODE_ON:Ljava/lang/String; = "ZH_HK_STROKE_MODE_ON"

.field public static final KEY_ZH_TW_STROKE_MODE_ON:Ljava/lang/String; = "ZH_TW_STROKE_MODE_ON"

.field public static final VOWEL_ROW_MAX:Ljava/lang/String; = "VOWEL_ROW_MAX"

.field public static final VOWEL_ROW_SHIFTED:Ljava/lang/String; = "VOWEL_ROW_SHIFTED"

.field public static final VOWEL_ROW_STATE:Ljava/lang/String; = "VOWEL_ROW_STATE"


# virtual methods
.method public abstract getData(Ljava/lang/String;B)B
.end method

.method public abstract getData(Ljava/lang/String;C)C
.end method

.method public abstract getData(Ljava/lang/String;D)D
.end method

.method public abstract getData(Ljava/lang/String;F)F
.end method

.method public abstract getData(Ljava/lang/String;I)I
.end method

.method public abstract getData(Ljava/lang/String;J)J
.end method

.method public abstract getData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getData(Ljava/lang/String;S)S
.end method

.method public abstract getData(Ljava/lang/String;Z)Z
.end method

.method public abstract getPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract setData(Ljava/lang/String;B)V
.end method

.method public abstract setData(Ljava/lang/String;C)V
.end method

.method public abstract setData(Ljava/lang/String;D)V
.end method

.method public abstract setData(Ljava/lang/String;F)V
.end method

.method public abstract setData(Ljava/lang/String;I)V
.end method

.method public abstract setData(Ljava/lang/String;J)V
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setData(Ljava/lang/String;S)V
.end method

.method public abstract setData(Ljava/lang/String;Z)V
.end method

.method public abstract setdefaultPreferenceContext(Landroid/content/Context;)V
.end method
