.class public Lcom/android/mms/util/MessagingCscSetting;
.super Ljava/lang/Object;
.source "MessagingCscSetting.java"


# static fields
.field public static final CSC_CB_SETTINGS_ACTIVATION:Ljava/lang/String; = "csc_pref_key_cb_settings_activation"

.field public static final CSC_CB_SETTINGS_CHANNEL:Ljava/lang/String; = "csc_pref_key_cb_settings_channel"

.field public static final CSC_FONT_SIZE_BY_VOLUME_KEY:Ljava/lang/String; = "csc_pref_key_font_size_by_volume_key"

.field static final CSC_KEY_BOOLEAN:[Ljava/lang/String;

.field static final CSC_KEY_INTEGER:[Ljava/lang/String;

.field static final CSC_KEY_STRING:[Ljava/lang/String;

.field public static final CSC_MAX_MMS_PER_THREAD:Ljava/lang/String; = "csc_pref_max_mms_messages_per_thread"

.field public static final CSC_MAX_RECIPIENT:Ljava/lang/String; = "csc_pref_key_max_recipient"

.field public static final CSC_MAX_SMS_PER_THREAD:Ljava/lang/String; = "csc_pref_max_sms_messages_per_thread"

.field public static final CSC_MMS_AUTO_RETRIVAL:Ljava/lang/String; = "csc_pref_key_mms_auto_retrieval"

.field public static final CSC_MMS_CREATION_MODE:Ljava/lang/String; = "csc_pref_key_mms_creation_mode"

.field public static final CSC_MMS_DELIVERY_REPORT:Ljava/lang/String; = "csc_pref_key_mms_delivery_reports"

.field public static final CSC_MMS_EXPIRY_TIME:Ljava/lang/String; = "csc_pref_key_mms_expiry"

.field public static final CSC_MMS_MAX_RECIPIENT:Ljava/lang/String; = "csc_pref_key_mms_max_recipient"

.field public static final CSC_MMS_MAX_SIZE:Ljava/lang/String; = "csc_pref_key_mms_max_size"

.field public static final CSC_MMS_READ_REPORT:Ljava/lang/String; = "csc_pref_key_mms_read_reports"

.field public static final CSC_MMS_RESIZE_IMAGE_RESOLUTION:Ljava/lang/String; = "csc_pref_key_mms_image_resize_resolution"

.field public static final CSC_MMS_RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "csc_pref_key_mms_retrieval_during_roaming"

.field public static final CSC_MMS_SLIDE_MAX_COUNT:Ljava/lang/String; = "csc_pref_key_mms_slide_max_count"

.field public static final CSC_MSGTONE_REPEAT_INTERVAL:Ljava/lang/String; = "csc_pref_key_msgtone_repeat_interval"

.field public static final CSC_NOTIFICATION_ENABLED:Ljava/lang/String; = "csc_pref_key_enable_notifications"

.field public static final CSC_NOTIFICATION_PREVIEW:Ljava/lang/String; = "csc_pref_key_enable_preview_message"

.field public static final CSC_NOTIFICATION_RINGTONE:Ljava/lang/String; = "csc_pref_key_ringtone"

.field public static final CSC_PRELOAD_TEXT_TEMPLATE:Ljava/lang/String; = "csc_pref_key_sms_text_template"

.field public static final CSC_PUSH_MESSAGE_ENABLED:Ljava/lang/String; = "csc_pref_key_enable_push_message"

.field public static final CSC_SERVICE_LOADING_ACTION:Ljava/lang/String; = "csc_pref_key_service_loading_action"

.field public static final CSC_SMS_AUTO_DELETE:Ljava/lang/String; = "csc_pref_key_auto_delete"

.field public static final CSC_SMS_DELIVERY_REPORT:Ljava/lang/String; = "csc_pref_key_sms_delivery_reports"

.field public static final CSC_SMS_EMAIL_GATEWAY:Ljava/lang/String; = "csc_pref_key_sms_email_gateway"

.field public static final CSC_SMS_INPUT_MODE:Ljava/lang/String; = "csc_pref_key_sms_input_mode"

.field public static final CSC_SMS_MMS_THRESHOLD:Ljava/lang/String; = "csc_pref_key_threshold"

.field public static final CSC_SMS_TEXT_TEMPLATE:Ljava/lang/String; = "csc_pref_key_sms_text_template"

.field public static final CSC_SPLIT_VIEW:Ljava/lang/String; = "csc_pref_key_split_view"

.field static final PREF_KEY_BOOLEAN:[Ljava/lang/String;

.field static final PREF_KEY_INTTEGER:[Ljava/lang/String;

.field static final PREF_KEY_STRING:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingCscSetting"

.field private static sCscKeyBooleanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCscKeyIntegerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCscKeyStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCscBooleanBackupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCscIntegerBackupMap:Ljava/util/HashMap;
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

.field private mCscStringBackupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxChannelCount:I

.field private mMyChannels:I

.field private mSimStatus:Z

.field private mSmsc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_cb_settings_activation"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_enable_notifications"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_mms_delivery_reports"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "csc_pref_key_font_size_by_volume_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csc_pref_max_sms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csc_pref_max_mms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "csc_pref_key_enable_preview_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "pref_key_sms_delivery_reports"

    aput-object v1, v0, v4

    const-string v1, "pref_key_cb_settings_activation"

    aput-object v1, v0, v5

    const-string v1, "pref_key_enable_notifications"

    aput-object v1, v0, v6

    const-string v1, "pref_key_mms_delivery_reports"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_key_font_size_by_volume_key_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MaxSmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MaxMmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_key_enable_preview_message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOLEAN:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_sms_input_mode"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_email_gateway"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_ringtone"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_msgtone_repeat_interval"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_mms_max_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_service_loading_action"

    aput-object v1, v0, v3

    const-string v1, "pref_key_sms_input_mode"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "pref_key_ringtone"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STRING:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "csc_pref_key_threshold"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_max_recipient"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_mms_max_recipient"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_mms_slide_max_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INTTEGER:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyBooleanMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyStringMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyIntegerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mSimStatus:Z

    iput v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChannelCount:I

    iput v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    return-void
.end method

.method private static declared-synchronized ensureCscKeyBooleanMap()V
    .locals 5

    const-class v2, Lcom/android/mms/util/MessagingCscSetting;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyBooleanMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyBooleanMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyBooleanMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized ensureCscKeyIntergerMap()V
    .locals 5

    const-class v2, Lcom/android/mms/util/MessagingCscSetting;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyIntegerMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyIntegerMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyIntegerMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INTTEGER:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized ensureCscKeyStringMap()V
    .locals 5

    const-class v2, Lcom/android/mms/util/MessagingCscSetting;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyStringMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyStringMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyStringMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STRING:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static findBooleanPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->ensureCscKeyBooleanMap()V

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static findIntegerPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->ensureCscKeyIntergerMap()V

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyIntegerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static findStringPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->ensureCscKeyStringMap()V

    sget-object v0, Lcom/android/mms/util/MessagingCscSetting;->sCscKeyStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public backupCscPreferences(Landroid/content/SharedPreferences;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "pref_key_manage_smsc_address"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    const-string v1, "pref_sim_ready_status"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mSimStatus:Z

    const-string v1, "pref_cb_my_channel_max_count"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChannelCount:I

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    return-void
.end method

.method public restoreCscPreferences(Landroid/content/SharedPreferences;)V
    .locals 7

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscBooleanBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_BOOLEAN:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscStringBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_STRING:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STRING:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_STRING:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/util/MessagingCscSetting;->mCscIntegerBackupMap:Ljava/util/HashMap;

    sget-object v6, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->CSC_KEY_INTEGER:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INTTEGER:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/mms/util/MessagingCscSetting;->PREF_KEY_INTTEGER:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v5, "pref_key_manage_smsc_address"

    iget-object v6, p0, Lcom/android/mms/util/MessagingCscSetting;->mSmsc:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "pref_sim_ready_status"

    iget-boolean v6, p0, Lcom/android/mms/util/MessagingCscSetting;->mSimStatus:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "pref_cb_my_channel_max_count"

    iget v6, p0, Lcom/android/mms/util/MessagingCscSetting;->mMaxChannelCount:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "pref_cb_my_channel_enabled_count"

    iget v6, p0, Lcom/android/mms/util/MessagingCscSetting;->mMyChannels:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
