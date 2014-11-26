.class public interface abstract Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;
.super Ljava/lang/Object;
.source "IntentExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/IntentExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsSettingConstants"
.end annotation


# static fields
.field public static final CLIENT_RCS_TAG:Ljava/lang/String; = "gsma.joyn.client"

.field public static final COL_RCS_CONNECTION_PREFERENCE:Ljava/lang/String; = "rcs_connection_preference"

.field public static final COL_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field public static final COL_RCS_PERMANENT_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field public static final COL_RCS_PERMANENT_STATE:Ljava/lang/String; = "permanent_disable_state"

.field public static final KEY_AUTO_RESIZE_ENABLED:Ljava/lang/String; = "rcse_auto_resize_enabled"

.field public static final KEY_PERMANENT_DISABLE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field public static final KEY_SAVE_RECEIVED_IMAGE_ENABLED:Ljava/lang/String; = "rcse_save_received_image_enabled"

.field public static final KEY_SERVICES_ENABLED:Ljava/lang/String; = "rcse_services_enabled"

.field public static final KEY_SERVICES_HOME:Ljava/lang/String; = "rcse_home"

.field public static final KEY_SERVICES_PERMANENT_DISABLE:Ljava/lang/String; = "rcse_services_permanent_disable"

.field public static final KEY_SERVICES_ROAMING:Ljava/lang/String; = "rcse_roaming"

.field public static final KEY_SERVICES_TIMESTAMP:Ljava/lang/String; = "rcs_services_disabled_timestamp"

.field public static final RCS_ALIAS_ENABLE:Ljava/lang/String; = "pref_key_enable_alias"

.field public static final RCS_ALIAS_TEXT:Ljava/lang/String; = "pref_key_alias_text"

.field public static final RCS_DEFAULT_MESSAGING_METHOD:Ljava/lang/String; = "pref_key_default_messaging_method"

.field public static final RCS_DEFAULT_MESSAGING_METHOD_DISPLAYED:Ljava/lang/String; = "pref_key_default_messaing_method_displayed"

.field public static final RCS_DISABLE_PERMANENTLY:Ljava/lang/String; = "pre_key_disable_rcs_permanently"

.field public static final RCS_DISPLAY_STATUS:Ljava/lang/String; = "pref_key_rcs_display_status"

.field public static final RCS_DISPLAY_STATUS_US:Ljava/lang/String; = "pref_key_send_display_status"

.field public static final RCS_FIRST_LAUNCH:Ljava/lang/String; = "pref_key_rcs_first_launch"

.field public static final RCS_FRIST_LAUNCH_NOTIFICATION:Ljava/lang/String; = "pref_key_launch_notification"

.field public static final RCS_FT_AUTO_HOME:Ljava/lang/String; = "pref_key_rcs_ft_auto_acceptation_home"

.field public static final RCS_FT_AUTO_HOME_US:Ljava/lang/String; = "pref_key_auto_download_file_transfer"

.field public static final RCS_FT_AUTO_ROAMING:Ljava/lang/String; = "pref_key_rcs_ft_auto_acceptation_roaming"

.field public static final RCS_FT_AUTO_ROAMING_US:Ljava/lang/String; = "pref_key_roaming_auto_download"

.field public static final RCS_HOME_NETWORK_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_IMAGESIZE_DO_NOT_SHOW:Ljava/lang/String; = "pref_key_Imagesize_do_not_show_again"

.field public static final RCS_IMAGE_WARNING_SIZE_DO_NOT_SHOW:Ljava/lang/String; = "pref_key_Image_warning_size_do_not_show_again"

.field public static final RCS_NATIVE_CLIENT:Ljava/lang/String; = "com.sec.ims.android"

.field public static final RCS_NEW_FEATURE_POPUP_SHOW:Ljava/lang/String; = "pref_key_new_feature_show"

.field public static final RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

.field public static final RCS_PERMANENT_DISABLE_URI:Landroid/net/Uri;

.field public static final RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_REMIND_NEW_FEATURE_CURRENT:Ljava/lang/String; = "pref_key_new_feature_current"

.field public static final RCS_REMIND_NEW_FEATURE_HOUR:Ljava/lang/String; = "pref_key_new_feature_hour"

.field public static final RCS_REMIND_NEW_FEATURE_MONTH:Ljava/lang/String; = "pref_key_new_feature_month"

.field public static final RCS_REMIND_NEW_FEATURE_WEEK:Ljava/lang/String; = "pref_key_new_feature_week"

.field public static final RCS_ROAMING_PREFERENCE_URI:Landroid/net/Uri;

.field public static final RCS_SERVICE:Ljava/lang/String; = "pref_key_rcs_service"

.field public static final RCS_SETTING:Ljava/lang/String; = "pref_key_rcs_setting"

.field public static final RCS_SHOW_IMAGE_SIZE:Ljava/lang/String; = "pref_key_rcs_ft_show_image_size_dialog"

.field public static final RCS_SHOW_TYPING_US:Ljava/lang/String; = "pref_key_rcs_show_typing"

.field public static final RCS_USER_ALIAS_PREFERENCE_URI:Landroid/net/Uri;

.field public static final SETTINGS_RCS_TAG:Ljava/lang/String; = "gsma.joyn.settings.activity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.android.rcs/preferences/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/preferences/5"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_USER_ALIAS_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/home_network"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_HOME_NETWORK_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_ROAMING_PREFERENCE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/permanent_disable_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.ims.android.rcs/permanent_disable_availibility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

    return-void
.end method
