.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;"
    }
.end annotation


# static fields
.field private static mPressedButtonTime:J

.field private static sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;


# instance fields
.field mActivityLaunchAnimation:Landroid/os/Bundle;

.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mImcomingVTSpeakerState:Z

.field private mPreviousCallType:I

.field private mPreviousMuteState:Z

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mRequestModifyCallType:I

.field private mResponseModifyCallType:I

.field private mShowGenericMerge:Z

.field private mShowManageConference:Z

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    iput v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput v2, p0, Lcom/android/incallui/CallButtonPresenter;->mRequestModifyCallType:I

    iput v2, p0, Lcom/android/incallui/CallButtonPresenter;->mResponseModifyCallType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallButtonPresenter;)Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory Size Avialable is in Kb : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getCallerName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallButtonPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/CallButtonPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private makeMultiWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateExtraButtonRow()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGeneric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowManageConference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowGenericMerge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showExtraRow()V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    iget-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showEasyExtraRow(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->hideExtraRow()V

    goto :goto_0
.end method

.method private updateRcsElelements(Lcom/android/services/telephony/common/Call;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getPromotedButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getShareButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Lcom/android/incallui/rcs/RcsShareUI;->prepareRcsUiElements(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/Button;ZLcom/android/services/telephony/common/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setupRcsCallButtons()V

    :cond_0
    return-void
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isChangingOrientation()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v7, 0x1

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    const/4 v5, 0x1

    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUi isVisible("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUi isAllDisabled("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v7, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    :cond_3
    const-string v11, "automatic_answering_machine"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateUi AnswerMemoUtils.isAutoAnswered() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    :goto_3
    const-string v11, "Updating call UI for call: "

    invoke-static {p0, v11, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v7, :cond_0

    if-eqz v5, :cond_8

    const-string v11, "Disable all buttons in disconnecting state"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    invoke-interface {v10, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    goto :goto_3

    :cond_7
    invoke-interface {v10, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    goto :goto_3

    :cond_8
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show hold "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enable hold"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show merge "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show swap "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show add call "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Show mute "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x40

    invoke-virtual {p2, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x4

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v11, 0x10

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    const/16 v11, 0x80

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v2, :cond_16

    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_17

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showCanCelButton(Z)V

    :goto_5
    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getVideoCall()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "updateUi, call was previously a video call, disable add call!"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    :cond_9
    const-string v11, "voice_call_recording"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "voice_call_recording_menu"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "voice_call_recording_easy_mode"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_a
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showRecord(Z)V

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_b

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_18

    :cond_b
    const/4 v4, 0x1

    :goto_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    const/4 v4, 0x0

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v4, 0x0

    :cond_e
    const-string v11, "support_nsri_secure"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v4, 0x0

    :cond_f
    invoke-interface {v10, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    :cond_10
    const/4 v11, 0x1

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    const/16 v11, 0x8

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    const/4 v11, 0x2

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    if-eqz v1, :cond_1a

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_19

    const/4 v11, 0x1

    :goto_7
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    :goto_8
    const/16 v11, 0x40

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    const-string v11, "support_nsri_secure"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    :cond_11
    const-string v11, "feature_dcm"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableDialpad(Z)V

    :cond_12
    if-eqz v6, :cond_1e

    if-eqz v2, :cond_1e

    const/4 v11, 0x1

    :goto_9
    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_1f

    if-nez v6, :cond_1f

    const/4 v11, 0x1

    :goto_a
    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    const/16 v11, 0x400

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showModifyCall(Z)V

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon(Lcom/android/services/telephony/common/Call;)Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHDVoiceIcon(Z)V

    const/16 v11, 0x200

    invoke-virtual {p2, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableGroupCall(Z)V

    const-string v11, "volte_encryption_button_eur"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "common_volte"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_13

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_20

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v11

    if-eqz v11, :cond_20

    :cond_13
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showEncryptCall(Z)V

    :cond_14
    :goto_b
    const-string v11, "ims_ui_for_kor"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateConfUI(Z)V

    :cond_15
    const-string v11, "ims_ui_for_kor"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    const-string v11, "volte_jpn_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_21

    const/4 v11, 0x1

    :goto_c
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableSwitchButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setCallState(I)V

    invoke-interface {v10}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateDiapadButton()V

    goto/16 :goto_0

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_17
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    invoke-interface {v10, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showCanCelButton(Z)V

    goto/16 :goto_5

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_8

    :cond_1b
    if-eqz v9, :cond_1d

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_1c

    const/4 v11, 0x1

    :goto_d
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_8

    :cond_1c
    const/4 v11, 0x0

    goto :goto_d

    :cond_1d
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_8

    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_20
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showEncryptCall(Z)V

    goto/16 :goto_b

    :cond_21
    const/4 v11, 0x0

    goto :goto_c
.end method


# virtual methods
.method public PromotedClicked(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PromotedClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock.uptimeMillis(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPressedButtonTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->startLiveVideo(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/incallui/CallButtonPresenter;->mPressedButtonTime:J

    goto/16 :goto_0
.end method

.method public ShareClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->startRcsSharingDialog(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method public addCallClicked()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_1
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCommandClient;->addCallMultiSim(I)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->addCall()V

    goto :goto_0
.end method

.method public captureSurfaceImage(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->captureSurfaceImage(Z)V

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/CallButtonPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonPresenter$1;-><init>(Lcom/android/incallui/CallButtonPresenter;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMemoryFullDialog()V

    :cond_2
    const-string v0, "onCaptureSurfaceImage Memory is Full"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeSideArrow(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSideArrow()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/InCallUtils;->putOneHandDirection(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->changeArrow(I)V

    :cond_0
    return-void
.end method

.method public cleanupInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallButtonPresenter;->sCallButtonPresenter:Lcom/android/incallui/CallButtonPresenter;

    return-void
.end method

.method public dialpadClicked(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->onOpenCloseDialpad(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    :cond_1
    return-void
.end method

.method public endCallClicked()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "endCallClicked"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->onEndCallButtonClicked()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutGoingOrActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableSwitchButton(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->mediaDeInit()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCurrentArrowSide()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getOneHandDirection(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getCurrentCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncomingVTSpeakerState()Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    goto :goto_0
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public getVideoRequestType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallButtonPresenter;->mRequestModifyCallType:I

    return v0
.end method

.method public getVideoResponseType()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallButtonPresenter;->mResponseModifyCallType:I

    return v0
.end method

.method public holdClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "common_volte_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "can not hold volte call"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v0, 0x7f0902e0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    goto :goto_0
.end method

.method public initIncomingVTSpeakerState()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    const-string v1, "ims_video_settings_initial_speaker"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videocall_speaker"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVTSpeakerState mImcomingVTSpeakerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingVTSperkerMode()Z
    .locals 1

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManageConferencePanelVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isManageConferencePanelVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingCall()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isEnableDialpad()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public launchContactsClicked()V
    .locals 4

    const-string v0, "launchContactsClicked"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".activities.PeopleActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->makeMultiWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mActivityLaunchAnimation:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchDuringCallMemoCliked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getCallerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_fromCallApp"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "_phoneNum"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.memo"

    const-string v3, "com.samsung.android.app.memo.Main"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->makeMultiWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mActivityLaunchAnimation:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchMemoClicked()V
    .locals 3

    const-string v0, "launchMemo"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone"

    const-string v2, "MEMO"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_memo_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.snote"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.MEMO_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public launchMessageClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchMessage, phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone"

    const-string v3, "MESG"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "support_oem_message_for_kk"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v1, "multitasking_in_call_mw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->makeMultiWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mActivityLaunchAnimation:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_2
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.android.mms"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->makeMultiWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mActivityLaunchAnimation:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public launchSwitchToVTCall()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableDialpad(Z)V

    goto :goto_0
.end method

.method public manageConferenceButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayManageConferencePanel(Z)V

    :cond_0
    return-void
.end method

.method public mergeClicked()V
    .locals 2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mergeMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    goto :goto_0
.end method

.method public muteClicked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    return-void
.end method

.method public onAudioMode(I)V
    .locals 1

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->setIncomingVTSpeakerState(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    :cond_1
    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 2

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setCallState(I)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->initIncomingVTSpeakerState()V

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/services/telephony/common/Call;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_8

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_5
    const-string v0, "feature_chn_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_6
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/services/telephony/common/Call;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    :cond_9
    iput-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto/16 :goto_0

    :cond_a
    iput-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto/16 :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 2

    const v1, 0x7f050010

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mActivityLaunchAnimation:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 3

    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutGoingOrActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateRcsElelements(Lcom/android/services/telephony/common/Call;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    const-string v1, "onUiResume"

    invoke-virtual {p0, v1}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isChangingOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    goto :goto_0
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public refreshMuteState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    goto :goto_0
.end method

.method public requestModifyCall(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestModifyCall callType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_1

    const-string v0, "dcm_volte_popup_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const v0, 0x7f090374

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->requestModifyCall(II)Z

    :cond_1
    return-void
.end method

.method public sendLiveVideo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendLiveVideo()V

    return-void
.end method

.method public sendStillImage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->sendStillImage()V

    return-void
.end method

.method public setAudioMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    return-void
.end method

.method public setButtonsVisibility(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisible("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setIncomingVTSpeakerState(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->isIncomingVTSperkerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mImcomingVTSpeakerState:Z

    goto :goto_0
.end method

.method public setVideoRequestType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/CallButtonPresenter;->mRequestModifyCallType:I

    return-void
.end method

.method public setVideoResponseType(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/CallButtonPresenter;->mResponseModifyCallType:I

    return-void
.end method

.method public showAddUserForConferenceCall()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.IMSConferenceCallActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CONF_TYPE_VOICE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v1, "ADD_USER_TO_CONF"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "DEL_USER_FRM_CONF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showSeekBar(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSeekBar(I)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingFarEndView(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->stopRecordingNearEndView(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "stopRecording : There are no recording Views"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public swapClicked()V
    .locals 2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->swapMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->switchCamera()V

    return-void
.end method

.method public toggleBluetooth()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "toggleBluetooth()..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE_OR_SPEAKER:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public toggleHold()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleHold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v3, "common_volte_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v2, "can not hold volte call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v1, 0x7f0902e0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/CallCommandClient;->holdMultiSim(IZ)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public toggleSpeakerphone()V
    .locals 3

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_2

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0
.end method

.method public updateVTCallButtons()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showStopButton(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableSwitchButton(Z)V

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHideShowButton(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showStopButton(Z)V

    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialPadButton(Z)V

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMute(Z)V

    :cond_4
    :goto_3
    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showLeftDialPadButton(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchButton(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMute(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialPadButton(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showStopButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialPadButton(Z)V

    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showLeftDialPadButton(Z)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHideShowButton(Z)V

    :cond_a
    :goto_4
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchButton(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMute(Z)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMute(Z)V

    goto :goto_4

    :cond_d
    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDecorationButton(Z)V

    goto/16 :goto_0
.end method
