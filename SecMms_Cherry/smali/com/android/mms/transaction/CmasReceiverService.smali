.class public Lcom/android/mms/transaction/CmasReceiverService;
.super Landroid/app/Service;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;,
        Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final CB_ALL_CMAS_ALL:I = 0xb0

.field public static final CB_ALL_CMAS_SOME:I = 0x90

.field public static final CB_SOME_CMAS_ALL:I = 0xa0

.field public static final CB_SOME_CMAS_SOME:I = 0x80

.field public static final CMAS_EXERCISE:Ljava/lang/String; = "Exercise Alert"

.field public static final CMAS_MESSAGE_AMBER:Ljava/lang/String; = "AMBER Alert"

.field public static final CMAS_MESSAGE_AMBER_SPR:Ljava/lang/String; = "Amber Alert"

.field public static final CMAS_MESSAGE_CMASTEST:Ljava/lang/String; = "Emergency Test Alert"

.field public static final CMAS_MESSAGE_EXTREME:Ljava/lang/String; = "Extreme Alert"

.field public static final CMAS_MESSAGE_FONT_SIZE:Ljava/lang/String; = "#cmas#pref##font#size"

.field public static final CMAS_MESSAGE_PRESIDENTIAL:Ljava/lang/String; = "Presidential Alert"

.field public static final CMAS_MESSAGE_SETTING_AMBER:Ljava/lang/String; = "#cmas#type##amber#enabled"

.field public static final CMAS_MESSAGE_SETTING_CDMA_EXERCISE:Ljava/lang/String; = "pref_cmas_exercise"

.field public static final CMAS_MESSAGE_SETTING_CLASS1:Ljava/lang/String; = "pref_cmas_receive_class1"

.field public static final CMAS_MESSAGE_SETTING_EXERCISE:Ljava/lang/String; = "#cmas#type##exercise#enabled"

.field public static final CMAS_MESSAGE_SETTING_EXTREME:Ljava/lang/String; = "#cmas#type##extreme#enabled"

.field public static final CMAS_MESSAGE_SETTING_OPERATOR_DEFINED:Ljava/lang/String; = "pref_cmas_operator_defined"

.field public static final CMAS_MESSAGE_SETTING_PRESIDENTIAL:Ljava/lang/String; = "#cmas#type##presidential#enabled"

.field public static final CMAS_MESSAGE_SETTING_SEVERE:Ljava/lang/String; = "#cmas#type##severe#enabled"

.field public static final CMAS_MESSAGE_SETTING_TEST:Ljava/lang/String; = "#cmas#type##test#enabled"

.field public static final CMAS_MESSAGE_SEVERE:Ljava/lang/String; = "Severe Alert"

.field public static final CMAS_MESSAGE_TMO_EXTREME:Ljava/lang/String; = "Imminent extreme alert"

.field public static final CMAS_MESSAGE_TMO_SEVERE:Ljava/lang/String; = "Imminent severe alert"

.field public static final CMAS_NOTIFICATION_ID:I = 0x90

.field public static final CMAS_OPERATOR_SERVICE:Ljava/lang/String; = "Operator Specific"

.field public static final CMAS_PREF:Ljava/lang/String; = "cmas_preferences"

.field public static final CMAS_RMT:Ljava/lang/String; = "RMT Alert"

.field public static final CMAS_UNDEFINED:Ljava/lang/String; = "Other Alerts"

.field public static final ENABLE_CDMA_CMAS_OVER_LTE_HIDDEN_MENU:Ljava/lang/String; = "pref_cdma_cmas_over_lte_menu"

.field private static final HALF_A_DAY_MILLISECOND:J = 0x2932e00L

.field private static final ONE_DAY_MILLISECOND:J = 0x5265c00L

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field private static final TAG:Ljava/lang/String; = "Mms/CmasReceiverService"

.field public static cmasDataVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;",
            ">;"
        }
    .end annotation
.end field

.field public static inCall:Z

.field private static mCmasIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCmasLastMessageUri:Landroid/net/Uri;

.field private static sIsCmasReceivedInVolteCall:Z


# instance fields
.field private listener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z

    sput-object v1, Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/CmasReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CheckDuplicateCDMACMAS(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Z
    .locals 13

    const/4 v7, 0x0

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v12

    :goto_0
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Msg ID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_2

    move v8, v7

    :goto_1
    return v8

    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    :cond_3
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCMAS:Duplicate Found in Cached List"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_4
    :goto_2
    move v8, v7

    goto :goto_1

    :cond_5
    const-string v4, "identifier = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Running the Query"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_0
    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    if-eqz v9, :cond_6

    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Duplicate Found"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    :cond_6
    :goto_3
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_7
    :try_start_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:NO Duplicate"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v11

    :try_start_2
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Caught Exception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private CheckDuplicateGSMCMASByBodyText(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMASByBodyText: No Need"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMASByBodyText: body text is empty"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMASByBodyText: serviceCategory = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x2932e00

    sub-long v10, v14, v16

    const-string v6, "service_category = ? AND body = ?"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND sms._id = sms_id AND date <= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "date"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " > "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "date"

    aput-object v8, v5, v2

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x1

    aput-object p3, v7, v2

    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMASByBodyText: now="

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMASByBodyText:Duplicate Found, id or date="

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMASByBodyText:NO Duplicate"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMASByBodyText:Caught Exception = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_5
    throw v2

    :cond_6
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMASByBodyText: serviceCategory is "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v16, ", This must be test only!"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private CheckDuplicateGSMCMASBySerialNumber(Landroid/content/Context;II)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Mms/CmasReceiverService"

    const-string v6, "CheckDuplicateGSMCMASBySerialNumber: No Need"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v0

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    const-string v2, "Mms/CmasReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckDuplicateGSMCMASBySerialNumber: serviceCategory = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    const-string v4, "service_category = ? AND identifier = ?"

    new-array v3, v11, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_0
    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateGSMCMASBySerialNumber:Duplicate Found, id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateGSMCMASBySerialNumber:NO Duplicate"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_2
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateGSMCMASBySerialNumber:Caught Exception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_5
    throw v0

    :cond_6
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateGSMCMASBySerialNumber: serviceCategory is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", This must be test only!"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private HandlingCMASByType(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Mms/CmasReceiverService"

    const-string v3, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->handleGSMCMASReceived(Landroid/telephony/SmsCbMessage;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->handleCDMACMASReceived(Landroid/telephony/SmsCbMessage;)V

    goto :goto_0
.end method

.method private SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v8, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "Mms/CmasReceiverService"

    const-string v2, "handleSmsReceived: SCPT = TRUE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsReceived: OPERATION_CODE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    if-nez p2, :cond_3

    const/4 v1, 0x1

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string v1, "#cmas#type##extreme#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "#cmas#type##severe#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "#cmas#type##amber#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "#cmas#type##exercise#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    const-string v1, "#cmas#type##test#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->HandlingCMASByType(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z

    return p0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    sput-object p0, Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;

    return-object p0
.end method

.method private checkCallState()V
    .locals 1

    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/CmasReceiverService$1;-><init>(Lcom/android/mms/transaction/CmasReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private checkForSettings(I)Z
    .locals 10

    const/16 v9, 0x111d

    const/16 v8, 0x111c

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Mms/CmasReceiverService"

    const-string v7, "checkForSettings()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "ril.sms.gcf-mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Mms/CmasReceiverService"

    const-string v7, "checkForSettings() MmsConfig.getCMASProvider() == MmsConfig.CMAS_PROVIDER_KOR "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_0

    const-string v6, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/CmasReceiverService;->isReservedCmasmessage(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v5, v4

    goto :goto_1

    :pswitch_2
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    :pswitch_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move v5, v4

    goto :goto_1

    :cond_5
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    :cond_6
    iget-object v6, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "730"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_1

    :sswitch_2
    move v5, v4

    goto :goto_1

    :sswitch_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    :sswitch_4
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    :sswitch_5
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9

    if-ne p1, v8, :cond_7

    const-string v4, "#cmas#type##test#enabled"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    :cond_7
    const-string v4, "pref_cdma_cmas_over_lte_menu"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p1, v9, :cond_8

    const-string v4, "pref_cmas_exercise"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x111e

    if-ne p1, v4, :cond_0

    const-string v4, "pref_cmas_operator_defined"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getEnableTestMessageWithHiddenMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq p1, v8, :cond_a

    if-ne p1, v9, :cond_0

    :cond_a
    const-string v4, "#cmas#type##test#enabled"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    :cond_b
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1112 -> :sswitch_0
        0x111c -> :sswitch_0
        0x111f -> :sswitch_0
        0x1129 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x397 -> :sswitch_1
        0x1112 -> :sswitch_2
        0x1113 -> :sswitch_3
        0x1114 -> :sswitch_3
        0x1115 -> :sswitch_4
        0x1116 -> :sswitch_4
        0x1117 -> :sswitch_4
        0x1118 -> :sswitch_4
        0x1119 -> :sswitch_4
        0x111a -> :sswitch_4
        0x111b -> :sswitch_5
        0x111c -> :sswitch_6
        0x111d -> :sswitch_6
        0x111e -> :sswitch_6
        0x111f -> :sswitch_6
    .end sparse-switch
.end method

.method private convertGsmServiceGategoryToCdma(I)I
    .locals 3

    const/16 v0, 0x1004

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    :cond_1
    const/16 v0, 0x1000

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1000

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1002

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1003

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
    .end sparse-switch
.end method

.method private extractCmasContentValues(Landroid/telephony/SmsCbMessage;)Landroid/content/ContentValues;
    .locals 13

    const/4 v10, 0x1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v3

    :try_start_0
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS specific fields."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "service_category"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Service Cat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeFirstExists()Z

    move-result v7

    if-ne v7, v10, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const-string v7, "category"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasCategory()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "response_type"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasResponseType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:ResponseType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasResponseType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "severity"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasSeverity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Severity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasSeverity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "urgency"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasUrgency()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Urgency="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasUrgency()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "certainty"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasCertainty()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Certainity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasCertainty()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getCMASMessageID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v7, "alert_handling"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasAlertHandling()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Alert Handling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasAlertHandling()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v4

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    move-wide v1, v4

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMAS:GMT off val = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "expires"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Expiry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Cur time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1000

    if-ne v7, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_3

    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=0"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "expired"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v7, "language"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Language="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v6

    :cond_1
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Store Record Type One Default "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "category"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "response_type"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "severity"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "urgency"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "certainty"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_2
    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getMessageIdentifier ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_4
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method private fillRecordTypeFirst(ILandroid/content/ContentValues;)V
    .locals 6

    const/4 v5, -0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string v3, "response_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "category"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "severity"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "urgency"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "certainty"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_8
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasAddress(I)Ljava/lang/String;
    .locals 3

    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "CMAS, putting address in DB"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMAS, service category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1000

    if-ne v0, p1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "getSmsAddressValues: Presidential alert will be saved in single thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#Emergency Alert#Presidential"

    goto :goto_0

    :cond_1
    const-string v0, "#CMAS#Presidential"

    goto :goto_0

    :cond_2
    const/16 v0, 0x1001

    if-ne v0, p1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "#Emergency Alert#Extreme"

    goto :goto_0

    :cond_3
    const-string v0, "#CMAS#Extreme"

    goto :goto_0

    :cond_4
    const/16 v0, 0x1002

    if-ne v0, p1, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "#Emergency Alert#Severe"

    goto :goto_0

    :cond_5
    const-string v0, "#CMAS#Severe"

    goto :goto_0

    :cond_6
    const/16 v0, 0x1003

    if-ne v0, p1, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "#Emergency Alert#Amber"

    goto :goto_0

    :cond_7
    const-string v0, "#CMAS#Amber"

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "#Emergency Alert#Test"

    goto :goto_0

    :cond_9
    const-string v0, "#CMAS#Test"

    goto :goto_0
.end method

.method public static getCmasDialogCount()I
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v0, "#CMAS#Presidential_"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "#Emergency Alert#Presidential_"

    :cond_0
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCmasPresidentialAddressWithCurrentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmasSetting key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getEnableTestMessageWithHiddenMenu()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sys.hiddenmenu.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

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

.method public static getServiceCategory(I)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xd

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    :cond_1
    const-string v0, "Presidential Alert"

    goto :goto_0

    :sswitch_1
    const-string v0, "Presidential Alert"

    goto :goto_0

    :sswitch_2
    const-string v0, "Extreme Alert"

    goto :goto_0

    :sswitch_3
    const-string v0, "Severe Alert"

    goto :goto_0

    :sswitch_4
    const-string v0, "AMBER Alert"

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v0, "Operator Specific"

    goto :goto_0

    :cond_2
    const-string v0, "RMT Alert"

    goto :goto_0

    :sswitch_6
    const-string v0, "Exercise Alert"

    goto :goto_0

    :sswitch_7
    const-string v0, "Operator Specific"

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v0, "Presidential Alert"

    goto :goto_0

    :cond_3
    const-string v0, "Other Alerts"

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v0, "Operator Specific"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_6
        0x111e -> :sswitch_7
        0x111f -> :sswitch_8
        0x1129 -> :sswitch_9
    .end sparse-switch
.end method

.method private getSmsAddressValues(Landroid/telephony/SmsCbMessage;)Landroid/content/ContentValues;
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "CMAS, putting address in DB"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAS, service category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1000

    if-ne v3, v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "getSmsAddressValues: Presidential alert will be saved in single thread"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;

    move-result-object v0

    const-string v3, "address"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "address"

    const-string v4, "#Emergency Alert#Presidential"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "address"

    const-string v4, "#CMAS#Presidential"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x1001

    if-ne v3, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "address"

    const-string v4, "#Emergency Alert#Extreme"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "address"

    const-string v4, "#CMAS#Extreme"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x1002

    if-ne v3, v1, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "address"

    const-string v4, "#Emergency Alert#Severe"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "address"

    const-string v4, "#CMAS#Severe"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x1003

    if-ne v3, v1, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "address"

    const-string v4, "#Emergency Alert#Amber"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v3, "address"

    const-string v4, "#CMAS#Amber"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "address"

    const-string v4, "#Emergency Alert#Test"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v3, "address"

    const-string v4, "#CMAS#Test"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTmoServiceCategory(I)Ljava/lang/String;
    .locals 4

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    const-string v0, "Presidential Alert"

    goto :goto_0

    :pswitch_1
    const-string v0, "Imminent extreme alert"

    goto :goto_0

    :pswitch_2
    const-string v0, "Imminent severe alert"

    goto :goto_0

    :pswitch_3
    const-string v0, "AMBER Alert"

    goto :goto_0

    :pswitch_4
    const-string v0, "RMT Alert"

    goto :goto_0

    :pswitch_5
    const-string v0, "Exercise Alert"

    goto :goto_0

    :pswitch_6
    const-string v0, "Operator Specific"

    goto :goto_0

    :pswitch_7
    const-string v0, "Other Alerts"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handlScptReceived(Landroid/content/Intent;I)V
    .locals 12

    const/4 v11, 0x1

    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "SMS SCPT RECEIVED ACTION Handle"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    const/4 v0, 0x0

    aget-object v8, v7, v0

    if-nez v8, :cond_1

    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "NULL SMS RECEIVED"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS = TRUE"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptCategory()I

    move-result v6

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/CmasReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSmsReceived: Category = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1001

    if-ne v0, v6, :cond_3

    const-string v4, "#cmas#type##extreme#enabled"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptOperationCode()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1002

    if-ne v0, v6, :cond_4

    const-string v4, "#cmas#type##severe#enabled"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_4
    const/16 v0, 0x1003

    if-ne v0, v6, :cond_5

    const-string v4, "#cmas#type##amber#enabled"

    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_5
    const/16 v0, 0x1004

    if-ne v0, v6, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-ne v0, v11, :cond_6

    const-string v4, "#cmas#type##testmessage#enabled"

    :goto_2
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_6
    const-string v4, "#cmas#type##test#enabled"

    goto :goto_2
.end method

.method private handleCDMACMASReceived(Landroid/telephony/SmsCbMessage;)V
    .locals 11

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getCmasMessageID()I

    move-result v5

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->checkThisAlertIsSetOn(Landroid/telephony/SmsCbMessage;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "handleSmsReceived: Pref not Enbaled"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCmasReceived nMsgID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  nIndetifier = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "handleSmsReceived: CMAS duplication check"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateCDMACMAS(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->insertMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Landroid/net/Uri;

    move-result-object v3

    sget-object v7, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    sput-object v7, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    :cond_5
    if-eqz v5, :cond_8

    sget-object v7, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    if-eqz v3, :cond_1

    sget-boolean v7, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v7, :cond_7

    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "NOT in call"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v2, v7}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x3

    invoke-static {p0, v3, v10, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->getSmsAddressValues(Landroid/telephony/SmsCbMessage;)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "address"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v1, v10}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_6

    sget-object v7, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_9

    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMADisplayLatestEnable()Z

    move-result v6

    if-ne v6, v8, :cond_2

    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/CMASDialog_single_top;->getInstance()Lcom/android/mms/ui/CMASDialog_single_top;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog_single_top;->mDialogHandled:Z

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog_single_top;->dismissDialogForPriority()V

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "Mms/CmasReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error in creating CMAS dialog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v6, "Presidential Alert"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_4

    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    :cond_3
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_1
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v6, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_7

    const/4 v4, 0x1

    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_5
    if-nez v4, :cond_6

    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleGSMCMASReceived(Landroid/telephony/SmsCbMessage;)V
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_1

    const-string v8, "Mms/CmasReceiverService"

    const-string v9, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->checkForSettings(I)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Mms/CmasReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignoring alert of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " by user preference"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v8, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS duplication check"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p0, v7, v8}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateGSMCMASByBodyText(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p0, v7, v6}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateGSMCMASBySerialNumber(Landroid/content/Context;II)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/mms/transaction/CmasReceiverService;->storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-boolean v8, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v8, :cond_c

    const-string v8, "Mms/CmasReceiverService"

    const-string v9, "NOT in call"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v7}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v1, v8}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, -0x1

    invoke-static {v8}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    :cond_6
    const/4 v8, 0x3

    invoke-static {p0, v5, v10, v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->convertGsmServiceGategoryToCdma(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasAddress(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v0, Ljava/lang/String;

    const-string v8, "#CMAS#CMASALL"

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v0, "#Emergency Alert#Alerts"

    :cond_8
    invoke-static {p0, v5, v0, v2, v10}, Lcom/android/mms/transaction/MessagingNotification;->updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/CmasReceiverService;->convertGsmServiceGategoryToCdma(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    invoke-static {v7}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    invoke-static {v7}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/CMASDialog;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "msgIdentifier"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "body"

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "cmas_message_uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x18000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v8, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v9, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v9, v1, v4}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z

    sput-object v5, Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;

    goto/16 :goto_2
.end method

.method private insertMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Landroid/net/Uri;
    .locals 2

    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService;->storeMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isAmberAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "#cmas#type##amber#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amber settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "pref_cmas_receive_class1"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLASS1 settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isCmasMessage(I)Z
    .locals 1

    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x111f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtremeAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "#cmas#type##extreme#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extreme settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "#cmas#type##exercise#enabled"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmt_exercise settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isReservedCmasmessage(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const v2, 0xa000

    if-lt p0, v2, :cond_0

    const v2, 0xafff

    if-gt p0, v2, :cond_0

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KOR : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/16 v2, 0x111c

    if-ne p0, v2, :cond_1

    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SKT : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KOR : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static isSeverityAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "#cmas#type##severe#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "severity settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeCmasdialog()V
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method private showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v3, "pref_key_enable_notifications"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    const-string v3, "Presidential Alert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASDialog;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "msgIdentifier"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "body"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x18000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/CmasReceiverService;->handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_1
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCMASDialog, msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgBody="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in creating CMAS dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "msgIdentifier"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "body"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x30000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/CmasReceiverService;->handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static showCMASDialogAgain(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "showCMASDialogAgain"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static showNextCMASDialog(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v6, v7, p4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/mms/util/TelephonyDBUtils;->getMsgIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    new-instance v0, Landroid/content/ContentValues;

    const/16 v6, 0x9

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "sms_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "service_category"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "identifier"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p5, v0}, Lcom/android/mms/transaction/CmasReceiverService;->fillRecordTypeFirst(ILandroid/content/ContentValues;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v6, v7, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    :cond_1
    const-string v6, "Mms/CmasReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageUri is null, can not insert Cmas data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;
    .locals 12

    const-string v0, "DEBUG"

    const-string v1, "storeGSMCMASData"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->convertGsmServiceGategoryToCdma(I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasAddress(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/String;

    const-string v0, "#CMAS#CMASALL"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "#Emergency Alert#Alerts"

    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "address"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1112

    if-eq p1, v0, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0c01f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "body"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;

    move-result-object v11

    return-object v11

    :cond_3
    :try_start_1
    const-string v0, "body"

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;Landroid/telephony/SmsCbMessage;)Landroid/net/Uri;
    .locals 29

    const-string v25, "Mms/CmasReceiverService"

    const-string v26, "storeMessage()"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getSmsAddressValues(Landroid/telephony/SmsCbMessage;)Landroid/content/ContentValues;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->extractCmasContentValues(Landroid/telephony/SmsCbMessage;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    if-eqz v20, :cond_0

    const-string v25, "Presidential Alert"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const-wide/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-eqz v25, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v17

    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    const-wide/16 v12, 0x0

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-wide/from16 v12, v17

    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v25, "MMM dd, yyyy, h:mmaa"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v25, "Mms/CmasReceiverService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v25, 0x7f0c0203

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v25, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "thread_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    const-string v25, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-nez v25, :cond_3

    :cond_2
    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v25, "thread_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v16, 0x0

    :try_start_0
    sget-object v25, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_2
    const/4 v15, 0x0

    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/android/mms/util/TelephonyDBUtils;->getMsgIdFromUri(Landroid/net/Uri;)J

    move-result-wide v21

    const-string v25, "sms_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "thread_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_1
    sget-object v25, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v8}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getCmasRecordTypeSecondExists()Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SmsCbMessage;->getCmasMsgExpires()J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_4

    if-eqz v15, :cond_4

    const-string v25, "expired"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    const-string v25, "expired"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v11}, Lcom/android/mms/transaction/CmasReceiverService;->updateCmasExpired(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_4
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    invoke-virtual/range {v25 .. v28}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :goto_4
    return-object v16

    :cond_5
    const-string v25, "Mms/CmasReceiverService"

    const-string v26, "msgExpiry is null"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v25, 0x7f0c0203

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v25, 0x7f0c01f3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/lang/String;

    const-string v25, "Unknown"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v25, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_2

    :catch_1
    move-exception v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    :cond_7
    const-string v25, "Mms/CmasReceiverService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "insertedSmsUri is null, can not insert Cmas data"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    goto/16 :goto_4
.end method

.method private updateCmasExpired(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 8

    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "UpdateExpired"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "expired"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DummyFramework$Threads;->CMAS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set expired value of cmas : id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatedRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkThisAlertIsSetOn(Landroid/telephony/SmsCbMessage;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    const/4 v1, 0x0

    const/16 v3, 0x1000

    if-ne v3, v0, :cond_1

    const-string v3, "#cmas#type##presidential#enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    :goto_0
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkThisAlertIsSetOn: Category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is set as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v3, 0x1001

    if-ne v3, v0, :cond_2

    const-string v3, "#cmas#type##extreme#enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x1002

    if-ne v3, v0, :cond_3

    const-string v3, "#cmas#type##severe#enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_3
    const/16 v3, 0x1003

    if-ne v3, v0, :cond_4

    const-string v3, "#cmas#type##amber#enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/16 v3, 0x1004

    if-ne v3, v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "sys.hiddenmenu.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_6
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getCDMAServiceCategory(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1000

    if-ne v1, p1, :cond_1

    const-string v0, "Presidential Alert"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x1001

    if-ne v1, p1, :cond_2

    const-string v0, "Extreme Alert"

    goto :goto_0

    :cond_2
    const/16 v1, 0x1002

    if-ne v1, p1, :cond_3

    const-string v0, "Severe Alert"

    goto :goto_0

    :cond_3
    const/16 v1, 0x1003

    if-ne v1, p1, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string v0, "Amber Alert"

    goto :goto_0

    :cond_4
    const-string v0, "AMBER Alert"

    goto :goto_0

    :cond_5
    const/16 v1, 0x1004

    if-ne v1, p1, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "sys.hiddenmenu.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const-string v0, "Emergency Test Alert"

    goto :goto_0

    :cond_7
    const-string v0, "Emergency Test Alert"

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/CmasReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->checkCallState()V

    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x2

    return v1
.end method
