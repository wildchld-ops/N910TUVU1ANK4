.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final ANTISHAKE_RSC:I = 0x2

.field public static final ATTACHMODE_CAMCORDER_EMAIL:I = 0x4

.field public static final ATTACHMODE_CAMCORDER_MMS:I = 0x3

.field public static final ATTACHMODE_CAMCORDER_NORMAL:I = 0x2

.field public static final ATTACHMODE_CAMERA_NORMAL:I = 0x1

.field public static final ATTACHMODE_NONE:I = 0x0

.field public static final AUDIOZOOM_OFF:I = 0x0

.field public static final AUDIOZOOM_ON:I = 0x1

.field public static final AUDIO_RECORDING_OFF:I = 0x0

.field public static final AUDIO_RECORDING_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final AUTO_NIGHT_DETECTION_OFF:I = 0x0

.field public static final AUTO_NIGHT_DETECTION_ON:I = 0x1

.field public static final BEAUTYFACE_LEVEL_0:I = 0x0

.field public static final BEAUTYFACE_LEVEL_1:I = 0x1

.field public static final BEAUTYFACE_LEVEL_2:I = 0x2

.field public static final BEAUTYFACE_LEVEL_3:I = 0x3

.field public static final BEAUTYFACE_LEVEL_4:I = 0x4

.field public static final BEAUTYFACE_LEVEL_5:I = 0x5

.field public static final BEAUTYFACE_LEVEL_6:I = 0x6

.field public static final BEAUTYFACE_LEVEL_7:I = 0x7

.field public static final BEAUTYFACE_LEVEL_8:I = 0x8

.field public static final BEAUTYFACE_LIVE_OFF:I = 0x1

.field public static final BEAUTYFACE_LIVE_ON:I = 0x0

.field public static final BESTPHOTO_START:I = 0x0

.field public static final BESTPHOTO_STOP:I = 0x1

.field public static final BURST_OFF:I = 0x0

.field public static final BURST_ON:I = 0x1

.field public static final BURST_SHOT_STATE:I = 0x139

.field public static final BURST_START:I = 0x0

.field public static final BURST_STOP:I = 0x1

.field public static final CALL_STATUS_MODE:I = 0x136

.field public static final CALL_STATUS_OFF:I = 0x0

.field public static final CALL_STATUS_ON:I = 0x1

.field public static final CAMERA_ANTI_BANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final CAMERA_ANTI_BANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final CAMERA_ANTI_BANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final CAMERA_ANTI_BANDING_OFF:Ljava/lang/String; = "off"

.field public static final CAMERA_MODE_FRONT:I = 0x1

.field public static final CAMERA_MODE_REAR:I = 0x0

.field protected static final CAMERA_SETTINGS_NOTIFICATION:I = 0x0

.field public static final COVER_MODE:I = 0x137

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_ON:I = 0x1

.field protected static final CSC_KEY_AUTONIGHTDETECTION:Ljava/lang/String; = "csc_pref_camera_autonightdetection_key"

.field protected static final CSC_KEY_BURSTSHOT:Ljava/lang/String; = "csc_pref_camera_burstshot_key"

.field protected static final CSC_KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "csc_pref_camera_videoquality_key"

.field protected static final CSC_KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "csc_pref_camcorder_resolution_key"

.field protected static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field protected static final CSC_KEY_CAMERA_QUALITY:Ljava/lang/String; = "csc_pref_camera_quality_key"

.field protected static final CSC_KEY_FORCED_SHUTTERSOUND:Ljava/lang/String; = "csc_pref_camera_forced_shuttersound_key"

.field protected static final CSC_KEY_QUICK_ACCESS:Ljava/lang/String; = "csc_pref_camera_quick_access_key"

.field protected static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field public static final DATA_CHECK_OFF:Z = false

.field public static final DATA_CHECK_ON:Z = true

.field public static final DATA_CHECK_TYPE_1:I = 0x0

.field public static final DATA_CHECK_TYPE_2:I = 0x1

.field public static final DATA_CHECK_TYPE_3:I = 0x2

.field protected static final DB_TAG_CURRENT_LOCATION_CAMERA:Ljava/lang/String; = "tag_current_location_camera"

.field protected static final DEFAULT_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_BACK_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_BACK_CAMERA_FOCUS:I = 0x1

.field protected static DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = null

.field public static final DEFAULT_BEAUTY_LEVEL:I = 0x4

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:I = 0x1

.field protected static final DEFAULT_CAMCORDER_AUDIOZOOM:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTO_NIGHT_DETECTION:I = 0x1

.field protected static final DEFAULT_CAMERA_DUAL_CAPTURE_MODE:I = 0x0

.field protected static DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_EFFECT:I = 0x0

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FACE_DETECTION:I = 0x0

.field protected static final DEFAULT_CAMERA_FOCUS_SELECT:I = 0x0

.field protected static final DEFAULT_CAMERA_HDR:I = 0x0

.field protected static final DEFAULT_CAMERA_ID:I = 0x0

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMERA_QUICK_ACCESS:I = 0x0

.field protected static final DEFAULT_CAMERA_SAVE_RICHTONE:I = 0x0

.field protected static final DEFAULT_CAMERA_SCREEN_FLASH:I = 0x0

.field protected static final DEFAULT_CAMERA_SHARE_MODE:I = 0x0

.field protected static final DEFAULT_CAMERA_SHUTTERSOUND:I = 0x1

.field protected static DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_CAMERA_TOUCH_TO_CAPTURE:I = 0x0

.field protected static final DEFAULT_CAMERA_VOICECOMMAND:I = 0x0

.field protected static final DEFAULT_DUAL_EFFECT:I = 0x2a

.field protected static final DEFAULT_DUAL_MODE:I = 0x0

.field protected static final DEFAULT_DUAL_RECT:I = 0x0

.field protected static final DEFAULT_DUAL_TRACKING_POSITION:Ljava/lang/String; = ""

.field protected static final DEFAULT_EFFECT:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EYEENLARGE_LEVEL:I = 0x0

.field protected static final DEFAULT_FASTMOTION_SPEED:I = 0x2

.field protected static final DEFAULT_FLASH:I = 0x0

.field protected static final DEFAULT_FRONT_CAMCORDER_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_FRONT_CAMERA_FOCUS:I = 0x0

.field protected static DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = null

.field protected static DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = null

.field protected static final DEFAULT_FRONT_CAMERA_TOUCH_TO_CAPTURE:I = 0x1

.field protected static final DEFAULT_FRONT_CAMERA_VOICECOMMAND:I = 0x1

.field protected static final DEFAULT_FRONT_SHOOTINGMODE:I = 0x37

.field protected static final DEFAULT_GOLF_DIRECTION:I = 0x0

.field public static final DEFAULT_MAX_MMS_SIZE:J = 0x49c00L

.field public static final DEFAULT_MMS_VIDEO_DURATION:I = 0xe10

.field protected static final DEFAULT_ON_DEVICE_HELP_SCREEN:Z = true

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_REVIEW:I = 0x0

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field public static final DEFAULT_SELFIE_CONTINUOUS_VALUE:I = 0x1

.field public static final DEFAULT_SELFIE_MODE:I = 0x4

.field protected static final DEFAULT_SETUP_DATA_CHECK:Z = true

.field protected static final DEFAULT_SETUP_EULA:Z = false

.field protected static final DEFAULT_SETUP_FITVIEW:I = 0x0

.field protected static final DEFAULT_SETUP_GPS:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_SELF_FLIP:I = 0x0

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_SIDE_TOUCH_MODE:I = 0x0

.field public static final DEFAULT_SLIMFACE_LEVEL:I = 0x0

.field protected static final DEFAULT_SLOWMOTION_SPEED:I = 0x2

.field public static final DEFAULT_SOUNDSHOT_MODE:I = 0x1

.field protected static final DEFAULT_SPEED:I = -0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field private static final DEFAULT_VIEW_MODE:I = 0x0

.field protected static final DEFAULT_VOLUME_KEY_AS:I = 0x1

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field public static final DIALOG_DISABLE_OFF:I = 0x0

.field public static final DIALOG_DISABLE_ON:I = 0x1

.field public static final DUAL_CAPTURE_MODE_ASYNC:I = 0x1

.field public static final DUAL_CAPTURE_MODE_SYNC:I = 0x0

.field public static final DUAL_MODE_OFF:I = 0x0

.field public static final DUAL_MODE_ON:I = 0x1

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_COMIC:I = 0xa

.field public static final EFFECT_DUAL_CIRCLELENS:I = 0x32

.field public static final EFFECT_DUAL_CUBISM:I = 0x29

.field public static final EFFECT_DUAL_DOWNLOAD:I = 0x34

.field public static final EFFECT_DUAL_EXPOSURE_OVERLAY:I = 0x2f

.field public static final EFFECT_DUAL_HEART:I = 0x2e

.field public static final EFFECT_DUAL_NORMAL:I = 0x28

.field public static final EFFECT_DUAL_NUMBER:I = 0xc

.field public static final EFFECT_DUAL_OVAL_BLUR:I = 0x2c

.field public static final EFFECT_DUAL_POLAROID:I = 0x31

.field public static final EFFECT_DUAL_POSTCARD:I = 0x2a

.field public static final EFFECT_DUAL_SHINY:I = 0x2d

.field public static final EFFECT_DUAL_SIGNATURE:I = 0x2b

.field public static final EFFECT_DUAL_SPLIT_VIEW:I = 0x30

.field public static final EFFECT_DUAL_TRACKING:I = 0x33

.field public static final EFFECT_FADED_COLOURS:I = 0x8

.field public static final EFFECT_FISHEYE:I = 0x11

.field public static final EFFECT_FOR_REAL:I = 0x12

.field public static final EFFECT_GOTHIC_NOIR:I = 0xc

.field public static final EFFECT_IMPRESSIONIST:I = 0xd

.field public static final EFFECT_INSTAGRAM_NASHVILLE:I = 0x10

.field public static final EFFECT_MINIATURE:I = 0x17

.field public static final EFFECT_NEGATIVE:I = 0x3

.field public static final EFFECT_NOIR_NOTE:I = 0x14

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_NOSTALGIA:I = 0x9

.field public static final EFFECT_OLDPHOTO:I = 0x4

.field public static final EFFECT_PASTEL_SKETCH:I = 0xb

.field public static final EFFECT_POINT_BLUE:I = 0x1c

.field public static final EFFECT_POINT_GREEN:I = 0x1e

.field public static final EFFECT_POINT_RED_YELLOW:I = 0x1d

.field public static final EFFECT_POSTERIZE:I = 0x1b

.field public static final EFFECT_RAINBOW:I = 0xf

.field public static final EFFECT_RETRO:I = 0x7

.field public static final EFFECT_SANDSTONE:I = 0xe

.field public static final EFFECT_SEPIA:I = 0x1

.field public static final EFFECT_SINGLE_NATIVE_OFFSET:I = 0x190

.field public static final EFFECT_SOLARIZE:I = 0x18

.field public static final EFFECT_STUCCHEVOLE:I = 0x13

.field public static final EFFECT_SUNSHINE:I = 0x5

.field public static final EFFECT_VIGNETTE_OUTFOCUS:I = 0x16

.field public static final EFFECT_VINCENT:I = 0x15

.field public static final EFFECT_VINTAGE:I = 0x6

.field public static final EFFECT_VINTAGE_COLD:I = 0x1a

.field public static final EFFECT_VINTAGE_WARM:I = 0x19

.field public static final EFFECT_WASHED:I = 0x1f

.field public static final EULA_OFF:Z = false

.field public static final EULA_ON:Z = true

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EV_STEP:F = 0.5f

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final EXTERNAL_SHOOTING_MODE_DOWNLOAD:I = 0x33

.field public static final EXT_EFFECT_NONE:I = 0x1f40

.field public static final EYEENLARGE_LEVEL_0:I = 0x0

.field public static final EYEENLARGE_LEVEL_1:I = 0x1

.field public static final EYEENLARGE_LEVEL_2:I = 0x2

.field public static final EYEENLARGE_LEVEL_3:I = 0x3

.field public static final EYEENLARGE_LEVEL_4:I = 0x4

.field public static final EYEENLARGE_LEVEL_5:I = 0x5

.field public static final EYEENLARGE_LEVEL_6:I = 0x6

.field public static final EYEENLARGE_LEVEL_7:I = 0x7

.field public static final EYEENLARGE_LEVEL_8:I = 0x8

.field public static final FACE_DETECTION_OFF:I = 0x0

.field public static final FACE_DETECTION_ON:I = 0x1

.field public static final FASTMOTION_SPEED_2X_FASTER:I = 0x0

.field public static final FASTMOTION_SPEED_4X_FASTER:I = 0x1

.field public static final FASTMOTION_SPEED_8X_FASTER:I = 0x2

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FLASHMODE_TORCH:I = 0x4

.field public static final FLIP_OFF:I = 0x0

.field public static final FLIP_ON:I = 0x1

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_CONTINUOUS_PICTURE:I = 0x5

.field public static final FOCUSMODE_CONTINUOUS_PICTURE_MACRO:I = 0x6

.field public static final FOCUSMODE_CONTINUOUS_VIDEO:I = 0x4

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FOCUS_SELECT_OFF:I = 0x0

.field public static final FOCUS_SELECT_ON:I = 0x1

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final FULLVIEW:I = 0x0

.field protected static final GOLF_DIRECTION_LEFT:I = 0x1

.field protected static final GOLF_DIRECTION_RIGHT:I = 0x0

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final HDR_OFF:I = 0x0

.field public static final HDR_ON:I = 0x1

.field public static final HELP_CAPTURE_MODE:I = 0xc9

.field public static final HELP_NONE:I = 0xc8

.field public static final HELP_RECORDING_MODE:I = 0xca

.field public static final HELP_SELECT_CAMERA_MODE:I = 0xcb

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_AUTO_NIGHT_DETECTION:Ljava/lang/String; = "pref_auto_night_detection_key"

.field protected static final KEY_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_back_camera_shooting_mode_order"

.field protected static final KEY_BURST_SHOT_GUIDE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_guide_text_dialog"

.field protected static final KEY_BURST_SHOT_STORAGE_TEXT_DIALOG:Ljava/lang/String; = "pref_burst_shot_storage_text_dialog"

.field protected static final KEY_CAMCORDER_ANTISHAKE:Ljava/lang/String; = "pref_camcorder_antishake_key"

.field protected static final KEY_CAMCORDER_AUDIOZOOM:Ljava/lang/String; = "pref_camcorder_audiozoom_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RECORDINGMODE:Ljava/lang/String; = "pref_camcorder_recordingmode_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_BEAUTY_LEVEL:Ljava/lang/String; = "pref_camera_beauty_level_key"

.field protected static final KEY_CAMERA_BURST_SETTINGS:Ljava/lang/String; = "pref_camera_burst_settings_key"

.field protected static final KEY_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String; = "pref_camera_editable_shortcut_order"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_EYEENLARGE_LEVEL:Ljava/lang/String; = "pref_camera_eyeenlarge_level_key"

.field protected static final KEY_CAMERA_FACE_DETECTION:Ljava/lang/String; = "pref_camera_face_detection_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_HDR:Ljava/lang/String; = "pref_camera_hdr_key"

.field protected static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_QUICK_ACCESS:Ljava/lang/String; = "pref_camera_quick_access_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_CAMERA_SELFIE_CONTINUOUS_VALUE:Ljava/lang/String; = "pref_camera_selfie_continuous_value_key"

.field protected static final KEY_CAMERA_SELFIE_MODE:Ljava/lang/String; = "pref_camera_selfie_mode_key"

.field protected static final KEY_CAMERA_SHARE_MODE:Ljava/lang/String; = "pref_camera_share_mode_key"

.field protected static final KEY_CAMERA_SHOOTINGMODE:Ljava/lang/String; = "pref_camera_shootingmode_key"

.field protected static final KEY_CAMERA_SHUTTERSOUND:Ljava/lang/String; = "pref_camera_shuttersound_key"

.field protected static final KEY_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = "pref_camera_sidebar_item_order"

.field protected static final KEY_CAMERA_SLIMFACE_LEVEL:Ljava/lang/String; = "pref_camera_slimface_level_key"

.field protected static final KEY_CAMERA_TIMER:Ljava/lang/String; = "pref_camera_timer_key"

.field protected static final KEY_CAMERA_TIMER_FRONT:Ljava/lang/String; = "pref_camera_timer_front_key"

.field protected static final KEY_CAMERA_TOUCH_TO_CAPTURE:Ljava/lang/String; = "pref_camera_touch_to_capture_key"

.field protected static final KEY_CAMERA_TOUCH_TO_CAPTURE_FRONT:Ljava/lang/String; = "pref_camera_touch_to_capture_front_key"

.field protected static final KEY_CAMERA_VIEWMODE:Ljava/lang/String; = "pref_camera_fullpreview_key"

.field protected static final KEY_CAMERA_VOLUME_KEY_AS:Ljava/lang/String; = "pref_camera_volume_key_as"

.field protected static final KEY_CHANGE_DUAL_EFFECT_DIALOG:Ljava/lang/String; = "pref_change_dual_effect_dialog"

.field protected static final KEY_CHANGE_STORAGE_SETTING_DIALOG:Ljava/lang/String; = "pref_change_storage_setting_dialog"

.field public static final KEY_CURRENT_ROI_HEIGHT:Ljava/lang/String; = "roi_height"

.field public static final KEY_CURRENT_ROI_LEFT:Ljava/lang/String; = "current_roi_left"

.field public static final KEY_CURRENT_ROI_TOP:Ljava/lang/String; = "current_roi_top"

.field public static final KEY_CURRENT_ROI_WIDTH:Ljava/lang/String; = "roi_width"

.field protected static final KEY_DUAL_CAPTURE_MODE:Ljava/lang/String; = "pref_dual_shot_mode_key"

.field protected static final KEY_DUAL_EFFECT:Ljava/lang/String; = "pref_camera_dual_effect"

.field protected static final KEY_DUAL_LEFTBOTTOM_X:Ljava/lang/String; = "pref_camera_dual_leftbottom_x"

.field protected static final KEY_DUAL_LEFTBOTTOM_Y:Ljava/lang/String; = "pref_camera_dual_leftbottom_y"

.field protected static final KEY_DUAL_LEFTTOP_X:Ljava/lang/String; = "pref_camera_dual_lefttop_x"

.field protected static final KEY_DUAL_LEFTTOP_Y:Ljava/lang/String; = "pref_camera_dual_lefttop_y"

.field protected static final KEY_DUAL_MODE:Ljava/lang/String; = "pref_camera_dual_mode"

.field protected static final KEY_DUAL_RECT_HEIGHT:Ljava/lang/String; = "pref_camera_dual_rect_height"

.field protected static final KEY_DUAL_RECT_WIDTH:Ljava/lang/String; = "pref_camera_dual_rect_width"

.field protected static final KEY_DUAL_RIGHTBOTTOM_X:Ljava/lang/String; = "pref_camera_dual_rightbottom_x"

.field protected static final KEY_DUAL_RIGHTBOTTOM_Y:Ljava/lang/String; = "pref_camera_dual_rightbottom_y"

.field protected static final KEY_DUAL_RIGHTTOP_X:Ljava/lang/String; = "pref_camera_dual_righttop_x"

.field protected static final KEY_DUAL_RIGHTTOP_Y:Ljava/lang/String; = "pref_camera_dual_righttop_y"

.field protected static final KEY_DUAL_TRACKING_GUIDE_DIALOG:Ljava/lang/String; = "pref_dual_tracking_guide_dialog"

.field protected static final KEY_DUAL_TRACKING_POSITION:Ljava/lang/String; = "pref_camera_dual_tracking_position"

.field protected static final KEY_EDITABLE_SHORTCUT_GUIDE_DIALOG:Ljava/lang/String; = "pref_editable_shortcut_guide_dialog"

.field protected static final KEY_FACE_ZOOM_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_face_zoom_help_text_dialog"

.field protected static final KEY_FLASH:Ljava/lang/String; = "pref_flash_key"

.field protected static final KEY_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String; = "pref_front_camera_shooting_mode_order"

.field protected static final KEY_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String; = "pref_front_camera_sidebar_item_order"

.field private static final KEY_GOLF_DIRECTION:Ljava/lang/String; = "pref_golf_direction"

.field protected static final KEY_LOCATION_TAG_GUIDE_DIALOG:Ljava/lang/String; = "pref_location_tag_guide_dialog"

.field protected static final KEY_OUT_FOCUS_SHOT_GUIDE_DIALOG:Ljava/lang/String; = "pref_out_focus_shot_guide_dialog"

.field protected static final KEY_QUICK_ACCESS_DIALOG:Ljava/lang/String; = "pref_quick_access_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_EFFECT_DOWNLOAD_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_effect_download_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_EFFECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_effect_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_GALLERY_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_gallery_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_HELP_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_help_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_LAUNCH_SETTINGS_TO_TURN_ON_GPS_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_launch_help_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_RESET_CAMERA_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_reset_camera_guide_dialog"

.field protected static final KEY_REMOTE_VIEW_FINDER_WIFI_DIRECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_remote_view_finder_wifi_direct_guide_dialog"

.field protected static final KEY_SAVE_RICHTONE:Ljava/lang/String; = "pref_save_richtone_key"

.field protected static final KEY_SENSOR_CAPTURE_DIALOG:Ljava/lang/String; = "pref_sensor_capture_dialog"

.field protected static final KEY_SETTING_HELP_OVERLAY_DIALOG:Ljava/lang/String; = "pref_setting_help_overlay_dialog"

.field protected static final KEY_SETUP_DATA_CHECK:Ljava/lang/String; = "pref_setup_datacheck_key"

.field protected static final KEY_SETUP_EULA:Ljava/lang/String; = "pref_setup_eula_key"

.field protected static final KEY_SETUP_GPS:Ljava/lang/String; = "pref_setup_gps_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_review_key"

.field protected static final KEY_SETUP_SELF_FLIP:Ljava/lang/String; = "pref_setup_self_flip_key"

.field protected static final KEY_SETUP_SIDETOUCH:Ljava/lang/String; = "pref_camera_sidetouch_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_SETUP_VOCICE_CONTROL:Ljava/lang/String; = "pref_setup_voice_control_key"

.field protected static final KEY_SETUP_VOCICE_CONTROL_FRONT:Ljava/lang/String; = "pref_setup_voice_control_front_key"

.field protected static final KEY_SHOOTINGMODE_3DPANORAMA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_3dpanorama_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_3DTOUR_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_3dtour_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_AQUA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_aqua_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_AUTO_SELFIE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_auto_selfie_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_BEAUTY_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_beauty_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_BURST_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_burst_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_CINEPIC_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_cinepic_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_DUAL_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_dual_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_FOCUSSELECT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_focusselct_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_MAGIC_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_magic_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_NIGHT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_night_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_PANORAMA_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_panorama_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_RICHTONE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_richtone_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SINGLE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_single_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SMART_GIFMAKER_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_smart_gifmaker_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SMART_SELFSHOT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_smart_selfshot_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SOUNDSHOT_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_soundshot_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_SPORTS_SCENE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_sports_guide_dialog"

.field protected static final KEY_SHOOTINGMODE_ULTRA_WIDE_GUIDE_DIALOG:Ljava/lang/String; = "pref_shootingmode_ultra_wide_guide_dialog"

.field protected static final KEY_SHOW_LIVE_BEAUTY_CONTROLLER:Ljava/lang/String; = "pref_show_live_beauty_controller"

.field protected static final KEY_SIDE_TOUCH_GUIDE_DIALOG:Ljava/lang/String; = "pref_side_touch_guide_dialog"

.field protected static final KEY_SNAPSHOT_LIMITATION_DIALOG:Ljava/lang/String; = "pref_snap_shot_limitation_dialog"

.field protected static final KEY_START_STABILIZATION_GUIDE_DIALOG:Ljava/lang/String; = "pref_smart_stabilization_dialog"

.field protected static final KEY_TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "pref_transition_animation_key"

.field protected static final KEY_TURN_ON_BURST_SHOT_HELP_TEXT_DIALOG:Ljava/lang/String; = "pref_turn_on_burst_help_text_dialog"

.field protected static final KEY_VIDEO_AUDIOZOOM_DIALOG:Ljava/lang/String; = "pref_video_audiozoom_dialog"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field protected static final KEY_VIDEO_FHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_fhd_resolution_dialog"

.field protected static final KEY_VIDEO_STABILISATION_DIALOG:Ljava/lang/String; = "pref_video_stabilisation_dialog"

.field protected static final KEY_VIDEO_UHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_uhd_resolution_dialog"

.field protected static final KEY_VIDEO_WQHD_RESOLUTION_DIALOG:Ljava/lang/String; = "pref_video_wqhd_resolution_dialog"

.field public static final MAX_NUM_OF_ITEMS_FOR_SIDEBAR_TOGGLE:I = 0x2

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_AUTO_NIGHT_DETECTION:I = 0x57

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BEAUTYFACE_LEVEL:I = 0x6d

.field public static final MENUID_BEAUTYFACE_MODE:I = 0x51

.field public static final MENUID_BESTPHOTO_STATE:I = 0x77

.field public static final MENUID_BURST_SETTINGS:I = 0x3f

.field public static final MENUID_CAMCORDER_ANTISHAKE:I = 0xbbf

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0xbbc

.field public static final MENUID_CAMCORDER_AUDIOZOOM:I = 0xbc7

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0xbba

.field public static final MENUID_CAMCORDER_QUALITY:I = 0xbbb

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0xbb8

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0xbb9

.field public static final MENUID_CAMCORDER_SETTINGS:I = 0xbbd

.field public static final MENUID_CAMERA_ANTISHAKE:I = 0xd

.field public static final MENUID_CAMERA_HELP:I = 0x6f

.field public static final MENUID_CAMERA_MODE:I = 0x24

.field public static final MENUID_CAMERA_QUALITY:I = 0x10

.field public static final MENUID_CAMERA_RESOLUTION:I = 0x4

.field public static final MENUID_COMMON_SETTINGS:I = 0xbbe

.field public static final MENUID_COVERMODE_FLASHMODE:I = 0x7b

.field public static final MENUID_DUAL_CAPTURE_MODE:I = 0x58

.field public static final MENUID_EASYMODE_FLASHMODE:I = 0x6c

.field public static final MENUID_EASYMODE_HDR:I = 0x79

.field public static final MENUID_EDITABLE_SHORTCUT:I = 0x28

.field public static final MENUID_EDIT_QUICK_SETTINGS:I = 0x85

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EFFECT_DUAL:I = 0x5a

.field public static final MENUID_EFFECT_MANAGE:I = 0x232e

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_EXTERNAL_DOWNLOAD:I = 0x232a

.field public static final MENUID_EXTERNAL_EFFECT:I = 0x2329

.field public static final MENUID_EXTERNAL_NOITEM:I = 0x232d

.field public static final MENUID_EYEENLARGE_LEVEL:I = 0x82

.field public static final MENUID_FACE_DETECTION:I = 0x55

.field public static final MENUID_FASTMOTION_SPEED:I = 0x170f

.field public static final MENUID_FAVORITE_SETTINGS:I = 0x86

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_FOCUS_SELECT_MODE:I = 0x72

.field public static final MENUID_GOLF_DIM:I = 0x75

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_HDR:I = 0xc

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_MORE:I = 0x80

.field public static final MENUID_OUTDOOR_VISIBILITY:I = 0x23

.field public static final MENUID_QUICK_ACCESS:I = 0x78

.field public static final MENUID_RECORDING:I = 0x41

.field public static final MENUID_REMOTE_VIEWFINDER:I = 0x63

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_REVIEW_TIMER:I = 0x1f

.field public static final MENUID_RICHTONE:I = 0x2e

.field public static final MENUID_SAVE_RICHTONE:I = 0x22

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SCREEN_FLASH:I = 0x87

.field public static final MENUID_SELFIE_CONTINUOUS:I = 0x7d

.field public static final MENUID_SELFIE_MODE:I = 0x7a

.field public static final MENUID_SELF_FLIP:I = 0x26

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARE_MODE:I = 0x35

.field public static final MENUID_SHARE_MODE_ON:I = 0x1710

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHOOTINGMODE_EASY:I = 0x4e

.field public static final MENUID_SHOOTING_MODE_MANAGE:I = 0x232f

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_SIDETOUCH:I = 0x70

.field public static final MENUID_SIDE_BAR:I = 0x42

.field public static final MENUID_SLIMFACE_LEVEL:I = 0x81

.field public static final MENUID_SLOWMOTION_SPEED:I = 0x170e

.field public static final MENUID_SMARTSELF_STATE:I = 0x7c

.field public static final MENUID_SMART_GIFMAKER_STATE:I = 0x7e

.field public static final MENUID_SOUNDSHOT_MODE:I = 0x4d

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_TALKBACK:I = 0x1771

.field public static final MENUID_THUMBNAIL_LIST:I = 0x71

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_TOUCH_TO_CAPTURE:I = 0x62

.field public static final MENUID_VIEWMODE:I = 0x138

.field public static final MENUID_VOICECOMMAND:I = 0x47

.field public static final MENUID_VOICE_GUIDE:I = 0x59

.field public static final MENUID_VOLUME_KEY_AS:I = 0x48

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

.field public static final MODE_CAMERA:I = 0x0

.field public static final MODE_MULTIWINDOW:I = 0x13a

.field public static final NORMALVIEW:I = 0x1

.field public static final NO_VALUE:I = -0xffff

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_OFF:Z = false

.field protected static final ON_DEVICE_HELP_SCREEN_DISABLE_ON:Z = true

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final PHOTOGRAPHER_FACE_POSITION_BOTTOM:I = 0x34

.field public static final PHOTOGRAPHER_FACE_POSITION_CLOSE:I = 0x20

.field public static final PHOTOGRAPHER_FACE_POSITION_DETECTED:I = 0x4

.field public static final PHOTOGRAPHER_FACE_POSITION_GOOD:I = 0x2

.field public static final PHOTOGRAPHER_FACE_POSITION_LEFT:I = 0x31

.field public static final PHOTOGRAPHER_FACE_POSITION_NOT_FOUND:I = 0x3

.field public static final PHOTOGRAPHER_FACE_POSITION_RIGHT:I = 0x33

.field public static final PHOTOGRAPHER_FACE_POSITION_TOP:I = 0x32

.field public static final PHOTOGRAPHER_FACE_POSITION_UNKNOWN:I = 0x0

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_FOR_FIXED_BURST:I = 0x3

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final QUICK_ACCESS_OFF:I = 0x0

.field public static final QUICK_ACCESS_ON:I = 0x1

.field public static final RECORDINGMODE_BROADCASTING:I = 0x5

.field public static final RECORDINGMODE_EMAIL:I = 0x6

.field public static final RECORDINGMODE_FASTMOTION:I = 0x3

.field public static final RECORDINGMODE_FHD_60FPS:I = 0x4

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SHARING:I = 0x1

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REMOTE_VIEWFINDER_OFF:I = 0x0

.field public static final REMOTE_VIEWFINDER_ON:I = 0x1

.field public static final REVIEW_2_SEC:I = 0x2

.field public static final REVIEW_5_SEC:I = 0x3

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x1

.field public static final RICHTONE_AND_ORIGINAL:I = 0x1

.field public static final RICHTONE_ONLY:I = 0x0

.field public static final SCENEMODE_AQUA:I = 0xe

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SCREEN_FLASH_OFF:I = 0x0

.field public static final SCREEN_FLASH_ON:I = 0x1

.field public static final SELFIE_CONTINUOUS_LEVEL_1:I = 0x1

.field public static final SELFIE_CONTINUOUS_LEVEL_2:I = 0x2

.field public static final SELFIE_CONTINUOUS_LEVEL_3:I = 0x3

.field public static final SELFIE_CONTINUOUS_LEVEL_4:I = 0x4

.field public static final SELFIE_CONTINUOUS_LEVEL_5:I = 0x5

.field public static final SELFIE_OFF:I = 0x4

.field public static final SELFIE_PALM_ONLY:I = 0x3

.field public static final SELFIE_SMILE_ONLY:I = 0x1

.field public static final SELFIE_SMILE_WINK:I = 0x0

.field public static final SELFIE_WINK_ONLY:I = 0x2

.field public static final SHARE_BUDDY:I = 0x2

.field public static final SHARE_OFF:I = 0x0

.field public static final SHARE_REMOTE_VIEWFINDER:I = 0x5

.field public static final SHOOTINGMODE_3DPANORAMA:I = 0x25

.field public static final SHOOTINGMODE_3DTOUR:I = 0x30

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_AQUA_SCENE:I = 0x2a

.field public static final SHOOTINGMODE_AUTO_SELFIE:I = 0x37

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_BEST_FACE:I = 0x19

.field public static final SHOOTINGMODE_BEST_PHOTO:I = 0x18

.field public static final SHOOTINGMODE_BURST:I = 0x11

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CINEPIC:I = 0x26

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_DRAMA:I = 0x1f

.field public static final SHOOTINGMODE_DUAL:I = 0x2f

.field public static final SHOOTINGMODE_ERASER:I = 0x22

.field public static final SHOOTINGMODE_EXTERNAL:I = 0x32

.field public static final SHOOTINGMODE_FACE_SHOT:I = 0x10

.field public static final SHOOTINGMODE_FOCUS_SELECT:I = 0x2d

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_GOLF:I = 0x1c

.field public static final SHOOTINGMODE_KIDS:I = 0x2b

.field public static final SHOOTINGMODE_LIGHTPIP:I = 0x2c

.field public static final SHOOTINGMODE_MAGIC:I = 0x2e

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_NIGHT:I = 0x17

.field public static final SHOOTINGMODE_NIGHT_SCENE:I = 0x27

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_RICH_TONE:I = 0xe

.field public static final SHOOTINGMODE_SECFACE_INTERFACE:I = 0x29

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SMART_GIFMAKER:I = 0x3a

.field public static final SHOOTINGMODE_SMART_SELFSHOT:I = 0x38

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_SOUNDSHOT:I = 0x23

.field public static final SHOOTINGMODE_SPORTS_SCENE:I = 0x28

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_THEME:I = 0x20

.field public static final SHOOTINGMODE_ULTRA_WIDE_SHOT:I = 0x34

.field public static final SHORTCUT_LAYOUT_RESET_OFF:I = 0x0

.field public static final SHORTCUT_LAYOUT_RESET_ON:I = 0x1

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final SHUTTER_SOUND_ON:I = 0x1

.field public static final SIDE_TOUCH_OFF:I = 0x0

.field public static final SIDE_TOUCH_ON:I = 0x1

.field public static final SLIMFACE_LEVEL_0:I = 0x0

.field public static final SLIMFACE_LEVEL_1:I = 0x1

.field public static final SLIMFACE_LEVEL_2:I = 0x2

.field public static final SLIMFACE_LEVEL_3:I = 0x3

.field public static final SLIMFACE_LEVEL_4:I = 0x4

.field public static final SLIMFACE_LEVEL_5:I = 0x5

.field public static final SLIMFACE_LEVEL_6:I = 0x6

.field public static final SLIMFACE_LEVEL_7:I = 0x7

.field public static final SLIMFACE_LEVEL_8:I = 0x8

.field public static final SLOWMOTION_SPEED_2X_SLOWER:I = 0x0

.field public static final SLOWMOTION_SPEED_4X_SLOWER:I = 0x1

.field public static final SLOWMOTION_SPEED_8X_SLOWER:I = 0x2

.field public static final SMART_GIFMAKER_START:I = 0x0

.field public static final SMART_GIFMAKER_STOP:I = 0x1

.field public static final SOUNDSHOT_MODE_ADD_VOICE:I = 0x1

.field public static final SOUNDSHOT_MODE_AUTO:I = 0x0

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TALKBACK_OFF:I = 0x0

.field public static final TALKBACK_ON:I = 0x1

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final TORCH_LIGHT_MODE:I = 0x12c

.field public static final TORCH_LIGHT_OFF:I = 0x0

.field public static final TORCH_LIGHT_ON:I = 0x1

.field public static final TOUCH_TO_CAPTURE_OFF:I = 0x0

.field public static final TOUCH_TO_CAPTURE_ON:I = 0x1

.field public static final VOICECOMMAND_OFF:I = 0x0

.field public static final VOICECOMMAND_ON:I = 0x1

.field public static final VOICE_GUIDE_OFF:I = 0x0

.field public static final VOICE_GUIDE_ON:I = 0x1

.field public static final VOICE_QUICK_ACCESS:I = 0x1770

.field public static final VOICE_QUICK_ACCESS_OFF:I = 0x0

.field public static final VOICE_QUICK_ACCESS_ON:I = 0x1

.field public static final VOLUME_KEY_AS_CAMERA:I = 0x1

.field public static final VOLUME_KEY_AS_RECORD:I = 0x2

.field public static final VOLUME_KEY_AS_ZOOM:I = 0x0

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5


# instance fields
.field private DEFAULT_OUTDOOR_VISIBILITY:I

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAttachCamcorderMode:Z

.field private mAttachCameraMode:Z

.field private mAttachEmailMode:Z

.field private mAttachMMSMode:Z

.field private mAutoContrast:I

.field private mAutoNightDetection:I

.field mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackCameraShootingModeOrder:Ljava/lang/String;

.field public mBackShootingMode:I

.field private mBeautyFaceMode:I

.field private mBeautyLevel:I

.field private mBurstMode:I

.field private mCallStatus:I

.field private mCamcorderAntiShake:I

.field private mCamcorderAudioRecording:I

.field private mCamcorderAudioZoom:I

.field private mCamcorderQuality:I

.field private mCamcorderResolution:I

.field private mCamcorderResolutionChanged:Z

.field private mCameraAntiShake:I

.field mCameraDefaultOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraEditableShortcutMaxSize:I

.field private mCameraEditableShortcutOrder:Ljava/lang/String;

.field private mCameraId:I

.field private mCameraMode:I

.field private mCameraResolutionChanged:Z

.field private mCameraSideBarItemOrder:Ljava/lang/String;

.field private mCameraSideBarMaxSize:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mCoverMode:Z

.field private mDataCheckEnabled:Z

.field private mDataWarningType:I

.field private mDualCaptureMode:I

.field private mDualChanged:Z

.field private mDualEffect:I

.field private mDualLeftBottomX:I

.field private mDualLeftBottomY:I

.field private mDualLeftTopX:I

.field private mDualLeftTopY:I

.field private mDualMode:I

.field private mDualRightBottomX:I

.field private mDualRightBottomY:I

.field private mDualRightTopX:I

.field private mDualRightTopY:I

.field private mEULAEnabled:Z

.field private mEasyMode:Z

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEffect:I

.field private mEffectNotSupportedUHDPopup:I

.field private mExposureMeter:I

.field private mExposureValue:I

.field private mEyeEnlargeLevel:I

.field private mFaceDetectionMode:I

.field private mFastMotionSpeed:I

.field private mFlashMode:I

.field private mFlip:I

.field private mFocusMode:I

.field private mFocusSelectMode:I

.field private mFocusSelectModeWhenAutoMode:I

.field mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCameraShootingModeOrder:Ljava/lang/String;

.field private mFrontCameraSideBarItemOrder:Ljava/lang/String;

.field public mFrontShootingMode:I

.field private mGPS:I

.field private mGuideLine:I

.field private mHDR:I

.field public mHelpMode:I

.field private mISO:I

.field private mIsTemperatureHighToRecord:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private mIsTemperatureLowToUseFlash:Z

.field private mLowBattery:Z

.field private mMaxMmsSize:J

.field private mMode:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

.field private mPreviousSideTouchMode:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mRemoteViewfinderMode:I

.field private mRequestedRecordingSize:J

.field private mResolution:I

.field private mRestoreValueFromHelpModeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReview:I

.field private mSaveRichtone:I

.field private mSceneMode:I

.field private mScreenFlash:I

.field private mSecureMode:Z

.field private mSelfieContinuousValue:I

.field private mSelfieMode:I

.field private mShareMode:I

.field public mShootingMode:I

.field private mShootingModeName:Ljava/lang/String;

.field private mShortcutLayoutReset:I

.field private mShutterSound:I

.field private mSideTouchMode:I

.field private mSlimFaceLevel:I

.field private mSlowMotionSpeed:I

.field private mSoundShotMode:I

.field private mStorage:I

.field private mTimer:I

.field private mTimer_Front:I

.field private mTorchLight:I

.field private mTouchToCapture:I

.field private mUpdateShootingModeByDualCamera:Z

.field private mUriListInSecureMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoDuration:I

.field private mVideocallPresetSelected:Z

.field private mViewModePreview:I

.field private mVoiceCommand:I

.field private mVoiceGuide:I

.field private mVolumeKeyAs:I

.field private mWB:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer_Front:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    iput v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mUpdateShootingModeByDualCamera:Z

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraSideBarItemOrder:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultSideBarMenuOrder()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultFrontSideBarMenuOrder()V

    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getCameraHDRString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getEdmService()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    return-void
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "none"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "none"

    goto :goto_0

    :pswitch_2
    const-string v0, "negative"

    goto :goto_0

    :pswitch_3
    const-string v0, "mono"

    goto :goto_0

    :pswitch_4
    const-string v0, "sepia"

    goto :goto_0

    :pswitch_5
    const-string v0, "solarize"

    goto :goto_0

    :pswitch_6
    const-string v0, "vintage"

    goto :goto_0

    :pswitch_7
    const-string v0, "nostalgia"

    goto :goto_0

    :pswitch_8
    const-string v0, "faded-colours"

    goto :goto_0

    :pswitch_9
    const-string v0, "retro"

    goto :goto_0

    :pswitch_a
    const-string v0, "sunshine"

    goto :goto_0

    :pswitch_b
    const-string v0, "vintage-cold"

    goto :goto_0

    :pswitch_c
    const-string v0, "vintage-warm"

    goto :goto_0

    :pswitch_d
    const-string v0, "point-blue"

    goto :goto_0

    :pswitch_e
    const-string v0, "point-red-yellow"

    goto :goto_0

    :pswitch_f
    const-string v0, "point-green"

    goto :goto_0

    :pswitch_10
    const-string v0, "washed"

    goto :goto_0

    :pswitch_11
    const-string v0, "posterize"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "center"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "center"

    goto :goto_0

    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getExternalShootingModeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    :pswitch_3
    const-string v0, "off"

    goto :goto_0

    :pswitch_4
    const-string v0, "torch"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "infinity"

    goto :goto_0

    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    :pswitch_3
    const-string v0, "face-priority"

    goto :goto_0

    :pswitch_4
    const-string v0, "continuous-video"

    goto :goto_0

    :pswitch_5
    const-string v0, "continuous-picture"

    goto :goto_0

    :pswitch_6
    const-string v0, "continuous-picture-macro"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFrontCameraDefaultShootingMode()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    :pswitch_9
    const-string v0, "sports"

    goto :goto_0

    :pswitch_a
    const-string v0, "night"

    goto :goto_0

    :pswitch_b
    const-string v0, "movie"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    :sswitch_1
    const-string v0, "flash-mode"

    goto :goto_0

    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    :sswitch_4
    const-string v0, "exposure-compensation"

    goto :goto_0

    :sswitch_5
    const-string v0, "effect"

    goto :goto_0

    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    :sswitch_b
    const-string v0, "rt-hdr"

    goto :goto_0

    :sswitch_c
    const-string v0, "anti-shake"

    goto :goto_0

    :sswitch_d
    const-string v0, "wdr"

    goto :goto_0

    :sswitch_e
    const-string v0, "video-size"

    goto :goto_0

    :sswitch_f
    const-string v0, "jpeg-quality"

    goto :goto_0

    :sswitch_10
    const-string v0, "video-stabilization"

    goto :goto_0

    :sswitch_11
    const-string v0, "fast-fps-mode"

    goto :goto_0

    :sswitch_12
    const-string v0, "camera_id"

    goto :goto_0

    :sswitch_13
    const-string v0, "shot-mode"

    goto :goto_0

    :sswitch_14
    const-string v0, "focus-select-mode"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x24 -> :sswitch_12
        0x6c -> :sswitch_1
        0x72 -> :sswitch_14
        0x79 -> :sswitch_b
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_3
        0xbbb -> :sswitch_f
        0xbbf -> :sswitch_10
        0x170e -> :sswitch_11
    .end sparse-switch
.end method

.method public static getQualityValue(I)I
    .locals 1

    const/16 v0, 0x60

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRecordingFastFPSMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "-1"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    :pswitch_2
    const-string v0, "-1"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    :pswitch_e
    const-string v0, "aqua_scn"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getTouchMeteringModeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "weighted-center"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "weighted-center"

    goto :goto_0

    :pswitch_1
    const-string v0, "weighted-spot"

    goto :goto_0

    :pswitch_2
    const-string v0, "weighted-matrix"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "auto"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeBackCamera()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSingleEffectMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSaveRichtoneMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/Camera;->onAutoNightDetectionSelect(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onCameraAntishakeSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/Camera;->onCameraHDRSelect(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onISOMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isFirstStartingAfterResume()Z

    move-result v1

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const/16 v1, 0x14c

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method private initializeFrontCamera()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSingleEffectMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onSaveRichtoneMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onAutoNightDetectionSelect(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onCameraHDRSelect(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onCameraAntishakeSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onISOMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    return-void
.end method

.method public static isGlobal(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_id_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_gps_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_storage_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_self_flip_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoquality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_shuttersound_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_storage_setting_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_change_dual_effect_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_face_zoom_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_guide_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_burst_shot_storage_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_turn_on_burst_help_text_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_single_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_richtone_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_beauty_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_magic_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_focusselct_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_panorama_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_3dtour_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_dual_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_cinepic_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_soundshot_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_sports_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_3dpanorama_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_burst_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_aqua_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_night_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_auto_selfie_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_ultra_wide_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_smart_selfshot_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shootingmode_smart_gifmaker_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_out_focus_shot_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_stabilisation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_snap_shot_limitation_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_side_touch_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_quick_access_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_sensor_capture_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setting_help_overlay_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_editable_shortcut_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_burst_settings_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_volume_key_as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_guideline_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_face_detection_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_share_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_review_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_effect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_sidebar_item_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_camera_sidebar_item_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_editable_shortcut_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_save_richtone_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_auto_night_detection_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_quick_access_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_dual_shot_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_wifi_direct_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_gallery_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_effect_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_remote_view_finder_reset_camera_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_touch_to_capture_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_touch_to_capture_front_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_lefttop_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_lefttop_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_righttop_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_righttop_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rightbottom_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rightbottom_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_leftbottom_x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_leftbottom_y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rect_width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_dual_rect_height"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_location_tag_guide_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camcorder_audiozoom_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_smart_stabilization_dialog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_sidetouch_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_voice_control_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_setup_voice_control_front_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_beauty_level_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_slimface_level_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_eyeenlarge_level_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_selfie_continuous_value_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_selfie_mode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_back_camera_shooting_mode_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_front_camera_shooting_mode_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_show_live_beauty_controller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_exposuremeter_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_transition_animation_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_timer_front_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_timer_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCameraGlobalSettings()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKeyAs(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetOnShutterSound(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCamcorderVideoDuration()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultTimer()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setViewMode(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewfinderMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultQuickAccessMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setQuickAccessMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultTouchToCapture()V

    const/16 v0, 0x57

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    const/16 v0, 0x58

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopX(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftTopY(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopX(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightTopY(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomX(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRightBottomY(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomX(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectLeftBottomY(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectWidth(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualEffectRectHeight(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->saveDualEffectPositionInPreference()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultCameraVoiceCommand()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setOutFocusShotGuideDialog(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetShootingModeGuideDialog()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setScreenFlash(I)V

    return-void
.end method

.method private resetCameraLocalSettings(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraHDR(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFocusSelectMode(I)V

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-ne v0, v3, :cond_5

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setOutdoorVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieContinuousValue(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSlowMotionSpeed(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFastMotionSpeed(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstShotsGuideTextDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstShotsStorageTextDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchGalleryGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchEffectDownloadGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchEffectGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchHelpGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderLaunchSettingsToTurnOnGPSDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderResetCameraGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewFinderWifiDirectGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoStabilisationDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoAudiozoomDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoUhdResolutionDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setVideoWqhdResolutionDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceZoomHelpTextDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSnapshotLimitationDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowTurnOnBurstShotHelpTextDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualTrackingGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeDualEffectDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setQuickAccessDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setHRMSensorCaptureDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSettingOverlayHelpDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowEditableShortcutGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setshowLiveBeautyController(I)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setDataCheckEnable(Ljava/lang/Boolean;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setEULAEnable(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLocationTagGuideDialog(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setOnDeviceHelpScreen(Z)V

    :cond_3
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_1
.end method

.method private resetCommonGlobalSettings()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    return-void
.end method

.method private setCameraMode(I)V
    .locals 4

    const/16 v3, 0x24

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleCameraModeChanged(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method private setDualMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleDualModeChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setNeedSurfaceDestory()V

    :cond_0
    return-void
.end method

.method public static settingShootingModeToCommandId(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x12c

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x133

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x12e

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x153

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x157

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x150

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x152

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x14c

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x149

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x147

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x13f

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x14d

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x148

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x141

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x143

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x14b

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x140

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x14e

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x14f

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x13c

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x13a

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x154

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x156

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x158

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x151

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x155

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_11
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_0
        :pswitch_10
        :pswitch_8
        :pswitch_c
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_5
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public addUriListInSecureMode(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public androidBeamController(ZI)I
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAndoridBeamEnabled nState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x3

    if-eq v3, v2, :cond_0

    const/4 v3, 0x2

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    :cond_4
    if-eq v2, p2, :cond_1

    if-ne v6, p2, :cond_5

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    :cond_5
    if-ne v7, p2, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ComboPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method public clearUriListInSecureMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAntiBanding()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCSCUsedInManyCountriesForLatin()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntibandingByMCCForLatin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50hz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "50hz"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "60hz"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Camera_CameraFlicker"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "50hz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "50hz"

    goto :goto_0

    :cond_2
    const-string v1, "60hz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "60hz"

    goto :goto_0

    :cond_3
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "auto"

    goto :goto_0

    :cond_4
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "off"

    goto :goto_0

    :cond_5
    const-string v1, "50hz"

    goto :goto_0

    :cond_6
    const-string v1, "50hz"

    goto :goto_0
.end method

.method public getAntibandingByMCCForLatin()Ljava/lang/String;
    .locals 10

    const-string v5, "000"

    const-string v7, "gsm.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "338"

    const-string v0, "722"

    const-string v1, "730"

    const-string v3, "744"

    const-string v4, "748"

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAntibandingByMCCForLatin : mcc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v7, "338"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "722"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "730"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "744"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "748"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const-string v7, "50hz"

    :goto_0
    return-object v7

    :cond_2
    const-string v7, "60hz"

    goto :goto_0
.end method

.method public getAttachCamcorderMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    return v0
.end method

.method public getAttachCameraMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    return v0
.end method

.method public getAttachEmailMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAutoContrast()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    return v0
.end method

.method public getAutoNightDetectionMode()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_auto_night_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBackCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultBackCameraShootingModeOrder()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_back_camera_shooting_mode_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBeautyFaceMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    return v0
.end method

.method public getBeautyLevel()I
    .locals 3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_beauty_level_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBurstDuration(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const v0, 0x2f9b8

    goto :goto_0

    :sswitch_2
    const v0, 0x61a80

    goto :goto_0

    :sswitch_3
    const v0, 0xc3500

    goto :goto_0

    :sswitch_4
    const v0, 0x50910

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x22 -> :sswitch_3
        0x38 -> :sswitch_4
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public getBurstMode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getBurstShotsGuideTextDialog()I
    .locals 2

    const-string v0, "pref_burst_shot_guide_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBurstShotsStorageTextDialog()I
    .locals 2

    const-string v0, "pref_burst_shot_storage_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    return v0
.end method

.method public getCamcorderAntishake()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderAudioRecording()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    return v0
.end method

.method public getCamcorderAudioZoom()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_audiozoom_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCoverModeCamcorderResolution()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEasyModeCamcorderResolution()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCamcorderResolutionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    return v0
.end method

.method public getCamcorderVideoDuration()I
    .locals 2

    const-string v0, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderVideoDurationInMS()I
    .locals 3

    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_MmsModeCaptureVideoMaxDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    :goto_0
    return v1

    :cond_0
    const v1, 0x36ee80

    goto :goto_0

    :cond_1
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getCameraAntiShake()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraDualEffect()I
    .locals 5

    const/16 v4, 0x2a

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_dual_effect"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_dual_effect"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraDualEffect(I)V

    :cond_1
    return v0
.end method

.method public getCameraEditableShortcutOrder()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_editable_shortcut_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraExposureMeter()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraFocusMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraHDR()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraISO()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    return v0
.end method

.method public getCameraIdFromPreferences()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCameraMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v0, :cond_0

    const-string v0, "2976x2976"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEasyModeCameraResolution()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCameraResolutionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    return v0
.end method

.method public getCameraShortcutMenuID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "flashmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const-string v0, "shootingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "scenemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "exposurevalue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const-string v0, "focusmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v0, "timer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string v0, "effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbb9

    goto :goto_0

    :cond_8
    const-string v0, "whitebalance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    :cond_9
    const-string v0, "iso"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const-string v0, "exposuremeter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    goto :goto_0

    :cond_b
    const-string v0, "outdoorvisibility"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x23

    goto :goto_0

    :cond_c
    const-string v0, "hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_d
    const-string v0, "antishake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_e
    const-string v0, "autocontrast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_f
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_10
    const-string v0, "quality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xbbb

    goto/16 :goto_0

    :cond_11
    const-string v0, "guideline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_12
    const-string v0, "fullview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_13
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_14
    const-string v0, "shuttersound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_15
    const-string v0, "selfflip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x33

    goto/16 :goto_0

    :cond_16
    const-string v0, "storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_17
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_18
    const-string v0, "recordingmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0xbb8

    goto/16 :goto_0

    :cond_19
    const-string v0, "audiorecording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0xbbc

    goto/16 :goto_0

    :cond_1a
    const-string v0, "focusselectmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x62

    goto/16 :goto_0

    :cond_1b
    const-string v0, "screenflash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x7a

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x63

    goto/16 :goto_0
.end method

.method public getCameraShutterSound()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_shuttersound_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSingleEffect()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getCameraVoiceCommand()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onChkVoiceQuickAccessIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_setup_voice_control_front_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraVoiceCommand()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "pref_setup_voice_control_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraVoiceCommand()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getChangeDualEffectDialog()I
    .locals 2

    const-string v0, "pref_change_dual_effect_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getChangeStorageSettingDialog()I
    .locals 2

    const-string v0, "pref_change_storage_setting_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCoverModeCamcorderResolution()I
    .locals 1

    const-string v0, "1088x1088"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataWarningType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    return v0
.end method

.method public getDefaultAutoNightDetectionMode()I
    .locals 5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "csc_pref_camera_autonightdetection_key"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultAutoNightDetectionMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultBurstMode()I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "csc_pref_camera_burstshot_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCamcorderAntishake()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public getDefaultCamcorderAudioZoom()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultCamcorderQuality()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camera_videoquality_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCamcorderQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDefaultCamcorderResolution()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camcorder_resolution_key"

    const-string v3, "1920x1080"

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "1280x720"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultCameraFocusMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCameraQuality()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camera_quality_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultCameraQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "5312x2988"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "2560x1440"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultCameraVoiceCommand()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDefaultFlashMode()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camera_flash_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFlashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultQuickAccessMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultShootingMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFrontCameraDefaultShootingMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultStorage()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_setup_storage_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getDefaultTouchToCapture()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDualCameraEffectForHelpMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_dual_effect"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualCaptureMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_dual_shot_mode_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectLeftBottomX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    return v0
.end method

.method public getDualEffectLeftBottomY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    return v0
.end method

.method public getDualEffectLeftTopX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    return v0
.end method

.method public getDualEffectLeftTopY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    return v0
.end method

.method public getDualEffectRectHeight()I
    .locals 2

    const-string v0, "pref_camera_dual_rect_height"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectRectWidth()I
    .locals 2

    const-string v0, "pref_camera_dual_rect_width"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDualEffectRightBottomX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    return v0
.end method

.method public getDualEffectRightBottomY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    return v0
.end method

.method public getDualEffectRightTopX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    return v0
.end method

.method public getDualEffectRightTopY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    return v0
.end method

.method public getDualTrackingGuideDialog()I
    .locals 2

    const-string v0, "pref_dual_tracking_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEasyModeCamcorderResolution()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x13

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getEasyModeCameraResolution()I
    .locals 3

    const/16 v2, 0x2e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_1

    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "3264x1836"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "5312x2988"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, "1920x1080"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "2560x1440"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getEffectNotSupportedUHDPopup()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    return v0
.end method

.method public getExposureValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getExposureValueResourceString(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, -0x40000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, -0x40400000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, -0x40800000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, -0x41000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x3f000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x3f800000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x3fc00000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    const/high16 v3, 0x40000000

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getEyeEnlargeLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_eyeenlarge_level_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFaceDetectionMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_face_detection_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFaceZoomHelpTextDialog()I
    .locals 2

    const-string v0, "pref_face_zoom_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFastMotionSpeed()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    return v0
.end method

.method public getFlashMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFocusSelectMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    return v0
.end method

.method public getFocusSelectModeInAutoMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    return v0
.end method

.method public getForcedShutterSound()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public getFrontCameraShootingModeOrder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultFrontCameraShootingModeOrder()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_front_camera_shooting_mode_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrontSideBarMenuOrder()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_front_camera_sidebar_item_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGPS()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getGolfDirection()I
    .locals 2

    const-string v0, "pref_golf_direction"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGuideline()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHRMSensorCaptureDialog()I
    .locals 2

    const-string v0, "pref_sensor_capture_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    return v0
.end method

.method public getLocationTagGuideDialog()I
    .locals 2

    const-string v0, "pref_location_tag_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    return v0
.end method

.method public getMagicShotDescriptionString()Ljava/lang/String;
    .locals 4

    const v3, 0x7f0c019c

    const v2, 0x7f0c019b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c019d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c019e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c019f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxRecordingSize()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    return-wide v0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getNfcRwP2pState()I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterRwP2pState()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0xb

    goto :goto_0
.end method

.method public getNfcState()I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOnDeviceHelpScreen()Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v0, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    move v7, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getOutFocusShotGuideDialog()I
    .locals 2

    const-string v0, "pref_out_focus_shot_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOutdoorVisibility()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getPreferences()Lcom/sec/android/app/camera/ComboPreferences;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraIdFromPreferences()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Lcom/sec/android/app/camera/ComboPreferences;

    return-object v0
.end method

.method public getPreviousSideTouchMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    return v0
.end method

.method public getQuickAccessDialog()I
    .locals 2

    const-string v0, "pref_quick_access_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuickAccessMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteViewFinderLaunchEffectDownloadGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchEffectGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_launch_effect_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchGalleryGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_launch_gallery_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchHelpGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderLaunchSettingsToTurnOnGPSDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderResetCameraGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_reset_camera_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewFinderWifiDirectGuideDialog()I
    .locals 2

    const-string v0, "pref_remote_view_finder_wifi_direct_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteViewfinderMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    return v0
.end method

.method public getRequestedRecordingSize()J
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-wide/32 v0, 0x49c00

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    return-wide v0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0x3200000

    iput-wide v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    goto :goto_0
.end method

.method public getReview()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getReviewTimer()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSaveRichtone()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_save_richtone_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getScreenFlash()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    return v0
.end method

.method public getSelfFlip()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSelfieContinuousValue()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_selfie_continuous_value_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSelfieMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_selfie_mode_key"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSettingOverLayHelpDialog()I
    .locals 2

    const-string v0, "pref_setting_help_overlay_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSettingValue(I)I
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const v0, -0xffff

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v0

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSlimFaceLevel()I

    move-result v0

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEyeEnlargeLevel()I

    move-result v0

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v0

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v0

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v0

    goto :goto_0

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v0

    goto :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v0

    goto :goto_0

    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v0

    goto :goto_0

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v0

    goto :goto_0

    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v0

    goto :goto_0

    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    goto :goto_0

    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v0

    goto :goto_0

    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v0

    goto :goto_0

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getScreenFlash()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getOutdoorVisibility()I

    move-result v0

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v0

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v0

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    goto/16 :goto_0

    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v0

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getQuickAccessMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKeyAs()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v0

    goto/16 :goto_0

    :sswitch_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSlowMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    :sswitch_33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFastMotionSpeed()I

    move-result v0

    goto/16 :goto_0

    :sswitch_34
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_36
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVoiceGuide()I

    move-result v0

    goto/16 :goto_0

    :sswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v0

    goto/16 :goto_0

    :sswitch_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_c
        0x9 -> :sswitch_e
        0xa -> :sswitch_f
        0xb -> :sswitch_10
        0xc -> :sswitch_12
        0xd -> :sswitch_13
        0xe -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_17
        0x13 -> :sswitch_18
        0x14 -> :sswitch_19
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1d
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1f
        0x26 -> :sswitch_1a
        0x35 -> :sswitch_26
        0x3f -> :sswitch_27
        0x47 -> :sswitch_2a
        0x48 -> :sswitch_2c
        0x4d -> :sswitch_2d
        0x51 -> :sswitch_2e
        0x55 -> :sswitch_30
        0x57 -> :sswitch_34
        0x58 -> :sswitch_35
        0x59 -> :sswitch_36
        0x5a -> :sswitch_d
        0x62 -> :sswitch_31
        0x63 -> :sswitch_37
        0x6c -> :sswitch_3
        0x6d -> :sswitch_8
        0x70 -> :sswitch_28
        0x72 -> :sswitch_38
        0x78 -> :sswitch_29
        0x79 -> :sswitch_12
        0x7a -> :sswitch_2f
        0x7b -> :sswitch_3
        0x7d -> :sswitch_b
        0x81 -> :sswitch_9
        0x82 -> :sswitch_a
        0x87 -> :sswitch_1b
        0x138 -> :sswitch_11
        0xbb8 -> :sswitch_20
        0xbb9 -> :sswitch_21
        0xbbb -> :sswitch_24
        0xbbc -> :sswitch_25
        0xbbf -> :sswitch_22
        0xbc7 -> :sswitch_23
        0x170e -> :sswitch_32
        0x170f -> :sswitch_33
    .end sparse-switch
.end method

.method public getShareMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    return v0
.end method

.method public getShootingMode()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_0
.end method

.method public getShootingModeGuideDialog(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeKey(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getShootingModeKey(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "pref_shootingmode_single_guide_dialog"

    goto :goto_0

    :sswitch_1
    const-string v0, "pref_shootingmode_beauty_guide_dialog"

    goto :goto_0

    :sswitch_2
    const-string v0, "pref_shootingmode_magic_guide_dialog"

    goto :goto_0

    :sswitch_3
    const-string v0, "pref_shootingmode_focusselct_guide_dialog"

    goto :goto_0

    :sswitch_4
    const-string v0, "pref_shootingmode_panorama_guide_dialog"

    goto :goto_0

    :sswitch_5
    const-string v0, "pref_shootingmode_3dtour_guide_dialog"

    goto :goto_0

    :sswitch_6
    const-string v0, "pref_shootingmode_smart_selfshot_guide_dialog"

    goto :goto_0

    :sswitch_7
    const-string v0, "pref_shootingmode_dual_guide_dialog"

    goto :goto_0

    :sswitch_8
    const-string v0, "pref_shootingmode_cinepic_guide_dialog"

    goto :goto_0

    :sswitch_9
    const-string v0, "pref_shootingmode_soundshot_guide_dialog"

    goto :goto_0

    :sswitch_a
    const-string v0, "pref_shootingmode_sports_guide_dialog"

    goto :goto_0

    :sswitch_b
    const-string v0, "pref_shootingmode_3dpanorama_guide_dialog"

    goto :goto_0

    :sswitch_c
    const-string v0, "pref_shootingmode_richtone_guide_dialog"

    goto :goto_0

    :sswitch_d
    const-string v0, "pref_shootingmode_burst_guide_dialog"

    goto :goto_0

    :sswitch_e
    const-string v0, "pref_shootingmode_aqua_guide_dialog"

    goto :goto_0

    :sswitch_f
    const-string v0, "pref_shootingmode_night_guide_dialog"

    goto :goto_0

    :sswitch_10
    const-string v0, "pref_shootingmode_auto_selfie_guide_dialog"

    goto :goto_0

    :sswitch_11
    const-string v0, "pref_shootingmode_ultra_wide_guide_dialog"

    goto :goto_0

    :sswitch_12
    const-string v0, "pref_shootingmode_smart_gifmaker_guide_dialog"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x7 -> :sswitch_1
        0xe -> :sswitch_c
        0x11 -> :sswitch_d
        0x17 -> :sswitch_f
        0x23 -> :sswitch_9
        0x25 -> :sswitch_b
        0x26 -> :sswitch_8
        0x27 -> :sswitch_f
        0x28 -> :sswitch_a
        0x2a -> :sswitch_e
        0x2d -> :sswitch_3
        0x2e -> :sswitch_2
        0x2f -> :sswitch_7
        0x30 -> :sswitch_5
        0x34 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_6
        0x3a -> :sswitch_12
    .end sparse-switch
.end method

.method public getShootingModeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getShootingModeResourceString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShootingModeResourceString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->settingShootingModeToCommandId(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x155

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getExternalShootingModeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, ""

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0119

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c00d4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_17
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0118

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_1f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_c
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
    .end packed-switch
.end method

.method public getShootingModeType()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    sparse-switch v1, :sswitch_data_0

    const/16 v0, 0x64

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_3
        0x7 -> :sswitch_0
        0xe -> :sswitch_2
        0x17 -> :sswitch_5
        0x25 -> :sswitch_4
        0x27 -> :sswitch_5
        0x2d -> :sswitch_7
        0x2e -> :sswitch_8
        0x2f -> :sswitch_6
        0x30 -> :sswitch_9
        0x34 -> :sswitch_3
        0x37 -> :sswitch_0
        0x38 -> :sswitch_a
    .end sparse-switch
.end method

.method public getShootingModeValueForISPset(I)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v0, 0xa

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    move v0, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x1c

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_8
        0x7 -> :sswitch_2
        0xe -> :sswitch_a
        0x17 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_6
        0x1c -> :sswitch_c
        0x1f -> :sswitch_5
        0x22 -> :sswitch_7
        0x23 -> :sswitch_b
        0x25 -> :sswitch_9
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x28 -> :sswitch_f
        0x2a -> :sswitch_10
        0x2d -> :sswitch_12
        0x2e -> :sswitch_11
        0x30 -> :sswitch_13
        0x34 -> :sswitch_14
        0x37 -> :sswitch_3
        0x38 -> :sswitch_15
    .end sparse-switch
.end method

.method public getShortcutLayoutReset()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    return v0
.end method

.method public getShortcutMenuID(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSideBarMenuOrder()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_sidebar_item_order"

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSideBarMenuOrderByCommandId(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideBarMenuOrder()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFrontSideBarMenuOrder()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSideTouchGuideDialog()I
    .locals 2

    const-string v0, "pref_side_touch_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSideTouchMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_sidetouch_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSlimFaceLevel()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_slimface_level_key"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSlowMotionFactor()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSlowMotionSpeed()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    return v0
.end method

.method public getSlowMotionTimescale()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSmartStablilizationDialog()I
    .locals 2

    const-string v0, "pref_smart_stabilization_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSnapshotLimitationDialog()I
    .locals 2

    const-string v0, "pref_snap_shot_limitation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSoundShotMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    return v0
.end method

.method public getStorage()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimeLapseFps(D)D
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-wide p1

    :pswitch_0
    const-wide/high16 v0, 0x4000000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x4010000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    :pswitch_2
    const-wide/high16 v0, 0x4020000000000000L

    div-double/2addr p1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTimer()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_timer_front_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer_Front:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTorchLightStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    return v0
.end method

.method public getTouchToCapture()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_touch_to_capture_front_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultTouchToCapture()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_touch_to_capture_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultTouchToCapture()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getUriListInSecureMode()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mUriListInSecureMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoAudiozoomDialog()I
    .locals 2

    const-string v0, "pref_video_audiozoom_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoFhdResolutionDialog()I
    .locals 2

    const-string v0, "pref_video_fhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoStabilisationDialog()I
    .locals 2

    const-string v0, "pref_video_stabilisation_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoUhdResolutionDialog()I
    .locals 2

    const-string v0, "pref_video_uhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoWqhdResolutionDialog()I
    .locals 2

    const-string v0, "pref_video_wqhd_resolution_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    return v0
.end method

.method public getVoiceGuide()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    return v0
.end method

.method public getVolumeKeyAs()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_camera_volume_key_as"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    if-ne v0, v3, :cond_1

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    if-ne v0, v2, :cond_0

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    goto :goto_0
.end method

.method public getWhiteBalance()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getWifiP2pDeviceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiP2pDeviceType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomValue()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getshowEditableShortcutGuideDialog()I
    .locals 2

    const-string v0, "pref_editable_shortcut_guide_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getshowLiveBeautyController()I
    .locals 2

    const-string v0, "pref_show_live_beauty_controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getshowTurnOnBurstShotHelpTextDialog()I
    .locals 2

    const-string v0, "pref_turn_on_burst_help_text_dialog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleNotification(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public initializeCamera()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeBackCamera()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setFirstStartingAfterResume(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeFrontCamera()V

    goto :goto_0
.end method

.method public initializeCameraMode(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    goto :goto_0
.end method

.method public initializeCameraResolution()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    const-string v2, "unsupported back camera resolution value is changed to default."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    const-string v2, "unsupported front camera resolution value is changed to default."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public initializeDefaultBackCameraShootingModeOrderList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x14b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public initializeDefaultFrontCameraShootingModeOrderList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public initializeDefaultOrderList()V
    .locals 2

    const v1, 0x7f0b003b

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    const v0, 0x7f0b0012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    const v1, 0x7f0b0013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_DisableGPSMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public isAndroidBeamEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCSCUsedInManyCountriesForLatin()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TFG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "CameraSettings"

    const-string v2, "isCSCUsedInManyCountriesForLatin : SalesCode = TFG, TPA, TTT, JDI, PCI "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCamcorderFastMotionEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCamcorderRecordingMMSMode()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isCamcorderSlowMotionEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCamcorderSmoothMotionEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCoverMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    return v0
.end method

.method public isDataCheckEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_datacheck_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDualBackCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDualMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEULAEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_setup_eula_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEasyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    return v0
.end method

.method public isExternalShootingMode(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public isFrontCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isNotificationExist()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isP2pEnabled()Z
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "CameraSettings"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRecordingSlowMotionEnabled()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSecureMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    return v0
.end method

.method public isSingleEffect()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBackCamcorderResolutionFeature(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "1088x1088"

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :cond_1
    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    move v1, v2

    goto :goto_0

    :sswitch_2
    move v1, v2

    goto :goto_0

    :sswitch_3
    move v1, v2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :cond_5
    :goto_1
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    const/16 v0, 0x13

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x15 -> :sswitch_0
        0x1f -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public isSupportedBackCameraResolutionFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    :cond_2
    const-string v2, "3264x1836"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    :pswitch_15
    move v0, v1

    goto :goto_0

    :pswitch_16
    move v0, v1

    goto :goto_0

    :pswitch_17
    move v0, v1

    goto :goto_0

    :pswitch_18
    move v0, v1

    goto :goto_0

    :pswitch_19
    move v0, v1

    goto :goto_0

    :pswitch_1a
    move v0, v1

    goto :goto_0

    :pswitch_1b
    move v0, v1

    goto :goto_0

    :pswitch_1c
    move v0, v1

    goto :goto_0

    :pswitch_1d
    move v0, v1

    goto :goto_0

    :pswitch_1e
    move v0, v1

    goto :goto_0

    :pswitch_1f
    move v0, v1

    goto :goto_0

    :pswitch_20
    move v0, v1

    goto :goto_0

    :pswitch_21
    move v0, v1

    goto :goto_0

    :pswitch_22
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1c
        :pswitch_20
        :pswitch_21
        :pswitch_13
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_22
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_0
        :pswitch_14
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1a
        :pswitch_1e
        :pswitch_6
        :pswitch_1b
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_1f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_15
        :pswitch_2
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public isSupportedBackCameraShootingMode(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method

.method public isSupportedFrontCamcorderResolutionFeature(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    move v1, v2

    goto :goto_0

    :sswitch_2
    move v1, v2

    goto :goto_0

    :sswitch_3
    move v1, v2

    goto :goto_0

    :sswitch_4
    move v1, v2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-ne v3, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    :cond_4
    :goto_1
    if-eq p1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x13

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x15 -> :sswitch_0
        0x1f -> :sswitch_1
        0x22 -> :sswitch_2
        0x29 -> :sswitch_4
    .end sparse-switch
.end method

.method public isSupportedFrontCameraResolutionFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    const-string v2, "640x480"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    :pswitch_15
    move v0, v1

    goto :goto_0

    :pswitch_16
    move v0, v1

    goto :goto_0

    :pswitch_17
    move v0, v1

    goto :goto_0

    :pswitch_18
    move v0, v1

    goto :goto_0

    :pswitch_19
    move v0, v1

    goto :goto_0

    :pswitch_1a
    move v0, v1

    goto :goto_0

    :pswitch_1b
    move v0, v1

    goto :goto_0

    :pswitch_1c
    move v0, v1

    goto :goto_0

    :pswitch_1d
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_13
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_19
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_f
        :pswitch_11
        :pswitch_9
        :pswitch_10
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_4
        :pswitch_12
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedFrontCameraShootingMode(I)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedSlowMotionCamcorderResolution(II)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSupportedVideoStabilization()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSmoothMotionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTemperatureHighToRecord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    return v0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public isTemperatureLowToUseFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    return v0
.end method

.method public isVideocallPresetSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    return v0
.end method

.method public loadDualEffectPositionFromPreference()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "pref_camera_dual_lefttop_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    const-string v0, "pref_camera_dual_lefttop_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    const-string v0, "pref_camera_dual_righttop_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    const-string v0, "pref_camera_dual_righttop_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    const-string v0, "pref_camera_dual_rightbottom_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    const-string v0, "pref_camera_dual_rightbottom_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    const-string v0, "pref_camera_dual_leftbottom_x"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    const-string v0, "pref_camera_dual_leftbottom_y"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    return-void
.end method

.method public varargs loadFromPreferences([I)V
    .locals 7

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromPreferences - index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v2, :sswitch_data_0

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in loadFromPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlashMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDualEffect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mISO : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mExposureMeter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<fullview> loadFromPreferences mFullviewPreview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHDR : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCameraAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoContrast : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReview : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGPS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mShutterSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStorage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFlip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderResolution : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAntiShake : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVoiceCommand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGuideLine : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRichToneMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeautyFaceMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSelfieMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSelfieContinuousValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getVolumeKeyAs()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeKeyAs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFaceDetectionMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTouchToCapture : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBurstMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSideTouchMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutoNightDetection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDualCaptureMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCamcorderAudioZoom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRemoteViewfinderMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBeautyLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_25
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFocusSelectMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :sswitch_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getScreenFlash()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenFlash : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x13 -> :sswitch_16
        0x14 -> :sswitch_e
        0x15 -> :sswitch_f
        0x16 -> :sswitch_10
        0x22 -> :sswitch_17
        0x26 -> :sswitch_11
        0x35 -> :sswitch_0
        0x3f -> :sswitch_1e
        0x47 -> :sswitch_15
        0x48 -> :sswitch_1b
        0x51 -> :sswitch_18
        0x55 -> :sswitch_1c
        0x57 -> :sswitch_20
        0x58 -> :sswitch_21
        0x5a -> :sswitch_5
        0x62 -> :sswitch_1d
        0x63 -> :sswitch_23
        0x6c -> :sswitch_1
        0x6d -> :sswitch_24
        0x70 -> :sswitch_1f
        0x72 -> :sswitch_25
        0x79 -> :sswitch_9
        0x7a -> :sswitch_19
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1a
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x87 -> :sswitch_26
        0x138 -> :sswitch_8
        0xbb9 -> :sswitch_12
        0xbbb -> :sswitch_13
        0xbbf -> :sswitch_14
        0xbc7 -> :sswitch_22
    .end sparse-switch
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public notifyPictureSizeHeightForDual()I
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CameraSettings"

    const-string v2, "notifyPictureSizeWidthForDual "

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    goto :goto_0
.end method

.method public notifyPictureSizeWidthForDual()I
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CameraSettings"

    const-string v2, "notifyPictureSizeWidthForDual "

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public refreshButtonDimForCamera()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xbbf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xbc7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0xbb8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x35

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x63

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x57

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x12c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTorchLightStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x136

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCallStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    const/16 v1, 0x72

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1771

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public refreshCameraSettingValues()V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public refreshSettingValuesFromPreferences()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->loadFromPreferences([I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderVideoDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    return-void

    :array_0
    .array-data 4
        0x3
        0x6c
        0x4
        0xbb9
        0x5
        0xb
        0x138
        0x14
        0x15
        0x16
        0x26
        0xc
        0x79
        0xd
        0xbbf
        0x10
        0xbbb
        0x11
        0x13
        0x47
        0x35
        0x48
        0x55
        0x3f
        0x70
        0x57
        0x58
        0x62
        0xbc7
        0xbc7
        0x6d
        0x72
        0x7b
        0x87
    .end array-data
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestGroupInfo()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraSettings"

    const-string v1, "requestGroupInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_2

    const-string v0, "CameraSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/sec/android/app/camera/CameraSettings$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraSettings$1;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "CameraSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetButtonDim()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    return-void
.end method

.method public resetCameraSettingsInDual()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraLocalSettings(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCommonGlobalSettings()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraGlobalSettings()V

    return-void
.end method

.method public resetEditableSideBarLayout()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSideBarMenuOrder(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFrontSideBarMenuOrder(Ljava/lang/String;)V

    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderVideoDuration(I)V

    goto :goto_0
.end method

.method public resetObservers()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetShootingModeGuideDialog()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x2d

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x26

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x25

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    const/16 v0, 0x34

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingModeGuideDialog(II)V

    return-void
.end method

.method public resetShootingModeOrder()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultBackCameraShootingModeOrder()V

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBackCameraShootingModeOrder(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setDefaultFrontCameraShootingModeOrder()V

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    return-void
.end method

.method public resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetZoomValue()V
    .locals 2

    const-string v0, "CameraSettings"

    const-string v1, "resetZoomValue"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return-void
.end method

.method public restoreFromHelpMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    :cond_c
    return-void
.end method

.method public saveDualEffectPositionInPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_dual_lefttop_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_lefttop_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_righttop_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_righttop_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_rightbottom_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_rightbottom_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_leftbottom_x"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_dual_leftbottom_y"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAndroidBeamDisabled()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    :cond_0
    return-void
.end method

.method public setAttachCamcorderMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCamcorderMode:Z

    return-void
.end method

.method public setAttachCameraMode(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttachCameraMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachCameraMode:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    iput-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    :cond_0
    return-void
.end method

.method public setAttachEmailMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachEmailMode:Z

    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return-void
.end method

.method public setAutoContrast(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setAutoNightDetectionMode(I)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_auto_night_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultAutoNightDetectionMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    if-eq v2, p1, :cond_0

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoNightDetectionMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_auto_night_detection_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x57

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoNightDetection:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_back_camera_shooting_mode_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackCameraShootingModeOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_back_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraShootingModeOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setBeautyFaceMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyFaceMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    const/16 v0, 0x51

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyFaceMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setBeautyLevel(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_beauty_level_key"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeautyLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_beauty_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x6d

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBeautyLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setBurstMode(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_burst_settings_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x3f

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBurstMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setBurstShotsGuideTextDialog(I)V
    .locals 4

    const-string v1, "pref_burst_shot_guide_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstShotsGuideTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_burst_shot_guide_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setBurstShotsStorageTextDialog(I)V
    .locals 4

    const-string v1, "pref_burst_shot_storage_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBurstShotsStorageTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_burst_shot_storage_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setCallStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCallStatus:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleCallStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public setCamcorderAntishake(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_antishake_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camcorder_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xbbf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    const/16 v0, 0xbbc

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCamcorderAudioZoom(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_audiozoom_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAudioZoom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camcorder_audiozoom_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xbc7

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioZoom:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCamcorderQuality(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderQuality()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xbbb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCamcorderRecordingMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 7

    const/16 v6, 0xbb9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v3, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v3, p1, :cond_1

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCamcorderResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_camcorder_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setCamcorderResolutionChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolutionChanged:Z

    return-void
.end method

.method public setCamcorderVideoDuration(I)V
    .locals 4

    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setCameraAntiShake(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraAntiShake:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCameraDualEffect(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraDualEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_dual_effect"

    const/16 v3, 0x2a

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    const/16 v1, 0x33

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    if-eq v1, p1, :cond_0

    const/16 v1, 0x28

    if-lt p1, v1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_dual_effect"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    :cond_1
    const/16 v1, 0x5a

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    goto :goto_0
.end method

.method public setCameraEditableShortcutOrder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_editable_shortcut_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraEditableShortcutOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_editable_shortcut_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 4

    const/16 v3, 0x8

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectMode(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_2
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_3
    return-void
.end method

.method public setCameraExposureMeter(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureMeter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCameraFocusMode(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCameraHDR(I)V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_hdr_key"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraHDR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_hdr_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mHDR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraISO(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(IZ)V

    return-void
.end method

.method public setCameraId(IZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraId - wrong camera id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraMode(I)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    goto :goto_0
.end method

.method public setCameraModeForDualCamera(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualChanged:Z

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    const/16 v0, 0x24

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraMode:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setCameraQuality(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v3, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set wrong resolution for front camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set wrong resolution for back camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v3, p1, :cond_5

    const-string v3, "CameraSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCameraResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "pref_camera_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "pref_camera_resolution_key"

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->updateDualCameraSetting(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto/16 :goto_0
.end method

.method public setCameraResolutionChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraResolutionChanged:Z

    return-void
.end method

.method public setCameraResolutionForDual(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x1

    return v1
.end method

.method public setCameraShutterSound(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v2, "CameraSettings"

    const-string v3, "In this model, shutter sound must be playbacked"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_camera_shuttersound_key"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v2, p1, :cond_0

    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraShutterSound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_shuttersound_key"

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x15

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setCameraVoiceCommand(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(IZ)V

    return-void
.end method

.method public setCameraVoiceCommand(IZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraVoiceCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    if-ne p1, v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onChkVoiceQuickAccessIntent()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "pref_setup_voice_control_front_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const/16 v1, 0x47

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_5
    const-string v1, "CameraSettings"

    const-string v2, "setCameraVoiceCommand OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    goto :goto_1

    :cond_6
    const-string v1, "pref_setup_voice_control_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public setCameraVoiceCommandBoth(IZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraVoiceCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    if-ne p1, v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "com.vlingo.midas"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onChkVoiceQuickAccessIntent()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_voice_control_front_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_setup_voice_control_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const/16 v1, 0x47

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_5
    const-string v1, "CameraSettings"

    const-string v2, "setCameraVoiceCommand OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x125c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    goto :goto_1
.end method

.method public setChangeDualEffectDialog(I)V
    .locals 4

    const-string v1, "pref_change_dual_effect_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeDualEffectDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_change_dual_effect_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setChangeStorageSettingDialog(I)V
    .locals 4

    const-string v1, "pref_change_storage_setting_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChangeStorageSettingDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_change_storage_setting_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setCoverMode(Z)V
    .locals 7

    const/16 v6, 0xbb9

    const/16 v5, 0x137

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleCoverModeChanged(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setDataCheckEnable(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_datacheck_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataCheckEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_datacheck_key"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataCheckEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setDataWarningType(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataWarningType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDataWarningType:I

    return-void
.end method

.method public setDefaultBackCameraShootingModeOrder()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultBackCameraShootingModeOrderList()V

    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_BACK_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefaultCamcorderVideoDuration()V
    .locals 3

    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_video_duration_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDefaultCameraEditableShortcutOrder()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultOrderList()V

    const-string v1, ""

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraEditableShortcutMaxSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraDefaultOrderList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarMaxSize:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "99,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_EDITABLE_SHORTCUT_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefaultCameraVoiceCommand()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_voice_control_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_setup_voice_control_front_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x47

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceCommand:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public setDefaultFrontCameraShootingModeOrder()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultFrontCameraShootingModeOrderList()V

    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraDefaultShootingModeOrderList:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefaultFrontSideBarMenuOrder()V
    .locals 3

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "109,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultFrontSideBarMenuOrder, order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefaultSideBarMenuOrder()V
    .locals 3

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "12,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    :cond_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSideBarMenuOrder, order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDefaultTimer()V
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer_Front:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_timer_front_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer_Front:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_timer_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setDefaultTouchToCapture()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_touch_to_capture_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_camera_touch_to_capture_front_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x62

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public setDualCaptureMode(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_dual_shot_mode_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualShotMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dual_shot_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x58

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualCaptureMode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setDualEffectLeftBottomX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomX:I

    return-void
.end method

.method public setDualEffectLeftBottomY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftBottomY:I

    return-void
.end method

.method public setDualEffectLeftTopX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopX:I

    return-void
.end method

.method public setDualEffectLeftTopY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualLeftTopY:I

    return-void
.end method

.method public setDualEffectRectHeight(I)V
    .locals 4

    const-string v1, "pref_camera_dual_rect_height"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualEffectRectHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_dual_rect_height"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setDualEffectRectWidth(I)V
    .locals 4

    const-string v1, "pref_camera_dual_rect_width"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualEffectRectWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_dual_rect_width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setDualEffectRightBottomX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomX:I

    return-void
.end method

.method public setDualEffectRightBottomY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightBottomY:I

    return-void
.end method

.method public setDualEffectRightTopX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopX:I

    return-void
.end method

.method public setDualEffectRightTopY(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualRightTopY:I

    return-void
.end method

.method public setDualTrackingGuideDialog(I)V
    .locals 4

    const-string v1, "pref_dual_tracking_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualTrackingGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_dual_tracking_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setEULAEnable(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_eula_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEULAEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_eula_key"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEULAEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setEasyMode(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleEasyModeChanged(Z)V

    :cond_2
    return-void
.end method

.method public setEffectMode(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mDualMode:I

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p2, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    goto :goto_0
.end method

.method public setEffectNotSupportedUHDPopup(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffectNotSupportedUHDPopup:I

    return-void
.end method

.method public setExposureValue(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setEyeEnlargeLevel(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_eyeenlarge_level_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEyeEnlargeLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_eyeenlarge_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x82

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mEyeEnlargeLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setFaceDetectionMode(I)V
    .locals 4

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curFD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_face_detection_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceDetectionMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_face_detection_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x55

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFaceDetectionMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setFaceZoomHelpTextDialog(I)V
    .locals 4

    const-string v1, "pref_face_zoom_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFaceZoomHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_face_zoom_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setFastMotionSpeed(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFastMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    const/16 v0, 0x170f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setFlashMode(I)V
    .locals 7

    const/16 v6, 0x6c

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFlashMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_2

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "pref_flash_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->updateDualCameraSetting(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCoverMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-nez v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEasyMode:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, v6, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1
.end method

.method public setFocusSelectMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusSelectMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    :cond_1
    return-void
.end method

.method public setFocusSelectModeInAutoMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusSelectModeWhenAutoMode:I

    return-void
.end method

.method public setFrontCameraShootingModeOrder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_front_camera_shooting_mode_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SHOOTING_MODE_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontCameraShootingModeOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_front_camera_shooting_mode_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraShootingModeOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setFrontSideBarMenuOrder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_front_camera_sidebar_item_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_FRONT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraSideBarItemOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraSideBarItemOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFrontSideBarMenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraSideBarItemOrder:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_front_camera_sidebar_item_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontCameraSideBarItemOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public setGPS(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tag_current_location_camera"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGPS:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tag_current_location_camera"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setGolfDirection(I)V
    .locals 3

    const-string v1, "pref_golf_direction"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_golf_direction"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setGuideline(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x13

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideLine:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setHRMSensorCaptureDialog(I)V
    .locals 4

    const-string v1, "pref_sensor_capture_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHRMSensorCaptureDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sensor_capture_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setHelpMode(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHelpMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mHelpMode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->resetButtonDim()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_shootingmode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_recordingmode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_voice_control_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_share_mode_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_flash_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_guideline_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_review_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_burst_settings_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_setup_gps_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRestoreValueFromHelpModeList:Ljava/util/HashMap;

    const-string v1, "pref_camera_face_detection_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0
.end method

.method public setLocationTagGuideDialog(I)V
    .locals 4

    const-string v1, "pref_location_tag_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationTagGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_location_tag_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLowBattery:Z

    return-void
.end method

.method public setMaxRecordingSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMaxMmsSize:J

    return-void
.end method

.method public setMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setOnDeviceHelpScreen(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    :goto_0
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "content://com.samsung.helphub.provider/help_page_status/camera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    goto :goto_0
.end method

.method public setOutFocusShotGuideDialog(I)V
    .locals 4

    const-string v1, "pref_out_focus_shot_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutFocusShotGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_out_focus_shot_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setOutdoorVisibility(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    goto :goto_0
.end method

.method public setQuickAccessDialog(I)V
    .locals 4

    const-string v1, "pref_quick_access_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setQuickAccessDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_quick_access_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setQuickAccessMode(I)V
    .locals 0

    return-void
.end method

.method public setRemoteViewFinderLaunchEffectDownloadGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchEffectDownloadGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_launch_effect_download_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchEffectGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_launch_effect_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchEffectGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_launch_effect_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchGalleryGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_launch_gallery_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchGalleryGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_launch_gallery_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchHelpGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchHelpGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderLaunchSettingsToTurnOnGPSDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchHelpGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_launch_help_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderResetCameraGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_reset_camera_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderLaunchHelpGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_reset_camera_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewFinderWifiDirectGuideDialog(I)V
    .locals 4

    const-string v1, "pref_remote_view_finder_wifi_direct_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteViewFinderWifiDirectGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_remote_view_finder_wifi_direct_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setRemoteViewfinderMode(I)V
    .locals 4

    const/16 v3, 0x63

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    if-eq v0, p1, :cond_1

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteViewfinderMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->setWifiP2pDisabled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setToSupportFullOrientation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restoreNfcState()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRemoteViewfinderMode:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xbb9

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setIsWifiDirectRestore(Z)V

    goto :goto_0
.end method

.method public setRequestedRecordingSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRequestedRecordingSize:J

    return-void
.end method

.method public setReview(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_review_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setSaveRichtone(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_save_richtone_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSaveRichtone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_save_richtone_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x22

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaveRichtone:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setScreenFlash(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenFlash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    const/16 v0, 0x87

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mScreenFlash:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setSecureMode(Z)V
    .locals 6

    const/16 v5, 0x37

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    if-eq v0, p1, :cond_2

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecureMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSecureMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDualMode(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraId:I

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenSecureCamera()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0
.end method

.method public setSelfFlip(I)V
    .locals 5

    const/16 v4, 0x26

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_self_flip_key"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "CameraSettings"

    const-string v2, "returned because it does not support."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_self_flip_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlip:I

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public setSelfieContinuousValue(I)V
    .locals 5

    const/16 v4, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_selfie_continuous_value_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    if-eq v1, p1, :cond_1

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelfieContinuousValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_selfie_continuous_value_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieContinuousValue:I

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_1
    return-void
.end method

.method public setSelfieMode(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_selfie_mode_key"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelfieMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_selfie_mode_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x7a

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfieMode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    :cond_0
    return-void
.end method

.method public setSettingOverlayHelpDialog(I)V
    .locals 4

    const-string v1, "pref_setting_help_overlay_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSettingOverlayHelpDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setting_help_overlay_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setSettingValuesAsDefault()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setSettingValuesAsDefault([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0xbb8
        0x7
        0x9
        0x12
        0x23
        0xe
        0xbbc
        0x170e
        0x170f
        0x87
    .end array-data
.end method

.method public varargs setSettingValuesAsDefault([I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    sparse-switch v2, :sswitch_data_0

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in setSettingValuesAsDefault : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x37

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_2

    :sswitch_2
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_3
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_4
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_5
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_6
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_7
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_8
    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_OUTDOOR_VISIBILITY:I

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_9
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutoContrast:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_a
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_b
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_c
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_d
    iput v8, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFastMotionSpeed:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :sswitch_e
    iput v7, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    iget v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_1

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xe -> :sswitch_9
        0x12 -> :sswitch_7
        0x23 -> :sswitch_8
        0x70 -> :sswitch_e
        0x87 -> :sswitch_0
        0xbb8 -> :sswitch_a
        0xbbc -> :sswitch_b
        0x170e -> :sswitch_c
        0x170f -> :sswitch_d
    .end sparse-switch
.end method

.method public setShareMode(I)V
    .locals 3

    const/16 v2, 0x35

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShareMode:I

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setShootingMode(I)V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    return-void
.end method

.method public setShootingMode(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingModeName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getEdmService()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isAudioRecordAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->isExternalShootingMode(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x38

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->clearBurstProgressBar(I)V

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->skipBurstShotsGuideDialog()V

    :cond_5
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    goto :goto_0
.end method

.method public setShootingModeGuideDialog(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setShortcutLayoutReset(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShortcutLayoutReset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShortcutLayoutReset:I

    :cond_0
    return-void
.end method

.method public setSideBarMenuOrder(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidebar_item_order"

    sget-object v3, Lcom/sec/android/app/camera/CameraSettings;->DEFAULT_CAMERA_SIDEBAR_ITEM_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideBarMenuOrder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_sidebar_item_order"

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCameraSideBarItemOrder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public setSideTouchGuideDialog(I)V
    .locals 4

    const-string v1, "pref_side_touch_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideTouchGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_side_touch_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setSideTouchMode(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_sidetouch_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSideTouchMode:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSideTouchMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_sidetouch_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x70

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSideTouchMode:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->handleSideTouchModeChanged(I)V

    :cond_0
    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_slimface_level_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSlimFaceLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_slimface_level_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x81

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlimFaceLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setSlowMotionSpeed(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlowMotionSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSlowMotionSpeed:I

    const/16 v0, 0x170e

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setSmartStablilizationDialog(I)V
    .locals 4

    const-string v1, "pref_smart_stabilization_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartStablilizationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_smart_stabilization_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setSnapshotLimitationDialog(I)V
    .locals 4

    const-string v1, "pref_snap_shot_limitation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSnapshotLimitationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_snap_shot_limitation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setSoundShotMode(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundShotMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    :cond_0
    const/16 v0, 0x4d

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSoundShotMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    return-void
.end method

.method public setStorage(I)V
    .locals 5

    const/16 v4, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setDefaultStorageStatus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_1
    return-void
.end method

.method public setTemperatureHighToRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToRecord:Z

    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureHighToUseFlash:Z

    return-void
.end method

.method public setTemperatureLowToUseFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsTemperatureLowToUseFlash:Z

    return-void
.end method

.method public setTimer(I)V
    .locals 5

    const/4 v4, 0x6

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer_Front:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_timer_front_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_timer_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setTorchLightStatus(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x12c

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTorchLight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setTouchToCapture(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTouchToCapture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_camera_touch_to_capture_front_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x62

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "pref_camera_touch_to_capture_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mTouchToCapture:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setTransitionAnimationScale(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_transition_animation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTrueDefaultSideMenu(Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraSettings;->resetValueSideMenuMap(Ljava/util/LinkedHashMap;)V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->getShortcutMenuID(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoAudiozoomDialog(I)V
    .locals 4

    const-string v1, "pref_video_audiozoom_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoAudiozoomDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_audiozoom_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setVideoFhdResolutionDialog(I)V
    .locals 4

    const-string v1, "pref_video_fhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoFhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_fhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setVideoStabilisationDialog(I)V
    .locals 4

    const-string v1, "pref_video_stabilisation_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoStabilisationDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_stabilisation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setVideoUhdResolutionDialog(I)V
    .locals 4

    const-string v1, "pref_video_uhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoUhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_uhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setVideoWqhdResolutionDialog(I)V
    .locals 4

    const-string v1, "pref_video_wqhd_resolution_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoWqhdResolutionDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_wqhd_resolution_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setVideocallPresetSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideocallPresetSelected:Z

    return-void
.end method

.method public setViewMode(I)V
    .locals 4

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_fullpreview_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x138

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mViewModePreview:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setVoiceGuide(I)V
    .locals 4

    const/16 v3, 0x59

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceGuide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVoiceGuide:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_0
    return-void
.end method

.method public setVolumeKeyAs(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_volume_key_as"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeKeyAs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVolumeKeyAs:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_volume_key_as"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x48

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setWifiP2pDisabled()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsWifiDirectRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setIsWifiDirectRestore(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiP2pEnabled()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraSettings"

    const-string v1, "setWifiP2pEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    const-string v0, "CameraSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "CameraSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public setZoomValueForced(I)V
    .locals 3

    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValueForced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    return-void
.end method

.method public setshowEditableShortcutGuideDialog(I)V
    .locals 4

    const-string v1, "pref_editable_shortcut_guide_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowEditableShortcutGuideDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_editable_shortcut_guide_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setshowLiveBeautyController(I)V
    .locals 4

    const-string v1, "pref_show_live_beauty_controller"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowLiveBeautyController "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_show_live_beauty_controller"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public setshowTurnOnBurstShotHelpTextDialog(I)V
    .locals 4

    const-string v1, "pref_turn_on_burst_help_text_dialog"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setshowTurnOnBurstShotHelpTextDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_turn_on_burst_help_text_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCameraResolutionForDual()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "5312x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "5312x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1440x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1440x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "2976x2976"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "2976x2976"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "1920x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1920x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string v2, "3984x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "3984x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public updateCameraResolutionForDualLiteShot()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1920x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "5312x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isSquareResolution(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1440x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "2976x2976"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "1920x1440"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    const-string v2, "3984x2988"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionForDual(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_camera_id_key"

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method updateDualCameraSetting(Ljava/lang/String;I)V
    .locals 4

    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDualCameraSetting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualBackCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getDualFrontCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraHolder;->getFrontCameraId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public updateShootingModeWhenSwitchCamera()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    const-string v0, "CameraSettings"

    const-string v1, "updateShootingModeWhenSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mBackShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->validateShootingModeExistence()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    :goto_3
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrontShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    goto :goto_3

    :cond_8
    const-string v0, "CameraSettings"

    const-string v1, "didn\'t changed shooting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
