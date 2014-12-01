.class public Lcom/android/phone/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Lcom/android/services/telephony/common/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/rcs/RcsUtils$3;,
        Lcom/android/phone/rcs/RcsUtils$SessionState;
    }
.end annotation


# static fields
.field private static completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private static errorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/rcs/RcsUtils$1;

    invoke-direct {v0}, Lcom/android/phone/rcs/RcsUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/rcs/RcsUtils;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/phone/rcs/RcsUtils$2;

    invoke-direct {v0}, Lcom/android/phone/rcs/RcsUtils$2;-><init>()V

    sput-object v0, Lcom/android/phone/rcs/RcsUtils;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/phone/rcs/RcsUtils$SessionState;
    .locals 13
    .param p0    # Landroid/content/Context;

    new-instance v9, Lcom/android/phone/rcs/RcsUtils$SessionState;

    invoke-direct {v9}, Lcom/android/phone/rcs/RcsUtils$SessionState;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mIsActive:Z

    invoke-static {p0}, Lcom/android/phone/rcs/RcsUtils;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const-string v10, "id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v10, "dir"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v10, "state"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v10, "type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v10, "size"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-nez v2, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mIsActive:Z

    const-string v10, "RcsShare"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifySessionStates incoming session id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mState:I

    iput v8, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mType:I

    iput v2, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mDirection:I

    iput-wide v5, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mId:J

    iput-wide v3, v9, Lcom/android/phone/rcs/RcsUtils$SessionState;->mSize:J

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_2
    const-string v10, "RcsShare"

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v10, "RcsShare"

    const-string v11, "acquireSessionInfo() exception"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v10, "RcsShare"

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/content/Context;

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/rcs/RcsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RcsShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInvitationText(Landroid/content/res/Resources;Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2
    .param p0    # Landroid/content/res/Resources;
    .param p1    # Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    sget-object v0, Lcom/android/phone/rcs/RcsUtils$3;->$SwitchMap$com$android$services$telephony$common$RcsTransferConstants$SessionType:[I

    invoke-virtual {p1}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090672

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f09066e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09066f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090670

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090671

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "RcsShare"

    const-string v5, "getPhoneNumber() is null "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    const-string v1, "alertoncall_mode"

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v7, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    const-wide/16 v7, 0x5dc

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :pswitch_1
    const-string v7, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v7, "android.resource://com.sec.android.app.clockpackage/raw/alert_on_call"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v7, Lcom/android/phone/rcs/RcsUtils;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v7, Lcom/android/phone/rcs/RcsUtils;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    const/4 v4, 0x0

    const-string v7, "RcsShare"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "falied to play sound :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    throw v7

    :pswitch_2
    const-string v7, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x7

    :goto_1
    const/4 v7, 0x4

    invoke-static {p0, v7}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto/16 :goto_0

    :cond_1
    const-string v7, "com.samsung.rcs.framework.instantmessaging.notification.MESSAGE_RECEIVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
