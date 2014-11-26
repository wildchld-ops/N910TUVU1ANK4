.class public Lcom/android/incallui/service/OverlayPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "OverlayPopupService.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallEndBlinkCnt:I

.field private mCallIconView:Landroid/widget/ImageView;

.field private mCallStatusText:Landroid/widget/TextView;

.field private mCallTimeContainer:Landroid/view/View;

.field private mCallTimeText:Landroid/widget/Chronometer;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field private mDragModeEnable:Z

.field private mDragModeImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mOverlayCall:Landroid/widget/RelativeLayout;

.field private mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

.field private mOverlayCallVideo:Landroid/view/TextureView;

.field private mOverlayCallVideoContainter:Landroid/view/ViewGroup;

.field private mRecordIconView:Landroid/widget/ImageView;

.field private mRecordTimeContainer:Landroid/view/View;

.field private mRecordTimeText:Landroid/widget/Chronometer;

.field private mShowingCallEndBlink:Z

.field private mState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iput v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    iput-boolean v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    iput-boolean v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/incallui/service/OverlayPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/OverlayPopupService$1;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/OverlayPopupService;)V
    .locals 0
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/service/OverlayPopupService;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/service/OverlayPopupService;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/service/OverlayPopupService;Z)Z
    .locals 0
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/service/OverlayPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1
    .param p0    # Lcom/android/incallui/service/OverlayPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 3
    .param p1    # Lcom/android/incallui/CallList;

    const/16 v2, 0x65

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_3
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private goInCallScreen()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->checkDrivelink()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0    # Lcom/android/services/telephony/common/Call;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0    # Lcom/android/services/telephony/common/Call;

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "OverlayPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "OverlayPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private setCallPhoto()V
    .locals 7

    const v6, 0x7f020172

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/OverlayPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v3, "OverlayPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "OverlayPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGenericConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    const-string v3, "OverlayPopupService"

    const-string v4, "mImageView is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "usa_cdma_concept"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/incallui/service/OverlayPopupService;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v3, "ims_ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    const-string v3, "CallerImage From ContactAgent"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/incallui/service/OverlayPopupService;->getPhotoDrawable(Lcom/android/services/telephony/common/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f020171

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallPhotoVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 15

    const/4 v13, 0x2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v10

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    :cond_0
    if-ne v11, v13, :cond_2

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v6

    const-string v12, "feature_ctc"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v12

    if-ne v12, v13, :cond_1

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v6

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v12, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v0, v12, v2

    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-lez v12, :cond_3

    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v12, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v12}, Landroid/widget/Chronometer;->start()V

    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/incallui/service/OverlayPopupService;->checkCallStatus(I)V

    return-void

    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v0, v12, v8

    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v12, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    :goto_2
    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v12, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    goto :goto_1

    :cond_5
    iget-object v12, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_2
.end method

.method private setCallTypeImage()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_hd_icon"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201c4

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRecordTime()V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v6

    const-wide/16 v4, -0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v1

    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/incallui/service/OverlayPopupService;->checkCallStatus(I)V

    return-void
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const/4 v0, 0x1

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/service/OverlayPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGreenBar()V
    .locals 4

    const-string v0, "feature_skt_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OverlayPopupService"

    const-string v1, "call statusBar.showCallView()!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0201ce

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0201f2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public controlOverlayCallLayout(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public hidePopup()V
    .locals 2

    const-string v0, "OverlayPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;

    const-string v1, "OverlayPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/service/MiniModeCallService$mDragListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/MiniModeCallService$mDragListener;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, "ims_video_overlay_popup_play"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    const v2, 0x3f800054

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->showOrHideOverlayCallVideo()V

    :cond_2
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setRecordTime()V

    :cond_3
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnswerMemoUtils.isAutoAnswered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->setAnswerMemoRecordTime()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTime()V

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTypeImage()V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhotoVisibility()V

    :cond_5
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 14
    .param p1    # Landroid/widget/Chronometer;

    const-wide/32 v12, 0x36ee80

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v2, v0

    cmp-long v9, v7, v12

    if-ltz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v9, "voice_call_recording"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v4

    cmp-long v9, v4, v12

    if-ltz v9, :cond_2

    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0, v7, v8}, Lcom/android/incallui/service/OverlayPopupService;->setTTS(J)V

    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x1

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->setOverlayPopup(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/incallui/service/OverlayPopupService$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/OverlayPopupService$2;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->startReceiver()V

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->showGreenBar()V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_overlay_popup_preference"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incall overlay setting:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncomingPopup()Lcom/android/incallui/service/IncomingPopupService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setOverlayPopup(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_4
    const-string v0, "ims_video_overlay_popup_play"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_6
    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method protected onLongTouchEvent()V
    .locals 7

    const v2, 0x7f090029

    const v1, 0x7f09002a

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f090170

    const v1, 0x7f090171

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const v6, 0x7f10005a

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/incallui/service/OverlayPopupService$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/OverlayPopupService$4;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/service/OverlayPopupService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/service/OverlayPopupService$3;-><init>(Lcom/android/incallui/service/OverlayPopupService;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900fd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/incallui/service/OverlayPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x1

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "dragmode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "minimode"

    const-string v1, "dragmode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    :goto_0
    const-string v0, "OverlayPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand - mDragModeEnable =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhotoVisibility()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/service/MiniModeCallService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const/16 v4, 0x8

    const-string v1, "OverlayPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ims_video_overlay_popup_play"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->showOrHideOverlayCallVideo()V

    :cond_0
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/android/incallui/service/OverlayPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/OverlayPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mShowingCallEndBlink:Z

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->showCallEndBlink()V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnswerMemoUtils.isAutoAnswered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->showGreenBar()V

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallTime()V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V

    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->setRecordTime()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureAvailable..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onSurfaceAvailable(ILandroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->onSurfaceDestroyed(I)V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureSizeChanged..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardPresenter;->startRender(Z)V

    return-void
.end method

.method protected onTouchEvent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/OverlayPopupService;->goInCallScreen()V

    return-void
.end method

.method public setAnswerMemoRecordTime()V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v6

    const-wide/16 v4, -0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v1

    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Landroid/widget/Chronometer;->start()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/incallui/service/OverlayPopupService;->checkCallStatus(I)V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLandscapeOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQCIFOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQVGAOverlayCallVideoLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method setTTS(J)V
    .locals 17
    .param p1    # J

    const-wide/32 v13, 0x36ee80

    div-long v13, p1, v13

    long-to-int v5, v13

    const-wide/32 v13, 0x36ee80

    rem-long v13, p1, v13

    const-wide/32 v15, 0xea60

    div-long/2addr v13, v15

    long-to-int v6, v13

    const-wide/32 v13, 0xea60

    rem-long v13, p1, v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    if-eqz v5, :cond_2

    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x1

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "%d"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    const v13, 0x7f0900f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const v13, 0x7f0900f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v12, :cond_0

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v13

    const v13, 0x7f0900f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13, v1, v9}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/service/OverlayPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/service/OverlayPopupService;->mRecordTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public showCallEndBlink()V
    .locals 4

    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallEndBlinkCnt:I

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showOrHideOverlayCallVideo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    const-string v2, "OverlayPopupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideOverlayCallVideo showVideo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/OverlayPopupService;->controlOverlayCallLayout(Z)V

    if-eqz v0, :cond_5

    const-string v0, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->setQCIFOverlayCallVideoLayout()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->setQVGAOverlayCallVideoLayout()V

    goto :goto_1

    :cond_4
    const-string v0, "VGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/OverlayPopupService;->setLandscapeOverlayCallVideoLayout()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/OverlayPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public startReceiver()V
    .locals 3

    const-string v1, "OverlayPopupService"

    const-string v2, "startReceiver"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected supportEntireScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
