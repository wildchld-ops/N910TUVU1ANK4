.class public Lcom/android/mms/transaction/CscReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CscReceiver.java"


# static fields
.field static final KEY_PRFS:[Ljava/lang/String;

.field static final KEY_PRFS_TYPE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/CscReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "csc_pref_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "csc_pref_key_service_loading_action"

    aput-object v1, v0, v4

    const-string v1, "csc_pref_key_sms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "csc_pref_key_threshold"

    aput-object v1, v0, v6

    const-string v1, "csc_pref_key_threshold_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "csc_pref_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csc_pref_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csc_pref_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csc_pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csc_pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "csc_pref_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csc_pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csc_pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "csc_pref_key_font_size_by_volume_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "csc_pref_max_sms_messages_per_threadd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "csc_pref_max_mms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "csc_pref_key_enable_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "csc_pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "csc_pref_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "csc_pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "csc_pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "csc_pref_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "csc_pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "csc_pref_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "csc_pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "csc_pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "csc_pref_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "csc_pref_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "csc_pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "csc_pref_key_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "type_key_enable_push_message"

    aput-object v1, v0, v3

    const-string v1, "type_key_service_loading_action"

    aput-object v1, v0, v4

    const-string v1, "type_key_sms_delivery_reports"

    aput-object v1, v0, v5

    const-string v1, "type_key_threshold"

    aput-object v1, v0, v6

    const-string v1, "type_key_threshold_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "type_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "type_key_font_size_by_volume_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "type_key_max_sms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type_key_max_mms_messages_per_thread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "type_key_enable_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "type_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "type_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "type_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "type_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "type_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "type_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "type_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "type_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "type_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "type_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "type_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "type_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "type_key_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_10

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS_TYPE:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const-string v14, "STRING"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stringValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_1

    const-string v14, "csc_pref_key_ringtone"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/mms/transaction/CscReceiver;->getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object v11, v12

    :cond_0
    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findStringPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v14, "csc_pref_key_sms_email_gateway"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setEmailGateway(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v14, "csc_pref_key_mms_image_resize_resolution"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setImageResolution(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v14, "csc_pref_key_mms_max_size"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v14, "csc_pref_key_cb_settings_channel"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setCBChannel(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v14, "csc_pref_key_mms_expiry"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMmsExpiry(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v14, "csc_pref_key_msgtone_repeat_interval"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->setMsgtoneRepeatInterval(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v14, "INT"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " intValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findIntegerPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_9
    const-string v14, "csc_pref_key_threshold"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setSmsMmsThreshold(I)V

    goto/16 :goto_1

    :cond_a
    const-string v14, "csc_pref_key_max_recipient"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setRecipientLimit(I)V

    goto/16 :goto_1

    :cond_b
    const-string v14, "csc_pref_key_mms_max_recipient"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsMaxRecipient(I)V

    goto/16 :goto_1

    :cond_c
    const-string v14, "csc_pref_key_mms_slide_max_count"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsSlideMaxCount(I)V

    goto/16 :goto_1

    :cond_d
    const-string v14, "BOOLEAN"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mBooleanValue="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-interface {v4, v14, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-static {v14}, Lcom/android/mms/util/MessagingCscSetting;->findBooleanPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v4, v8, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_e
    const-string v14, "STRINGARRAY"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_1

    const-string v14, "Mms/CscReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "type="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " stringArrayValue length="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v10

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "csc_pref_key_sms_text_template"

    sget-object v15, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v7, 0x0

    :goto_2
    array-length v14, v10

    if-ge v7, v14, :cond_f

    aget-object v14, v10, v7

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/MmsConfig;->SetPreloadTextTemplate(Ljava/lang/String;)V

    sget-object v14, Lcom/android/mms/transaction/CscReceiver;->KEY_PRFS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    :cond_10
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v6

    :cond_0
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    const-string v7, "Mms/CscReceiver"

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

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CscReceiver;->storeCscValue(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
