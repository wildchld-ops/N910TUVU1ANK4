.class public Lcom/android/incallui/vt/PSVTCallUtils;
.super Ljava/lang/Object;
.source "PSVTCallUtils.java"


# static fields
.field private static mCanHandleIMSCallFailError:Z

.field private static mImsCallFailErrorBundle:Landroid/os/Bundle;

.field private static mPSBarringEventReceived:Z

.field private static simulateErrorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    sput-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    sput-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mCanHandleIMSCallFailError:Z

    sput v1, Lcom/android/incallui/vt/PSVTCallUtils;->simulateErrorCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDivertToVoLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static canHandleIMSCallFailError()Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/incallui/vt/PSVTCallUtils;->mCanHandleIMSCallFailError:Z

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mCanHandleIMSCallFailError:Z

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static createIMSCallFailError(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    const-string v1, "createIMSCallFailError"

    invoke-static {v1}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->handlePSBaringEvent(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/incallui/vt/PSVTCallUtils;->setIMSCallFailErrorBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/vt/PSVTCallUtils;->mCanHandleIMSCallFailError:Z

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->handleDisconnectCause(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisconnectCauseAction_DCM(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 14

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v3, 0x1

    :goto_0
    sparse-switch v2, :sswitch_data_0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    if-eq v7, v12, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v8

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_0
    if-eqz v3, :cond_4

    const v7, 0x7f09037a

    const/4 v5, 0x3

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_HK(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 13

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v1

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v7

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_0
    if-eqz v2, :cond_0

    const-string v11, "VOLTE videocall failed..try voice call...!!!"

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    const v6, 0x7f090262

    const/4 v10, 0x1

    const/4 v4, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "CALL_BARRED_BY_NETWORK..."

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    const v6, 0x7f09026a

    const/4 v10, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa8d -> :sswitch_0
        0xa8e -> :sswitch_0
        0xaf1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIP_ERROR EVENT ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_6

    const v7, 0x7f090251

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f090225

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_7

    const v7, 0x7f090257

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f090227

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_8

    const v7, 0x7f090254

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f090228

    const/4 v5, 0x2

    goto/16 :goto_2

    :sswitch_4
    if-eqz v3, :cond_9

    const v7, 0x7f090252

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f090226

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_a

    const v7, 0x7f090258

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f090229

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_6
    if-eqz v3, :cond_b

    const v7, 0x7f09028c

    const/4 v5, 0x2

    :goto_3
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f09022b

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_7
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_b
    const/16 v10, 0x194

    goto/16 :goto_2

    :sswitch_c
    const/16 v10, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_d

    if-eqz v0, :cond_c

    const v7, 0x7f090290

    const/4 v5, 0x2

    :goto_4
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f09028f

    const/4 v5, 0x4

    goto :goto_4

    :cond_d
    const v7, 0x7f09022f

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_e
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    if-eqz v3, :cond_e

    if-eqz v0, :cond_f

    const v7, 0x7f09025e

    const/4 v5, 0x2

    :goto_5
    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canDivertToVoLTE()Z

    move-result v11

    :cond_e
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f09025c

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_10
    if-eqz v3, :cond_10

    const v7, 0x7f09025f

    const/4 v5, 0x2

    :goto_6
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f09023a

    const/4 v5, 0x2

    goto :goto_6

    :sswitch_11
    if-eqz v3, :cond_11

    const v7, 0x7f090294

    const/4 v5, 0x1

    :goto_7
    const/16 v10, 0x1e4

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f090231

    const/4 v5, 0x1

    goto :goto_7

    :sswitch_12
    if-eqz v3, :cond_12

    const v7, 0x7f090295

    const/4 v5, 0x1

    :goto_8
    const/16 v10, 0x1e6

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f090232

    const/4 v5, 0x1

    goto :goto_8

    :sswitch_13
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_13

    const v7, 0x7f090260

    const/4 v5, 0x2

    :goto_9
    const/16 v10, 0x1f4

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f09023b

    const/4 v5, 0x2

    goto :goto_9

    :sswitch_16
    if-eqz v3, :cond_14

    const v7, 0x7f090261

    const/4 v5, 0x2

    :goto_a
    const/16 v10, 0x1f7

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f09023c

    const/4 v5, 0x2

    goto :goto_a

    :sswitch_17
    if-eqz v3, :cond_15

    const v7, 0x7f090262

    const/4 v5, 0x2

    :goto_b
    const/16 v10, 0x1f8

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f09023d

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_18
    if-eqz v3, :cond_16

    const v7, 0x7f09029a

    const/4 v5, 0x1

    :goto_c
    const/16 v10, 0x25b

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f090237

    const/4 v5, 0x1

    goto :goto_c

    :sswitch_19
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1b
    if-eqz v3, :cond_0

    if-eqz v0, :cond_17

    const v7, 0x7f0902cf

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f0902d0

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1c
    if-eqz v3, :cond_0

    if-eqz v0, :cond_18

    const v7, 0x7f0902cf

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f0902d0

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1d
    if-eqz v3, :cond_0

    if-eqz v0, :cond_19

    const v7, 0x7f0902cf

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f0902d0

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1e
    if-eqz v3, :cond_0

    if-eqz v0, :cond_1a

    const v7, 0x7f0902cf

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f0902d0

    const/4 v5, 0x4

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_3
        0x579 -> :sswitch_4
        0x6a5 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1b
        0x7d3 -> :sswitch_1c
        0x7d4 -> :sswitch_1d
        0x7d5 -> :sswitch_1e
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 17

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v3

    const/4 v11, 0x0

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->getSimulatedSIPError()I

    move-result v3

    :cond_0
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-string v5, ""

    const/4 v8, -0x1

    const/4 v12, -0x1

    const/4 v2, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "videocall_settings"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v4, 0x1

    :goto_1
    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_2
    const/4 v14, -0x1

    if-eq v8, v14, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    const/4 v14, -0x1

    if-eq v2, v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_5
    const-string v14, "toVoLTE"

    invoke-virtual {v9, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "noti_type"

    invoke-virtual {v9, v14, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "message"

    invoke-virtual {v9, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "number"

    invoke-virtual {v9, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "show_endscreen"

    invoke-virtual {v9, v14, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIP_ERROR EVENT ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "autoDivertSettings : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isVideoCall    : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TOVOLTE        : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTI_TYPE      : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MESSAGE        : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NUMBER         : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "errorCode      : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   SIP_ERROR : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_ENDSCREEN : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_6
    return-object v9

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v4, :cond_9

    const v8, 0x7f090251

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_9
    const v8, 0x7f090225

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_1
    if-eqz v4, :cond_a

    const v8, 0x7f090257

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_a
    const v8, 0x7f090227

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v4, :cond_b

    const v8, 0x7f0902a0

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_b
    const v8, 0x7f090228

    const/4 v6, 0x2

    goto/16 :goto_2

    :sswitch_3
    if-eqz v4, :cond_c

    const v8, 0x7f090252

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_c
    const v8, 0x7f090226

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v4, :cond_d

    const v8, 0x7f090258

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_d
    const v8, 0x7f090229

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v4, :cond_e

    const v8, 0x7f0902a1

    const/4 v6, 0x2

    :goto_4
    const/16 v12, 0x17c

    move v2, v12

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x5

    goto :goto_4

    :sswitch_6
    const/16 v12, 0x193

    move v2, v12

    goto/16 :goto_2

    :sswitch_7
    if-eqz v4, :cond_f

    const v8, 0x7f0902a2

    const/4 v6, 0x2

    :goto_5
    const/16 v12, 0x194

    move v2, v12

    goto/16 :goto_2

    :cond_f
    const/4 v6, 0x5

    goto :goto_5

    :sswitch_8
    const/16 v12, 0x198

    move v2, v12

    goto/16 :goto_2

    :sswitch_9
    if-eqz v4, :cond_11

    if-eqz v0, :cond_10

    const v8, 0x7f090290

    const/4 v6, 0x2

    :goto_6
    const/16 v12, 0x19f

    goto/16 :goto_2

    :cond_10
    const v8, 0x7f09028f

    const/4 v6, 0x4

    goto :goto_6

    :cond_11
    const v8, 0x7f09022f

    const/4 v6, 0x2

    goto :goto_6

    :sswitch_a
    const/16 v12, 0x1e0

    goto/16 :goto_2

    :sswitch_b
    if-eqz v4, :cond_12

    const v8, 0x7f090294

    const/4 v6, 0x1

    :goto_7
    const/16 v12, 0x1e4

    move v2, v12

    goto/16 :goto_2

    :cond_12
    const v8, 0x7f090231

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_c
    if-eqz v4, :cond_13

    const v8, 0x7f0902a3

    const/4 v6, 0x1

    :goto_8
    const/16 v12, 0x1e6

    move v2, v12

    goto/16 :goto_2

    :cond_13
    const v8, 0x7f090232

    const/4 v6, 0x1

    goto :goto_8

    :sswitch_d
    const/16 v12, 0x1e7

    goto/16 :goto_2

    :sswitch_e
    if-eqz v4, :cond_14

    const v8, 0x7f0902a4

    const/4 v6, 0x2

    :goto_9
    const/16 v12, 0x1f3

    move v2, v12

    goto/16 :goto_2

    :cond_14
    const/4 v6, 0x5

    goto :goto_9

    :sswitch_f
    if-eqz v4, :cond_15

    const v8, 0x7f0902a5

    const/4 v6, 0x1

    :cond_15
    const/16 v12, 0x1f4

    move v2, v12

    goto/16 :goto_2

    :sswitch_10
    if-eqz v4, :cond_16

    const v8, 0x7f0902a6

    const/4 v6, 0x1

    :cond_16
    const/16 v12, 0x1f7

    move v2, v12

    goto/16 :goto_2

    :sswitch_11
    if-eqz v4, :cond_17

    const v8, 0x7f0902a7

    const/4 v6, 0x1

    :cond_17
    const/16 v12, 0x1f8

    move v2, v12

    goto/16 :goto_2

    :sswitch_12
    if-eqz v4, :cond_18

    const v8, 0x7f0902a8

    const/4 v6, 0x1

    :goto_a
    const/16 v12, 0x25b

    move v2, v12

    goto/16 :goto_2

    :cond_18
    const v8, 0x7f090237

    const/4 v6, 0x1

    goto :goto_a

    :sswitch_13
    if-eqz v4, :cond_19

    const v8, 0x7f0902a9

    const/4 v6, 0x2

    :goto_b
    const/16 v12, 0x25e

    move v2, v12

    goto/16 :goto_2

    :cond_19
    const/4 v6, 0x5

    goto :goto_b

    :sswitch_14
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1a

    const v8, 0x7f0902cf

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_1a
    const v8, 0x7f0902d0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_15
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1b

    const v8, 0x7f0902cf

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_1b
    const v8, 0x7f0902d0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1c

    const v8, 0x7f0902cf

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_1c
    const v8, 0x7f0902d0

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_17
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1d

    const v8, 0x7f0902cf

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_1d
    const v8, 0x7f0902d0

    const/4 v6, 0x4

    goto/16 :goto_2

    :cond_1e
    const/4 v14, -0x1

    if-eq v12, v14, :cond_1f

    const-string v5, "[JUST END SCREEN]\n"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_1f
    const-string v5, "[NOT HANDLING ERROR]\n"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "1544-0010"

    aput-object v14, v12, v13

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIP_ERROR EVENT ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_0

    const v7, 0x7f090251

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_6

    const v7, 0x7f090253

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f090227

    goto :goto_3

    :sswitch_3
    if-eqz v3, :cond_0

    const v7, 0x7f090252

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const v7, 0x7f09023e

    const/4 v5, 0x4

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_0

    const v7, 0x7f090255

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    const/16 v10, 0x17c

    goto/16 :goto_2

    :sswitch_6
    if-eqz v3, :cond_8

    const v7, 0x7f09028c

    :goto_4
    const/4 v5, 0x1

    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f09023f

    goto :goto_4

    :sswitch_7
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-nez v3, :cond_9

    const v7, 0x7f090240

    :goto_5
    const/4 v5, 0x3

    const/16 v10, 0x193

    :goto_6
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f090264

    goto :goto_5

    :cond_a
    if-nez v3, :cond_b

    const v7, 0x7f090240

    :goto_7
    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const v7, 0x7f090264

    goto :goto_7

    :sswitch_8
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez v3, :cond_c

    const v7, 0x7f090241

    :goto_8
    const/4 v5, 0x3

    :goto_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f090265

    goto :goto_8

    :cond_d
    if-nez v3, :cond_e

    const v7, 0x7f090242

    :goto_a
    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const v7, 0x7f090266

    goto :goto_a

    :sswitch_9
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    if-nez v3, :cond_f

    const v7, 0x7f090243

    :goto_b
    const/4 v5, 0x3

    :goto_c
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f090267

    goto :goto_b

    :cond_10
    if-nez v3, :cond_11

    const v7, 0x7f090244

    :goto_d
    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const v7, 0x7f090268

    goto :goto_d

    :sswitch_a
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    if-nez v3, :cond_12

    const v7, 0x7f090245

    :goto_e
    const/4 v5, 0x3

    :goto_f
    const/16 v10, 0x193

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f090269

    goto :goto_e

    :cond_13
    if-nez v3, :cond_14

    const v7, 0x7f090246

    :goto_10
    const/4 v5, 0x1

    goto :goto_f

    :cond_14
    const v7, 0x7f09026a

    goto :goto_10

    :sswitch_b
    if-eqz v3, :cond_15

    const v7, 0x7f09026b

    const/4 v5, 0x1

    :cond_15
    const/16 v10, 0x194

    goto/16 :goto_2

    :sswitch_c
    if-eqz v3, :cond_16

    const v7, 0x7f09026c

    const/4 v5, 0x1

    :cond_16
    const/16 v10, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_18

    if-eqz v0, :cond_17

    const v7, 0x7f090290

    const/4 v5, 0x2

    :goto_11
    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canDivertToVoLTE()Z

    move-result v11

    :goto_12
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f09026d

    const/4 v5, 0x4

    goto :goto_11

    :cond_18
    const-string v12, "single_lte"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    const v7, 0x7f090247

    const/4 v5, 0x1

    goto :goto_12

    :cond_19
    const v7, 0x7f090248

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_e
    if-eqz v3, :cond_1a

    const v7, 0x7f09026e

    const/4 v5, 0x1

    :cond_1a
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_1b

    const v7, 0x7f090294

    const/4 v5, 0x1

    :cond_1b
    const/16 v10, 0x1e4

    goto/16 :goto_2

    :sswitch_12
    if-eqz v3, :cond_1c

    const v7, 0x7f090295

    const/4 v5, 0x1

    :cond_1c
    const/16 v10, 0x1e6

    goto/16 :goto_2

    :sswitch_13
    if-eqz v3, :cond_1d

    const v7, 0x7f09026f

    const/4 v5, 0x1

    :cond_1d
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1f

    const v7, 0x7f090297

    const/4 v5, 0x2

    :cond_1e
    :goto_13
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :cond_1f
    const v7, 0x7f090296

    const/4 v5, 0x4

    goto :goto_13

    :sswitch_15
    if-eqz v3, :cond_20

    const v7, 0x7f090270

    const/4 v5, 0x1

    :cond_20
    const/16 v10, 0x1f4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_21

    const v7, 0x7f090271

    const/4 v5, 0x1

    :cond_21
    const/16 v10, 0x1f7

    goto/16 :goto_2

    :sswitch_17
    if-eqz v3, :cond_22

    const v7, 0x7f090272

    const/4 v5, 0x1

    :cond_22
    const/16 v10, 0x1f8

    goto/16 :goto_2

    :sswitch_18
    if-eqz v3, :cond_23

    const v7, 0x7f090273

    const/4 v5, 0x1

    :cond_23
    const/16 v10, 0x25b

    goto/16 :goto_2

    :sswitch_19
    if-eqz v3, :cond_24

    const v7, 0x7f090274

    const/4 v5, 0x1

    :cond_24
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v10, 0x25e

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v10, 0x0

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->getSimulatedSIPError()I

    move-result v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canDivertToVoLTE()Z

    move-result v12

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v13

    if-eqz v13, :cond_7

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "1544-0010"

    aput-object v15, v13, v14

    invoke-virtual {v1, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_33

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_5
    return-object v8

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_1

    const v7, 0x7f090251

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_8

    const v7, 0x7f0902aa

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f090227

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_1

    const v7, 0x7f090252

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    if-eqz v3, :cond_9

    const v7, 0x7f0902ab

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f09023e

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_a
    if-eqz v3, :cond_1

    const v7, 0x7f090255

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_b

    const v7, 0x7f0902ac

    const/4 v5, 0x2

    :cond_b
    const/16 v11, 0x17c

    goto/16 :goto_2

    :sswitch_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_7
    if-eqz v3, :cond_c

    if-eqz v0, :cond_d

    const v7, 0x7f0902ae

    const/4 v5, 0x2

    :cond_c
    :goto_4
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f0902ad

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_8
    if-eqz v3, :cond_e

    if-eqz v0, :cond_f

    const v7, 0x7f0902ae

    const/4 v5, 0x2

    :cond_e
    :goto_5
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f0902ad

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_9
    if-eqz v3, :cond_10

    if-eqz v0, :cond_11

    const v7, 0x7f0902ae

    const/4 v5, 0x2

    :cond_10
    :goto_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f0902ad

    const/4 v5, 0x4

    goto :goto_6

    :sswitch_a
    if-eqz v3, :cond_12

    if-eqz v0, :cond_13

    const v7, 0x7f0902ae

    const/4 v5, 0x2

    :cond_12
    :goto_7
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f0902ad

    const/4 v5, 0x4

    goto :goto_7

    :sswitch_b
    if-eqz v3, :cond_14

    if-eqz v0, :cond_15

    const v7, 0x7f0902b0

    const/4 v5, 0x2

    :cond_14
    :goto_8
    const/16 v11, 0x194

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f0902af

    const/4 v5, 0x4

    goto :goto_8

    :sswitch_c
    if-eqz v3, :cond_16

    const v7, 0x7f0902b1

    const/4 v5, 0x2

    :cond_16
    const/16 v11, 0x195

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_17

    const v7, 0x7f0902b2

    const/4 v5, 0x2

    :cond_17
    const/16 v11, 0x196

    goto/16 :goto_2

    :sswitch_e
    if-eqz v3, :cond_18

    const v7, 0x7f0902b3

    const/4 v5, 0x1

    :cond_18
    const/16 v11, 0x198

    goto/16 :goto_2

    :sswitch_f
    if-eqz v3, :cond_19

    if-eqz v0, :cond_1a

    const v7, 0x7f0902b5

    const/4 v5, 0x2

    :cond_19
    :goto_9
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f0902b4

    const/4 v5, 0x4

    goto :goto_9

    :sswitch_10
    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1c

    const v7, 0x7f0902b7

    const/4 v5, 0x2

    :cond_1b
    :goto_a
    const/16 v11, 0x1a0

    goto/16 :goto_2

    :cond_1c
    const v7, 0x7f0902b6

    const/4 v5, 0x4

    goto :goto_a

    :sswitch_11
    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1e

    const v7, 0x7f0902b9

    const/4 v5, 0x2

    :cond_1d
    :goto_b
    const/16 v11, 0x1a4

    goto/16 :goto_2

    :cond_1e
    const v7, 0x7f0902b8

    const/4 v5, 0x4

    goto :goto_b

    :sswitch_12
    if-eqz v3, :cond_1f

    if-eqz v0, :cond_20

    const v7, 0x7f0902bb

    const/4 v5, 0x2

    :cond_1f
    :goto_c
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_20
    const v7, 0x7f0902ba

    const/4 v5, 0x4

    goto :goto_c

    :sswitch_13
    if-eqz v3, :cond_21

    const v7, 0x7f090294

    const/4 v5, 0x1

    :cond_21
    const/16 v11, 0x1e4

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_22

    const v7, 0x7f0902bc

    const/4 v5, 0x1

    :cond_22
    const/16 v11, 0x1e6

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_23

    const v7, 0x7f0902bd

    const/4 v5, 0x1

    :cond_23
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_24

    if-eqz v0, :cond_25

    const v7, 0x7f0902bf

    const/4 v5, 0x2

    :cond_24
    :goto_d
    const/16 v11, 0x1e8

    goto/16 :goto_2

    :cond_25
    const v7, 0x7f0902be

    const/4 v5, 0x4

    goto :goto_d

    :sswitch_17
    if-eqz v3, :cond_26

    if-eqz v0, :cond_27

    const v7, 0x7f0902c1

    const/4 v5, 0x2

    :cond_26
    :goto_e
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_27
    const v7, 0x7f0902c0

    const/4 v5, 0x4

    goto :goto_e

    :sswitch_18
    if-eqz v3, :cond_28

    if-eqz v0, :cond_29

    const v7, 0x7f0902c3

    const/4 v5, 0x2

    :cond_28
    :goto_f
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_29
    const v7, 0x7f0902c2

    const/4 v5, 0x4

    goto :goto_f

    :sswitch_19
    if-eqz v3, :cond_2a

    if-eqz v0, :cond_2b

    const v7, 0x7f0902c5

    const/4 v5, 0x2

    :cond_2a
    :goto_10
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :cond_2b
    const v7, 0x7f0902c4

    const/4 v5, 0x4

    goto :goto_10

    :sswitch_1a
    if-eqz v3, :cond_2c

    if-eqz v0, :cond_2d

    const v7, 0x7f0902c7

    const/4 v5, 0x2

    :cond_2c
    :goto_11
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :cond_2d
    const v7, 0x7f0902c6

    const/4 v5, 0x4

    goto :goto_11

    :sswitch_1b
    if-eqz v3, :cond_2e

    const v7, 0x7f0902c8

    const/4 v5, 0x1

    :cond_2e
    const/16 v11, 0x25b

    goto/16 :goto_2

    :sswitch_1c
    if-eqz v3, :cond_2f

    if-eqz v0, :cond_30

    const v7, 0x7f0902ca

    const/4 v5, 0x2

    :cond_2f
    :goto_12
    const/16 v11, 0x25c

    goto/16 :goto_2

    :cond_30
    const v7, 0x7f0902c9

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_1d
    if-eqz v3, :cond_31

    if-eqz v0, :cond_32

    const v7, 0x7f0902cc

    const/4 v5, 0x2

    :cond_31
    :goto_13
    const/16 v11, 0x25e

    goto/16 :goto_2

    :cond_32
    const v7, 0x7f0902cb

    const/4 v5, 0x4

    goto :goto_13

    :cond_33
    const/4 v13, -0x1

    if-eq v11, v13, :cond_34

    const-string v4, "[JUST END SCREEN]\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_14
    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_34
    const-string v4, "[NOT HANDLING ERROR]\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x195 -> :sswitch_c
        0x196 -> :sswitch_d
        0x198 -> :sswitch_e
        0x19f -> :sswitch_f
        0x1a0 -> :sswitch_10
        0x1a4 -> :sswitch_11
        0x1e0 -> :sswitch_12
        0x1e4 -> :sswitch_13
        0x1e6 -> :sswitch_14
        0x1e7 -> :sswitch_15
        0x1e8 -> :sswitch_16
        0x1f4 -> :sswitch_18
        0x1f7 -> :sswitch_19
        0x1f8 -> :sswitch_1a
        0x25b -> :sswitch_1b
        0x25c -> :sswitch_1c
        0x25e -> :sswitch_1d
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x836 -> :sswitch_17
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    if-eqz v12, :cond_6

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v12, "toVoLTE"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v8, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v8, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v8, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v8, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIP_ERROR EVENT ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "errorCode      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   SIP_ERROR : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_4
    return-object v8

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_7

    const v7, 0x7f090251

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f090225

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_8

    const v7, 0x7f090253

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f090227

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_9

    const v7, 0x7f090252

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f090226

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v3, :cond_a

    const v7, 0x7f090255

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f090229

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_c

    if-eqz v0, :cond_b

    const v7, 0x7f09028b

    const/4 v5, 0x2

    :goto_3
    const/16 v10, 0x17c

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f09028a

    const/4 v5, 0x4

    goto :goto_3

    :cond_c
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_6
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_7
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v10, 0x193

    goto/16 :goto_2

    :sswitch_b
    if-eqz v3, :cond_e

    if-eqz v0, :cond_d

    const v7, 0x7f09028e

    const/4 v5, 0x2

    :goto_4
    const/16 v10, 0x194

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f09028d

    const/4 v5, 0x4

    goto :goto_4

    :cond_e
    const v7, 0x7f09022c

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_c
    if-eqz v3, :cond_f

    const v7, 0x7f090291

    const/4 v5, 0x1

    :goto_5
    const/16 v10, 0x198

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f09022d

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_d
    if-eqz v3, :cond_11

    if-eqz v0, :cond_10

    const v7, 0x7f090290

    const/4 v5, 0x2

    :goto_6
    const/16 v10, 0x19f

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f09028f

    const/4 v5, 0x4

    goto :goto_6

    :cond_11
    const v7, 0x7f09022e

    const/4 v5, 0x2

    goto :goto_6

    :sswitch_e
    if-eqz v3, :cond_13

    if-eqz v0, :cond_12

    const v7, 0x7f090293

    const/4 v5, 0x2

    :goto_7
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f090292

    const/4 v5, 0x4

    goto :goto_7

    :cond_13
    const v7, 0x7f090230

    const/4 v5, 0x1

    goto :goto_7

    :sswitch_f
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v10, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_14

    const v7, 0x7f090294

    const/4 v5, 0x1

    :goto_8
    const/16 v10, 0x1e4

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f090231

    const/4 v5, 0x1

    goto :goto_8

    :sswitch_12
    if-eqz v3, :cond_15

    const v7, 0x7f090295

    const/4 v5, 0x1

    :goto_9
    const/16 v10, 0x1e6

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f090232

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_13
    const/16 v10, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_17

    if-eqz v0, :cond_16

    const v7, 0x7f090297

    const/4 v5, 0x2

    :goto_a
    const/16 v10, 0x1f3

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f090296

    const/4 v5, 0x4

    goto :goto_a

    :cond_17
    const v7, 0x7f090233

    const/4 v5, 0x2

    goto :goto_a

    :sswitch_15
    if-eqz v3, :cond_18

    const v7, 0x7f090298

    const/4 v5, 0x1

    :goto_b
    const/16 v10, 0x1f4

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f090234

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_16
    if-eqz v3, :cond_19

    const v7, 0x7f090299

    const/4 v5, 0x1

    :goto_c
    const/16 v10, 0x1f7

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f090236

    const/4 v5, 0x2

    goto :goto_c

    :sswitch_17
    if-eqz v3, :cond_1a

    const v7, 0x7f090256

    const/4 v5, 0x1

    :goto_d
    const/16 v10, 0x1f8

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f090235

    const/4 v5, 0x2

    goto :goto_d

    :sswitch_18
    if-eqz v3, :cond_1b

    const v7, 0x7f09029a

    const/4 v5, 0x1

    :goto_e
    const/16 v10, 0x25b

    goto/16 :goto_2

    :cond_1b
    const v7, 0x7f090237

    const/4 v5, 0x1

    goto :goto_e

    :sswitch_19
    const/16 v10, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1c

    const v7, 0x7f09029d

    const/4 v5, 0x2

    :goto_f
    const/16 v10, 0x25e

    goto/16 :goto_2

    :cond_1c
    const v7, 0x7f09029c

    const/4 v5, 0x4

    goto :goto_f

    :cond_1d
    const/4 v5, 0x5

    goto :goto_f

    :sswitch_1b
    if-eqz v3, :cond_0

    if-eqz v0, :cond_1e

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_1e
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1c
    if-eqz v3, :cond_0

    if-eqz v0, :cond_1f

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_1f
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1d
    if-eqz v3, :cond_0

    if-eqz v0, :cond_20

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_20
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_1e
    if-eqz v3, :cond_0

    if-eqz v0, :cond_21

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_21
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1b
        0x7d3 -> :sswitch_1c
        0x7d4 -> :sswitch_1d
        0x7d5 -> :sswitch_1e
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v2

    const/4 v10, 0x0

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->getSimulatedSIPError()I

    move-result v2

    :cond_0
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v13

    if-eqz v13, :cond_8

    const/4 v3, 0x1

    :goto_1
    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_2
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, -0x1

    if-eq v11, v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_26

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_6
    return-object v8

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v3, :cond_9

    const v7, 0x7f090251

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f090225

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_1
    if-eqz v3, :cond_a

    const v7, 0x7f090253

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f090227

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_c

    if-eqz v0, :cond_b

    const v7, 0x7f09029f

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f09029e

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x5

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_d

    const v7, 0x7f090252

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f090226

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v3, :cond_e

    const v7, 0x7f090255

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f090229

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_10

    if-eqz v0, :cond_f

    const v7, 0x7f09028b

    const/4 v5, 0x2

    :goto_4
    const/16 v11, 0x17c

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f09028a

    const/4 v5, 0x4

    goto :goto_4

    :cond_10
    const/4 v5, 0x5

    goto :goto_4

    :sswitch_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_7
    if-eqz v3, :cond_12

    if-eqz v0, :cond_11

    const v7, 0x7f09028e

    const/4 v5, 0x2

    :goto_5
    const/16 v11, 0x194

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f09028d

    const/4 v5, 0x4

    goto :goto_5

    :cond_12
    const v7, 0x7f09022c

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_8
    if-eqz v3, :cond_13

    const v7, 0x7f090291

    const/4 v5, 0x1

    :goto_6
    const/16 v11, 0x198

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f09022d

    const/4 v5, 0x1

    goto :goto_6

    :sswitch_9
    if-eqz v3, :cond_15

    if-eqz v0, :cond_14

    const v7, 0x7f090290

    const/4 v5, 0x2

    :goto_7
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f09028f

    const/4 v5, 0x4

    goto :goto_7

    :cond_15
    const v7, 0x7f09022e

    const/4 v5, 0x2

    goto :goto_7

    :sswitch_a
    if-eqz v3, :cond_17

    if-eqz v0, :cond_16

    const v7, 0x7f090293

    const/4 v5, 0x2

    :goto_8
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f090292

    const/4 v5, 0x4

    goto :goto_8

    :cond_17
    const v7, 0x7f090249

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_b
    if-eqz v3, :cond_18

    const v7, 0x7f090294

    const/4 v5, 0x1

    :goto_9
    const/16 v11, 0x1e4

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f090231

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_c
    if-eqz v3, :cond_19

    const v7, 0x7f090295

    const/4 v5, 0x1

    :goto_a
    const/16 v11, 0x1e6

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f090232

    const/4 v5, 0x1

    goto :goto_a

    :sswitch_d
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_e
    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1a

    const v7, 0x7f090297

    const/4 v5, 0x2

    :goto_b
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f090296

    const/4 v5, 0x4

    goto :goto_b

    :cond_1b
    const v7, 0x7f090233

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_f
    if-eqz v3, :cond_1c

    const v7, 0x7f090298

    const/4 v5, 0x1

    :goto_c
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_1c
    const v7, 0x7f090234

    const/4 v5, 0x2

    goto :goto_c

    :sswitch_10
    if-eqz v3, :cond_1d

    const v7, 0x7f090299

    const/4 v5, 0x1

    :cond_1d
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_1e

    const v7, 0x7f090256

    const/4 v5, 0x1

    :cond_1e
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :sswitch_12
    if-eqz v3, :cond_1f

    const v7, 0x7f09029a

    const/4 v5, 0x1

    :goto_d
    const/16 v11, 0x25b

    goto/16 :goto_2

    :cond_1f
    const v7, 0x7f090237

    const/4 v5, 0x1

    goto :goto_d

    :sswitch_13
    if-eqz v3, :cond_21

    if-eqz v0, :cond_20

    const v7, 0x7f09029d

    const/4 v5, 0x2

    :goto_e
    const/16 v11, 0x25e

    goto/16 :goto_2

    :cond_20
    const v7, 0x7f09029c

    const/4 v5, 0x4

    goto :goto_e

    :cond_21
    const v7, 0x7f09024a

    const/4 v5, 0x2

    goto :goto_e

    :sswitch_14
    if-eqz v3, :cond_1

    if-eqz v0, :cond_22

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_22
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_1

    if-eqz v0, :cond_23

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_23
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_1

    if-eqz v0, :cond_24

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_24
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_17
    if-eqz v3, :cond_1

    if-eqz v0, :cond_25

    const v7, 0x7f0902cd

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_25
    const v7, 0x7f0902ce

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_26
    const/4 v13, -0x1

    if-eq v11, v13, :cond_27

    const-string v4, "[JUST END SCREEN]\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_27
    const-string v4, "[NOT HANDLING ERROR]\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getIMSCallFailErrorBundle()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getSIPErrorString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_SESSION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RTP_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DATA_CONNECTION_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ALTERNATIVE_SERVICES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_FORBIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "METHOD_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_MEDIA_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_URI_SCHEME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BAD_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADDRESS_INCOMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BUSY_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TERMINATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NETWORK_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_INTERNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DECLINE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DOES_NOT_EXIST_ANYWHERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_NOT_ACCEPTABLE_DIVERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_TIMER_F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_423"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_GENERAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x195 -> :sswitch_8
        0x196 -> :sswitch_9
        0x198 -> :sswitch_a
        0x19f -> :sswitch_b
        0x1a0 -> :sswitch_c
        0x1a4 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1e8 -> :sswitch_14
        0x1f4 -> :sswitch_16
        0x1f7 -> :sswitch_17
        0x1f8 -> :sswitch_18
        0x25b -> :sswitch_19
        0x25c -> :sswitch_1a
        0x25e -> :sswitch_1b
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1d
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1f
        0x7d5 -> :sswitch_20
        0x835 -> :sswitch_1c
        0x836 -> :sswitch_15
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
    .end sparse-switch
.end method

.method private static getSimulatedSIPError()I
    .locals 4

    const/16 v1, 0x21

    sget v2, Lcom/android/incallui/vt/PSVTCallUtils;->simulateErrorCount:I

    rem-int v0, v2, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimulatedSIPError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/incallui/vt/PSVTCallUtils;->simulateErrorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    sget v2, Lcom/android/incallui/vt/PSVTCallUtils;->simulateErrorCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/incallui/vt/PSVTCallUtils;->simulateErrorCount:I

    return v0

    :pswitch_0
    const/16 v0, 0x44f

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x453

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x45a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x579

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x6a5

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x17c

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x7d1

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x194

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x198

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x19f

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x1e0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x89a

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x89b

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x1e4

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x1e6

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x1e7

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x836

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x1f4

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x1f7

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x1f8

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x25b

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x25e

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x835

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x7d2

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x7d3

    goto :goto_0

    :pswitch_19
    const/16 v0, 0x7d4

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x7d5

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x195

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x196

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x1a0

    goto/16 :goto_0

    :pswitch_1e
    const/16 v0, 0x1a4

    goto/16 :goto_0

    :pswitch_1f
    const/16 v0, 0x1e8

    goto/16 :goto_0

    :pswitch_20
    const/16 v0, 0x25c

    goto/16 :goto_0

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public static handleDisconnectCause(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ims_support_uicc_mobility"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_SKT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v1, "common_volte_hk"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_HK(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :cond_2
    const-string v1, "dcm_volte_popup_message"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_DCM(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/Call;->setSipErrorCode(I)V

    goto :goto_0

    :cond_4
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_KTT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_LGT_UICC(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_SKT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_KTT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/vt/PSVTCallUtils;->getDisconnectCauseAction_LGT(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public static handlePSBaringEvent(Lcom/android/services/telephony/common/Call;)Landroid/os/Bundle;
    .locals 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "handlePSBaringEvent"

    invoke-static {v13}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    invoke-static {v13, v14, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_5

    move v0, v11

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v13

    if-eqz v13, :cond_6

    move v2, v12

    :goto_1
    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    const v6, 0x7f09028b

    const/4 v4, 0x2

    :goto_2
    const-string v11, "dcm_volte_popup_message"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v6, 0x7f09037a

    const/4 v4, 0x3

    :cond_0
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/vt/PSVTCallUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPostDialString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/vt/PSVTCallUtils;->log(Ljava/lang/String;)V

    :cond_4
    return-object v7

    :cond_5
    move v0, v12

    goto/16 :goto_0

    :cond_6
    move v2, v11

    goto/16 :goto_1

    :cond_7
    const v6, 0x7f09028a

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x5

    goto/16 :goto_3
.end method

.method public static isPSBarringEventReceived()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    return v0
.end method

.method public static isSilentRedialing()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const-string v2, "noti_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const-string v2, "noti_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PSVTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setIMSCallFailErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    sput-object p0, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/vt/PSVTCallUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public static showSecEndCallScreenNotTPhone()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/vt/PSVTCallUtils;->mImsCallFailErrorBundle:Landroid/os/Bundle;

    const-string v2, "noti_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
