.class public Lcom/android/mms/csc/CscLoader;
.super Ljava/lang/Object;
.source "CscLoader.java"


# static fields
.field private static final KEY_CSC_ALLOWACCESSTOALLLINK:Ljava/lang/String; = "Settings.Messages.SMS.PromptToAccessLink"

.field private static final KEY_CSC_CELLBROADCAST:Ljava/lang/String; = "Settings.Messages.SMS.CellBroadcast"

.field private static final KEY_CSC_CELLBROADCASTCHANNEL:Ljava/lang/String; = "Settings.Messages.SMS.CellBroadcastChannel"

.field private static final KEY_CSC_CHARSUPPORT:Ljava/lang/String; = "Settings.Messages.SMS.CharSupport"

.field private static final KEY_CSC_CREATIONMODE:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.CreationMode"

.field private static final KEY_CSC_DELETEOLDMESSAGE:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessage"

.field private static final KEY_CSC_DELETEOLDMESSAGECNTMMS:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessageCntMms"

.field private static final KEY_CSC_DELETEOLDMESSAGECNTSMS:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessageCntSms"

.field private static final KEY_CSC_DELIVERYREPORT:Ljava/lang/String; = "Settings.Messages.SMS.DeliveryReport"

.field private static final KEY_CSC_EMAILGATEWAY:Ljava/lang/String; = "Settings.Messages.SMS.EmailGateway"

.field private static final KEY_CSC_EXPIRY:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.Expiry"

.field private static final KEY_CSC_FONTSIZEBYVOLUMEKEY:Ljava/lang/String; = "Settings.Messages.SMS.FontSizeByVolumeKey"

.field private static final KEY_CSC_GROUPMESSAGING:Ljava/lang/String; = "Settings.Messages.MMS.GroupMessaging"

.field private static final KEY_CSC_IMAGERESIZERESOLUTION:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

.field private static final KEY_CSC_MAXRECIPIENT:Ljava/lang/String; = "Settings.Messages.SMS.MaxRecipient"

.field private static final KEY_CSC_MAXRECIPIENTMMS:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

.field private static final KEY_CSC_MESSAGESIZE:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.MessageSize"

.field private static final KEY_CSC_MESSAGETONE:Ljava/lang/String; = "Settings.Main.Sound.MessageTone"

.field private static final KEY_CSC_MMSALERT:Ljava/lang/String; = "Settings.Messages.SMS.MmsAlert"

.field private static final KEY_CSC_MMSRECEIVING_HOME:Ljava/lang/String; = "Settings.Messages.MMS.MmsReceiving.Home"

.field private static final KEY_CSC_MMSRECEIVING_ROAMING:Ljava/lang/String; = "Settings.Messages.MMS.MmsReceiving.Roaming"

.field private static final KEY_CSC_MSGSPLITVIEW:Ljava/lang/String; = "Settings.Messages.SMS.MsgSplitView"

.field private static final KEY_CSC_MSGTONEALERTTYPE:Ljava/lang/String; = "Settings.Main.Sound.MsgToneAlertType"

.field private static final KEY_CSC_MSGTONEREPEATINTERVAL:Ljava/lang/String; = "Settings.Main.Sound.MsgToneRepeatInterval"

.field private static final KEY_CSC_PREVIEWMESSAGE:Ljava/lang/String; = "Settings.Messages.SMS.PreviewMessage"

.field private static final KEY_CSC_PRIORITY_SENDERS:Ljava/lang/String; = "Settings.Messages.SMS.PrioritySender"

.field private static final KEY_CSC_PUSHLOADING:Ljava/lang/String; = "Settings.Messages.PushMsg.PushLoading"

.field private static final KEY_CSC_RECOPTION:Ljava/lang/String; = "Settings.Messages.PushMsg.RecOption"

.field private static final KEY_CSC_REQDELIVERYREP:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

.field private static final KEY_CSC_REQREADREP:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ReqReadRep"

.field private static final KEY_CSC_SLIDEMAXCOUNT:Ljava/lang/String; = "Settings.Messages.MMS.SlideMaxCount"

.field private static final KEY_CSC_STATUSPREVIEW:Ljava/lang/String; = "Settings.Messages.SMS.PreviewMessageNoti"

.field private static final KEY_CSC_TEXTTEMPLATE:Ljava/lang/String; = "Settings.Messages.SMS.TextTemplate"

.field private static final KEY_CSC_THRESHOLDTYPE:Ljava/lang/String; = "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

.field private static final KEY_CSC_THRESHOLDVALUE:Ljava/lang/String; = "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

.field private static final TAG:Ljava/lang/String; = "Mms/CscLoader"

.field public static final USER_KEY_PRFS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_key_service_loading_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_key_sms_delivery_reports"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_key_threshold"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_key_threshold_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_key_font_size_by_volume_key_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MaxSmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MaxMmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_key_enable_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pref_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pref_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pref_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pref_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pref_key_vibrateWhen_checkbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pref_key_mms_change_over_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pref_key_mms_group_mms"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pref_key_enable_statusbar_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "pref_key_urllink_option_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "pref_key_priority_sender"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanFromString(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private static getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v6

    :cond_0
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    :cond_2
    const-string v7, "Mms/CscLoader"

    const-string v8, "No matched ringtones."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getMsgTone(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 6
    .param p0    # Lcom/android/mms/csc/CscParser;

    const/4 v4, 0x0

    const-string v5, "Settings.Messages.Sound"

    invoke-virtual {p0, v5}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v5, "MessageTone"

    invoke-virtual {p0, v0, v5}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v5, "src"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0
.end method

.method private static getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 10
    .param p0    # Lcom/android/mms/csc/CscParser;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportOperatorMsgTone()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p0}, Lcom/android/mms/csc/CscLoader;->getMsgTone(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v9, "Settings.Main.Sound"

    invoke-virtual {p0, v9}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v8

    goto :goto_0

    :cond_3
    const-string v9, "MessageTone"

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const-string v1, "/system/media/audio/notifications/"

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v9, "src"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    move-object v4, v8

    goto :goto_0

    :cond_5
    const-string v8, "Customer"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "restricted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "warning"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "free"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "qcif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd720"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd1080"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wqxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qsxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "300"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "once"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "always"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Always"

    goto :goto_0

    :cond_2
    const-string v1, "prompt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Prompt"

    goto :goto_0

    :cond_3
    const-string v1, "never"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Never"

    goto :goto_0
.end method

.method private static getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "gsmalpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "GSM alphabet"

    goto :goto_0

    :cond_2
    const-string v1, "automatic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Automatic"

    goto :goto_0

    :cond_3
    const-string v1, "unicode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unicode"

    goto :goto_0
.end method

.method private static getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/android/mms/csc/CscParser;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v7, ";"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/android/mms/csc/CscParser;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-lez v2, :cond_2

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/mms/csc/CscParser;
    .param p3    # Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/mms/csc/CscParser;
    .param p3    # Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/mms/csc/CscParser;
    .param p3    # Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/content/SharedPreferences$Editor;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "Mms/CscLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static partialUpdate(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;

    const-string v3, "Mms/CscLoader"

    const-string v4, "Start partialUpdate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/csc/CscParser;->getCustomerInstance()Lcom/android/mms/csc/CscParser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "Mms/CscLoader"

    const-string v4, "partial update : can\'t load customer file"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    const-string v4, "pref_key_threshold"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Settings.Messages.SMS.MaxRecipient"

    const-string v4, "pref_key_max_recipient"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    const-string v4, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    invoke-virtual {v1, v4}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_key_mms_image_resize_resolution"

    invoke-static {v3, v4, v5, v0}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Settings.Messages.MMS.MmsSending.MessageSize"

    const-string v4, "Settings.Messages.MMS.MmsSending.MessageSize"

    invoke-virtual {v1, v4}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_key_mms_max_size"

    invoke-static {v3, v4, v5, v0}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

    const-string v4, "pref_key_mms_max_recipient"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Settings.Messages.MMS.SlideMaxCount"

    const-string v4, "pref_key_mms_slide_max_count"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "Mms/CscLoader"

    const-string v4, "End partialUpdate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Z)Z
    .locals 17
    .param p0    # Landroid/content/Context;
    .param p1    # Z

    const-string v14, "Mms/CscLoader"

    const-string v15, "Start update()"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/csc/CscParser;->getCustomerInstance()Lcom/android/mms/csc/CscParser;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    const-string v14, "Mms/CscLoader"

    const-string v15, "update : can\'t load customer file"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "Settings.Messages.PushMsg.RecOption"

    const-string v15, "pref_key_enable_push_message"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.PushMsg.PushLoading"

    const-string v15, "Settings.Messages.PushMsg.PushLoading"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_service_loading_action"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.DeliveryReport"

    const-string v15, "pref_key_sms_delivery_reports"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    const-string v15, "pref_key_threshold"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.MaxRecipient"

    const-string v15, "pref_key_max_recipient"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.CharSupport"

    const-string v15, "Settings.Messages.SMS.CharSupport"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_sms_input_mode"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.EmailGateway"

    const-string v15, "Settings.Messages.SMS.EmailGateway"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_sms_email_gateway"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.CellBroadcast"

    const-string v15, "pref_key_cb_settings_activation"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const-string v14, "Settings.Messages.SMS.CellBroadcast"

    const-string v15, "pref_key_cb_settings_activation_sim2"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    :cond_4
    const-string v14, "Settings.Messages.SMS"

    const-string v15, "CellBroadcastChannel"

    invoke-static {v7, v14, v15}, Lcom/android/mms/csc/CscLoader;->getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Mms/CscLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "key=Settings.Messages.SMS.CellBroadcastChannel value="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "pref_key_cb_settings_channel"

    invoke-interface {v4, v14, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v2, v1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v3, v2, v5

    const-string v14, "Mms/CscLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "channelID="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "[+-]?\\d+"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v10, 0x0

    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v14

    if-ge v10, v14, :cond_5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v3, v14, v10}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v14, "pref_key_cb_channel_selection"

    const-string v15, "My channel"

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v10, 0x1

    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v14

    if-ge v10, v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pref_key_cb_channel_selection"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "My channel"

    invoke-interface {v4, v8, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const-string v14, "Settings.Messages.SMS.TextTemplate"

    const-string v15, "Settings.Messages.SMS"

    const-string v16, "TextTemplate"

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Lcom/android/mms/csc/CscLoader;->getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_sms_text_template"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.DeleteOldMessage"

    const-string v15, "pref_key_auto_delete"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.MsgSplitView"

    const-string v15, "pref_key_split_view"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.FontSizeByVolumeKey"

    const-string v15, "pref_key_font_size_by_volume_key_enable"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.DeleteOldMessageCntSms"

    const-string v15, "MaxSmsMessagesPerThread"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.DeleteOldMessageCntMms"

    const-string v15, "MaxMmsMessagesPerThread"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.PreviewMessage"

    const-string v15, "pref_key_enable_preview_message"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    const-string v15, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_mms_image_resize_resolution"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

    const-string v15, "pref_key_mms_delivery_reports"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.ReqReadRep"

    const-string v15, "pref_key_mms_read_reports"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.Expiry"

    const-string v15, "Settings.Messages.MMS.MmsSending.Expiry"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_mms_expiry"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.MessageSize"

    const-string v15, "Settings.Messages.MMS.MmsSending.MessageSize"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_mms_max_size"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.CreationMode"

    const-string v15, "Settings.Messages.MMS.MmsSending.CreationMode"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_mms_creation_mode"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

    const-string v15, "pref_key_mms_max_recipient"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Home"

    const-string v15, "pref_key_mms_auto_retrieval"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Roaming"

    const-string v15, "pref_key_mms_retrieval_during_roaming"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTabAutoRetrieveSetting()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Home"

    const-string v15, "pref_key_mms_auto_retrieval_sim1"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Home"

    const-string v15, "pref_key_mms_auto_retrieval_sim2"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Roaming"

    const-string v15, "pref_key_mms_auto_retrieval_during_roaming_sim1"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.MmsReceiving.Roaming"

    const-string v15, "pref_key_mms_auto_retrieval_during_roaming_sim2"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    :cond_8
    const-string v14, "Settings.Messages.MMS.SlideMaxCount"

    const-string v15, "pref_key_mms_slide_max_count"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Main.Sound.MsgToneRepeatInterval"

    const-string v15, "Settings.Main.Sound.MsgToneRepeatInterval"

    invoke-virtual {v7, v15}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/csc/CscLoader;->getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "pref_key_msgtone_repeat_interval"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v7}, Lcom/android/mms/csc/CscLoader;->getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "Settings.Main.Sound.MessageTone"

    const-string v15, "pref_key_ringtone"

    invoke-static {v14, v11, v15, v4}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    if-eqz v11, :cond_9

    const-string v14, "pref_key_enable_notifications"

    const/4 v15, 0x1

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_9
    const-string v14, "Settings.Main.Sound.MsgToneAlertType"

    invoke-virtual {v7, v14}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    const-string v14, "Mms/CscLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "key=Settings.Main.Sound.MsgToneAlertType value="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "vib"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "vibmelody"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_a
    const/4 v12, 0x1

    :goto_4
    const-string v14, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v4, v14, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_b
    const-string v14, "Settings.Messages.SMS.MmsAlert"

    const-string v15, "pref_key_mms_change_over_alarm"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.MMS.GroupMessaging"

    const-string v15, "pref_key_mms_group_mms"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.PreviewMessageNoti"

    const-string v15, "pref_key_enable_statusbar_preview_message"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.PromptToAccessLink"

    const-string v15, "pref_key_urllink_option_enable"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    const-string v14, "Settings.Messages.SMS.PrioritySender"

    const-string v15, "pref_key_priority_sender"

    invoke-static {v14, v15, v7, v4}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    if-eqz p1, :cond_c

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->updateChameleonPreset(Landroid/content/SharedPreferences$Editor;)V

    :cond_c
    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->updateAutocombinationDefaultValue(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->updateRcsDefaultValue(Landroid/content/SharedPreferences$Editor;)V

    :cond_d
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v14, "Mms/CscLoader"

    const-string v15, "End update()"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public static updateAutocombinationDefaultValue(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p0    # Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Message_DefConfgSegmentedSMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_sms_reassembly"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    :cond_0
    const-string v2, "pref_key_sms_reassembly"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z
    .locals 7
    .param p0    # Landroid/content/SharedPreferences$Editor;
    .param p1    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "Mms/CscLoader"

    const-string v6, "Start updateChameleon()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/csc/CscParser;->getChameleonInstance(I)Lcom/android/mms/csc/CscParser;

    move-result-object v0

    if-nez p0, :cond_0

    :goto_0
    return v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v4, "Mms/CscLoader"

    const-string v5, "updateChameleon : can\'t load chameleon file"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "SMS"

    const-string v5, "PresetMessage"

    invoke-static {v0, v3, v5}, Lcom/android/mms/csc/CscLoader;->getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    if-nez p1, :cond_5

    const-string v1, "pref_key_chameleon_text_template_en"

    :cond_3
    :goto_1
    const-string v3, "Mms/CscLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateChameleon prefKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v3, "Mms/CscLoader"

    const-string v5, "End updateChameleon()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    const-string v1, "pref_key_chameleon_text_template_es"

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    const-string v1, "pref_key_chameleon_text_template_vi"

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    const-string v1, "pref_key_chameleon_text_template_ko"

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    const-string v1, "pref_key_chameleon_text_template_zh"

    goto :goto_1
.end method

.method public static updateChameleonPreset(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0    # Landroid/content/SharedPreferences$Editor;

    const-string v0, "Mms/CscLoader"

    const-string v1, "Start updateChameleonPrest()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    const-string v0, "Mms/CscLoader"

    const-string v1, "End updateChameleonPrest()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateRcsDefaultValue(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0    # Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TMO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_key_rcs_ft_show_image_size_dialog"

    const-string v1, "2"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    :cond_0
    const-string v0, "pref_key_rcs_ft_show_image_size_dialog"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
