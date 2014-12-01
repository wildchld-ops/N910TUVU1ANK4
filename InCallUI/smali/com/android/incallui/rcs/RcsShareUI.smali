.class public Lcom/android/incallui/rcs/RcsShareUI;
.super Ljava/lang/Object;
.source "RcsShareUI.java"

# interfaces
.implements Lcom/android/services/telephony/common/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rcs/RcsShareUI$3;,
        Lcom/android/incallui/rcs/RcsShareUI$SessionState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static dialogIncoming:Landroid/app/Dialog;

.field private static mHasRcsServices:Z

.field private static mIsActiveCall:Z

.field private static mIsOwnFtCapable:Z

.field private static mIsOwnIshCapable:Z

.field private static mIsOwnVshCapable:Z

.field private static mPromotedService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/incallui/rcs/RcsShareUI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->queryOwn(Landroid/content/Context;)V

    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_1
    const-string v0, "+g.3gpp.cs-voice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static acceptInvitation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCOMING_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;
    .locals 13

    new-instance v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    invoke-direct {v9}, Lcom/android/incallui/rcs/RcsShareUI$SessionState;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

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

    iput-boolean v10, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mState:I

    iput v8, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    iput v2, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mDirection:I

    iput-wide v5, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    iput-wide v3, v9, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mSize:J

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v9

    :cond_2
    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "acquireSessionInfo() exception"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v10, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v11, "verifySessionStates no sessions"

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static addRcsExtras(Lcom/android/services/telephony/common/Call;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x1

    const-string v3, "contactNumber"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactName"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "contactLabel"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerLabel(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.CALL_START_TIME"

    invoke-static {p2, p0}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_MUTE"

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.PHONE_SPEAKER"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_CONNECTED"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.BLUETOOTH_AVAILABLE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.extra.NOISE_FEATURE"

    const-string v4, "noise_suppression"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver : opening cursor"

    invoke-static {v2, v4, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {v7, p0}, Lcom/android/incallui/rcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {p0, v2}, Lcom/android/incallui/rcs/RcsShareUI;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v9

    :goto_1
    return v2

    :cond_1
    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No content resolver !"

    invoke-static {v2, v3, v9}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static disconnect(Landroid/content/Context;)V
    .locals 3

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected! "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/incallui/rcs/RcsShareUI;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J
    .locals 6

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static getCallerLabel(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)I
    .locals 4

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    goto :goto_0
.end method

.method private static getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

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

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/rcs/RcsShareUI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

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

.method private static isCshRunning(Landroid/content/Context;)Z
    .locals 6

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isCshTopMostActivity(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.rcs.share.ContentShareActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/rcs/RcsShareUI;->isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRcsFTAvailable(Landroid/database/Cursor;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "is_enabled"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature_tag"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "featureTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableFT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isRcsServiceAvailable()Z
    .locals 3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsServiceAvailable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    return v0
.end method

.method public static isShareActive(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "dir"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    :cond_1
    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "found active session connecting/in progress "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is Share active? returnVal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bad RCS query, no actives shares? "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isTopMostActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top most activity is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static prepareRcsUiElements(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;ZLcom/android/services/telephony/common/Call;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "prepareRcsUiElements()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsActiveCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p4}, Lcom/android/incallui/rcs/RcsShareUI;->queryInCallServiceProvider(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/incallui/rcs/RcsShareUI;->setupPromotedServiceButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;Z)V

    invoke-static {p0, p2, v0}, Lcom/android/incallui/rcs/RcsShareUI;->setupRcsServicesButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static queryInCallServiceProvider(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Landroid/database/Cursor;
    .locals 10

    const/4 v9, 0x0

    invoke-static {p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Bad RCS query, No go for RCS"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0

    :cond_1
    sput-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mHasRcsServices:Z

    goto :goto_0
.end method

.method static queryOwn(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {v7}, Lcom/android/incallui/rcs/RcsShareUI;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "feature_tag"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "is_enabled"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    sput-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v0, :cond_3

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnFtCapable:Z

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    return-void

    :cond_3
    if-eqz v3, :cond_4

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.gsma-is\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez v0, :cond_4

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnIshCapable:Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_1

    const-string v4, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    sput-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsOwnVshCapable:Z

    goto :goto_0
.end method

.method public static registerRcsObserver(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/CallCommandClient;->requestRcsObserver(II)V

    return-void
.end method

.method public static resumeShare(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 3

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "resuming share..! "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.RESUME_SHARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/incallui/rcs/RcsShareUI;->isCshRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    :cond_0
    return-void
.end method

.method public static setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V
    .locals 7

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v1, 0x7f0e0274

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v2, 0x7f0e0275

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J

    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupInviteCallCardButtons "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v4, Lcom/android/incallui/rcs/RcsShareUI$1;

    invoke-direct {v4, p2}, Lcom/android/incallui/rcs/RcsShareUI$1;-><init>(Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/incallui/rcs/RcsShareUI$2;

    invoke-direct {v0, v2, v3, p1}, Lcom/android/incallui/rcs/RcsShareUI$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/rcs/RcsInvitation;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons remove"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setupLegacyInCallButtons no RCS"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static setupPromotedServiceButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;Z)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton()"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton null button"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton gone"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton VISIBLE"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "feature_tag"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "int_name"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_3

    const-string v6, "+g.3gpp.cs-voice"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton not promoted"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v8, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    sput-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    const/4 v2, 0x0

    const-string v6, "is_enabled"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v6, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setupPromotedServiceButton is enabled"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    const-string v6, "ims_rcs_bb"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p1, :cond_5

    const v6, 0x7f0203d6

    invoke-virtual {p1, v8, v6, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, " Easy Mode on rejecting invitation "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.ish.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Did not find RCS service..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v1

    iget v1, v1, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    if-nez v0, :cond_5

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v1, 0x7f04006a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_5
    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J

    sget-object v2, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupRcsCallCard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/incallui/rcs/RcsShareUI$SessionState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mIsActive:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsCallCard hasInvite"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->setupInviteCallCardButtons(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget v0, v0, Lcom/android/incallui/rcs/RcsShareUI$SessionState;->mType:I

    invoke-static {v0}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI$3;->$SwitchMap$com$android$services$telephony$common$RcsTransferConstants$SessionType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Default case"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCallCard has no invites"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/rcs/RcsShareUI;->dialogIncoming:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setupRcsServicesButton(Landroid/content/Context;Landroid/widget/Button;Landroid/database/Cursor;)V
    .locals 11

    const/4 v10, 0x0

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton()"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton null button"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton gone"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton VISIBLE"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v7, "service_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "is_enabled"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_3
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v7, "feature_tag"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "+g.3gpp.cs-voice"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "featureTag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " skip!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v0, :cond_3

    :cond_5
    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsActiveCall? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isEnabled? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    sget-boolean v7, Lcom/android/incallui/rcs/RcsShareUI;->mIsActiveCall:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    const-string v7, "ims_rcs_bb"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    const v7, 0x7f0203d3

    invoke-virtual {p1, v10, v7, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_6
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_4

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton found enabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v7, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setupRcsServicesButton disabled"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static startLiveVideo(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLiveVideo() context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method public static startRcsActivity(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->addRcsExtras(Lcom/android/services/telephony/common/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Did not find RCS activity..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "null info"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RCS startRcsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallerName(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/incallui/rcs/RcsShareUI;->getCallStartTime(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->addRcsExtras(Lcom/android/services/telephony/common/Call;Landroid/content/Intent;Landroid/content/Context;)V

    :try_start_0
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Did not find RCS activity..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startRcsSharingDialog(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.contentsharing.action.INCALL_SERVICES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/incallui/rcs/RcsShareUI;->mPromotedService:Z

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.rcs.framework.mediatransfer.extra.NO_PROMOTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsService(Landroid/content/Intent;Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/incallui/rcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;

    const-string v5, "striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static unRegisterRcsObserver(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/CallCommandClient;->requestRcsObserver(II)V

    return-void
.end method
