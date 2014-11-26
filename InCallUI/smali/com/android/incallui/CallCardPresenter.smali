.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ModifyCallListener;
.implements Lcom/android/incallui/vt/VTStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/vt/VTStateListener;",
        "Lcom/android/incallui/InCallPresenter$ModifyCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;


# instance fields
.field private ecidListener:Lcom/android/incallui/EcidClient$Listener;

.field public isResizeMenuChecked:Z

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mEndCallTime:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraFailed:Z

.field private mIsDuringMRBT:Z

.field private mIsMRBT:Z

.field public mIsShowingModifyCallPromptDialog:Z

.field private mMRBTConnectTime:J

.field private mPrevShowState:Z

.field private mPreviousCallState:I

.field private mPreviousCallType:I

.field private mPrimary:Lcom/android/services/telephony/common/Call;

.field protected mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/services/telephony/common/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private secondCallElapsedDriveLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    new-instance v0, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrevShowState:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    new-instance v0, Lcom/android/incallui/CallCardPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$4;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardPresenter;
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onEcidUpdate(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardPresenter;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardPresenter;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardPresenter;
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->updateVideoBtn(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method private areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private checkSpecialCases(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 5
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "feature_chn_cdma_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "support_awim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method private conferenceSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;
    .locals 4
    .param p1    # Lcom/android/incallui/CallList;
    .param p2    # Lcom/android/services/telephony/common/Call;
    .param p3    # Z

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v2, "feature_chn_cdma_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getGatewayLabel()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x7f0900a8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallCardPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/CallCardPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, " [DriveLink] set caller number "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "feature_chn_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isSafetyAssistanceMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

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

.method private maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowCallCardAnimation(Lcom/android/incallui/CallList;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v5

    if-eqz v5, :cond_11

    move v6, v1

    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-nez v3, :cond_d

    :cond_7
    move v5, v2

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-eq v3, v8, :cond_9

    :cond_8
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-ne v3, v8, :cond_e

    :cond_9
    move v3, v2

    :goto_5
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToShowCallCardAnimation, isPhotoAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_10

    if-nez v4, :cond_10

    if-nez v0, :cond_a

    if-eqz v6, :cond_10

    :cond_a
    if-nez v3, :cond_10

    :goto_7
    move v1, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v3, v1

    goto :goto_2

    :cond_d
    move v5, v1

    goto :goto_4

    :cond_e
    move v3, v1

    goto :goto_5

    :cond_f
    move v4, v1

    goto :goto_6

    :cond_10
    move v2, v1

    goto :goto_7

    :cond_11
    move v6, v3

    goto :goto_3
.end method

.method private needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z
    .locals 4
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private needToShowExtraVolumeBtn()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    const-string v1, "extra_volume"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallMenu.isImsRegisteredOverWifi():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disable ExtraVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needToShowMenu()Z
    .locals 7

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v6, :cond_8

    move v0, v1

    :goto_1
    const-string v3, "ims_ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "QCIF"

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2
    move v3, v1

    :goto_2
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v2

    move v0, v2

    :cond_3
    const-string v4, "support_nsri_secure"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    move v0, v2

    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_a

    move v3, v1

    move v0, v2

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    if-eqz v3, :cond_0

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v5, :cond_c

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v6, :cond_c

    move v3, v1

    goto :goto_2

    :cond_a
    move v3, v2

    move v0, v2

    goto :goto_3

    :cond_b
    move v3, v2

    move v0, v2

    goto :goto_3

    :cond_c
    move v3, v2

    goto :goto_2
.end method

.method private needToUpdatePhotoForCallState(I)Z
    .locals 2
    .param p1    # I

    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->isIncomingOrOutgoing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->isIncomingOrOutgoing(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToUpdateSecondaryInfo(I)Z
    .locals 2
    .param p1    # I

    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEcidUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->broadcastCallName(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateSecondScreen()V

    :cond_1
    return-void
.end method

.method private setCityIdUi(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCityId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showEnableCallerInfoCard(Lcom/android/incallui/CallList;)V
    .locals 9
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v5

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v4, v6, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    invoke-interface {v4, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearCallerInfoCard()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-eqz v7, :cond_5

    move v1, v5

    :goto_3
    invoke-interface {v4, v6, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_3
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2    # Z
    .param p3    # Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CallCardPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/CallCardPresenter$3;-><init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/CallIdentification;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 24

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update primary display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v11

    if-eqz p1, :cond_a

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move/from16 v8, p2

    invoke-interface/range {v1 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v5}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move/from16 v23, v0

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v19, p2

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    :cond_2
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setCityIdUi(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearCallerInfoCard()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingPopupForSecondCall(II)V

    :cond_6
    sget-boolean v2, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v2, :cond_b

    sget v2, Lcom/android/incallui/InCallUtils;->contactAgentPresence:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    const-string v2, "presenceMode From ContactAgent"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;Z)V

    sget v2, Lcom/android/incallui/InCallUtils;->contactAgentPresence:I

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPresenceIcon(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setCityIdUi(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v8, p2

    invoke-interface/range {v1 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move/from16 v19, p2

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    goto/16 :goto_3

    :cond_b
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "presenceMode From Contact"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPresenceIcon(I)V

    goto/16 :goto_0
.end method

.method private updateSecondaryDisplayInfo(Z)V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v3, "Update secondary display"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryDisplayInfo() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move v4, v6

    :goto_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v8, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move v6, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v8, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move v1, v6

    move v6, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_4
    move v3, v1

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move v8, v1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_2
.end method

.method private updateVideoBtn(Lcom/android/services/telephony/common/Call;)V
    .locals 9
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    move v2, v5

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/vt/VideoCallManager;->isLTEVideoCallMenuShow()Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_5

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v3, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v7

    sget v8, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v7, v8, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    move v0, v5

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v5, v4, v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageVideoBtn(ZZI)V

    invoke-virtual {p0, v6, v6}, Lcom/android/incallui/CallCardPresenter;->updateCallerInfoCard(IZ)V

    goto/16 :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3
.end method

.method private updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0xca

    const/16 v4, 0x64

    const/4 v3, 0x1

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, "updateVideoView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eqz v1, :cond_0

    :cond_2
    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v2, "updateVideoView : Call type is not voice"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0x12d

    invoke-interface {v0, v1, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0x12f

    invoke-interface {v0, v1, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    if-eq v1, v7, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v5, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_7
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    sget-boolean v1, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eq v1, v3, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v5, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v4, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v5, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeVideoLocation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v3, 0x12e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0
.end method

.method public cleanupInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    return-void
.end method

.method public clearAnswerMemoViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearAnswerMemoViews()V

    return-void
.end method

.method public enableCallerInfoCard(Z)V
    .locals 4
    .param p1    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extraVolumeCliked()V
    .locals 1

    const-string v0, "extraVolumeCliked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolBtn()V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateExtraVolumeButton()V

    return-void
.end method

.method protected getCapabilities(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    return v0
.end method

.method public getCurrentNumber()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentNumber  number ::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Unknown"

    :cond_1
    return-object v0
.end method

.method public getEndCallTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowingModifyCallDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    return v0
.end method

.method protected getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrevShowState()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrevShowState mPrevShowState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrevShowState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrevShowState:Z

    return v0
.end method

.method public getPrimaryCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method protected getPrimaryNameForCall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResizeChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    return v0
.end method

.method public getSecondaryCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getVideoCallDefaultResId(Lcom/android/services/telephony/common/Call;)I
    .locals 3

    const v1, 0x7f020174

    const v0, 0x7f020478

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020172

    goto :goto_0

    :cond_1
    const v0, 0x7f02016b

    goto :goto_0

    :sswitch_1
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "QCIF"

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020173

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const v0, 0x7f02047a

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public holdButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    return-void
.end method

.method public init(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V
    .locals 10
    .param p1    # Lcom/android/incallui/CallList;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    const-string v3, "Primary call is not null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "feature_chn_cdma_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "usa_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "support_awim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v7

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_5

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v3, v5}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_1
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {p2, v3, v6, v7}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    const-string v3, "common_volte_in"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v3, :cond_a

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "Secondary call is not null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    if-ne v7, v8, :cond_9

    :goto_3
    invoke-static {v3, v6, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, v5}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_7

    move v3, v4

    :goto_5
    invoke-direct {p0, v0, v4, v3}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v9, v4, v4}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3

    :cond_a
    iput-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    iput-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const-string v3, "Secondary call is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public isCameraFailed()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCameraFailed  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    return v0
.end method

.method public isIncomingOrOutgoing(I)Z
    .locals 5
    .param p1    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/16 v4, 0x14

    if-eq p1, v4, :cond_1

    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public manageConferenceButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->displayManageConferencePanel(Z)V

    return-void
.end method

.method public mergeClicked()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "mergeClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mergeMultiSim(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setOnMerge(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    :goto_1
    invoke-interface {v0, v4, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageSecondaryControlBtn(ZZZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onAudioMode(I)V
    .locals 6
    .param p1    # I

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonPresenter;->setIncomingVTSpeakerState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v0, p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCameraEvent(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideDialpadOnCameraEvent()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    const-string v0, "camera_fail_image"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndDocomoImage()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideDialpadOnCameraEvent()V

    :cond_3
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCameraFailed:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptureAndRecordEvent(I)V
    .locals 6

    const v5, 0x7f090215

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureAndRecordEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090182

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastLong(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showFarEndCaptureAnimation()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090181

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastLong(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndCaptureAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->showToastLong(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->showToastLong(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCastingEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 15
    .param p1    # Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v10

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v13, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v9, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v11, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual/range {v0 .. v11}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v14, 0x0

    :cond_0
    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v14, v4}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_1
    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callMessage = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/16 v4, 0x14

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_3
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_9

    :cond_4
    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v14, v4}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCdnipNumber(ZLjava/lang/String;)V

    :cond_5
    const-string v0, "support_nsri_secure"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/cover/CoverCall;->showPrimaryNsriSecureCallTitle(Z)V

    :cond_6
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_7
    return-void

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public onEmergencyModeChange(Z)V
    .locals 2
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateVideoBtn(Lcom/android/services/telephony/common/Call;)V

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->needToShowMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMenu(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHdVoiceStatusChange(Z)V
    .locals 1

    const-string v0, "hdvoice_call_status"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceCallIcon(Z)V

    :cond_0
    return-void
.end method

.method public onHoldCallStateChange(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHoldCallStateChange, mCall: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-direct {p0, v4, v1, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v4, v1, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-direct {p0, v4, v0, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_2
    const-string v4, "common_volte_vt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_3
    move v1, v0

    :cond_6
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_b

    :goto_4
    and-int/2addr v1, v2

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_2

    :cond_a
    move v0, v3

    goto :goto_3

    :cond_b
    move v2, v3

    goto :goto_4
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->initIncomingVTSpeakerState()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingModifyCall(I)V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingModifyCall() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateIncomingModifyCall(I)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateModifyCallRequest()V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateExtraVolumeButton()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_39

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    move-object v10, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2, v10}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v3, v10}, Lcom/android/incallui/CallCardPresenter;->conferenceSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_3e

    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v4, v1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_3f

    const/4 v4, 0x1

    :goto_4
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v5, v10}, Lcom/android/incallui/CallCardPresenter;->checkSpecialCases(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "primaryChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondaryChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conferenceChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSpecialCases="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    iput-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_2
    const-string v1, "ims_resize_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    :cond_3
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange mPreviousCallState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPrimary.getState()  = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_40

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCharge(Z)V

    :cond_4
    :goto_5
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v1, v5, v6, v7}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v1, v5, v6, v7}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_5
    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v6, :cond_68

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->needToUpdatePhotoForCallState(I)Z

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/CallCardPresenter;->needToUpdateSecondaryInfo(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget v6, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v7

    if-eq v6, v7, :cond_8

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "common_volte_hk"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    :goto_6
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceStateChanged()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "needToUpdateContactInfo = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v7, :cond_42

    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardPresenter;->needToShowCallCardAnimation(Lcom/android/incallui/CallList;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_a

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_41

    :cond_a
    const/4 v7, 0x1

    :goto_7
    invoke-interface {v0, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->startCallCardAnimation(Z)V

    :goto_8
    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_43

    const/4 v1, 0x1

    :goto_9
    invoke-static {v2, v3, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/services/telephony/common/Call;)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_c
    :goto_a
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_4e

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    :cond_d
    :goto_b
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardPresenter;->showEnableCallerInfoCard(Lcom/android/incallui/CallList;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_52

    const-string v1, "Starting the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallTimer;->start(J)Z

    :goto_c
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_54

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, v2, :cond_53

    const/4 v3, 0x1

    :goto_d
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v9

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/incallui/cover/CoverCall;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_f
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageAddCall(ZZ)V

    const-string v1, "webex_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isWebExEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showWebEx(Z)V

    :cond_10
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_55

    :cond_11
    const/4 v1, 0x1

    :goto_f
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    const/4 v2, 0x1

    :goto_10
    invoke-interface {v0, v2, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageRecordInfo(ZZ)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_57

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2, v1}, Lcom/android/incallui/cover/CoverCall;->manageRecordInfo(ZZ)V

    :cond_12
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_58

    const/4 v1, 0x1

    :goto_12
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageAnswerMemoRecord(Z)V

    :cond_13
    const-string v1, "cnap_supplementary_service"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    const/4 v1, 0x0

    :cond_14
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCnapName(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_15
    const-string v1, "ims_call_message"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_17

    :cond_16
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCnapName(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_17
    const-string v1, "cdnip_supplementary_service"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_59

    :cond_18
    const/4 v1, 0x1

    :goto_13
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCdnipNumber(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCdnipNumber(ZLjava/lang/String;)V

    :cond_19
    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showPrimaryNsriSecureCallTitle(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/cover/CoverCall;->showPrimaryNsriSecureCallTitle(Z)V

    :cond_1a
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5a

    const/4 v1, 0x1

    :goto_14
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateConfUI(Z)V

    :cond_1b
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    const/16 v1, 0x400

    invoke-virtual {v10, v1}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v1

    if-nez v1, :cond_5b

    const/4 v1, 0x1

    :goto_15
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "volte_jpn_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    :goto_16
    and-int/2addr v1, v2

    :cond_1d
    const-string v2, "common_volte_hk"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    :goto_17
    and-int/2addr v1, v2

    :cond_1e
    const-string v2, "common_volte_vt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v1

    if-nez v1, :cond_5e

    const/4 v1, 0x1

    :cond_20
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallUtils.getHoldCallState()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can modify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v10, v3}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bShowModifyCall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    :goto_19
    const-string v1, "volte_encryption_button_eur"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "common_volte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_60

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_60

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_21
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showEncryptCall(Z)V

    :cond_22
    :goto_1a
    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceIcon(ZZ)V

    const-string v1, "show_audio_codec_amr_wb"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isShowHighQualitySoundText(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHighQualitySoundText(Z)V

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isShowHighQualitySoundText(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->setPrevShowState(Z)V

    :cond_23
    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDIcon(Z)V

    const-string v1, "hdvoice_call_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->getHdVoiceStatus()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceCallIcon(Z)V

    :cond_24
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_25

    invoke-virtual {v10}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/vt/VideoCallManager;->isEPDGCall(I)Z

    move-result v1

    :cond_25
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showEpdgIcon(Z)V

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->showHDVoiceIcon(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceIcon(ZZ)V

    :cond_26
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->needToShowMenu()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMenu(Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->needToShowExtraVolumeBtn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_61

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_61

    const/4 v1, 0x1

    :goto_1b
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isKeyguardNormalLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    :cond_27
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_62

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_62

    const/4 v2, 0x1

    :goto_1c
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showDragModeButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_28
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    const-string v1, "support_second_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_29
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_2a

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->showHDVoiceIcon(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSecondaryHDVoiceIcon(ZZ)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showSecondaryVideoIcon(Z)V

    :cond_2a
    const-string v1, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->infoVoiceRecording(I)V

    :cond_2b
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingPopupForSecondCall(II)V

    :cond_2c
    const-string v1, "extended_restrict_international_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingMsgForInternationalCall(I)V

    :cond_2d
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    const-string v2, "sin_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->XSP_IsSingtel()Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x0

    :cond_2f
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    if-nez v4, :cond_63

    if-eqz v1, :cond_63

    const/4 v2, 0x1

    :goto_1d
    if-nez v4, :cond_64

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    :goto_1e
    invoke-interface {v0, v3, v2, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageSecondaryControlBtn(ZZZ)V

    :cond_30
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v6

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_65

    const/4 v1, 0x1

    move v2, v1

    :goto_1f
    if-nez v5, :cond_31

    if-eqz v6, :cond_66

    :cond_31
    const/4 v1, 0x1

    :goto_20
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageHoldBtn(ZZZZ)V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateVideoBtn(Lcom/android/services/telephony/common/Call;)V

    :cond_32
    const-string v1, "phone_number_locator"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    :cond_33
    const-string v1, "simcardname_display_incall"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCardName(I)V

    :cond_34
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "feature_display_sim_icon_on_callcard"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimarySimIconLabel(I)V

    const-string v1, "support_easy_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getEasyModeState()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setSimIdToDisplay(I)V

    :cond_36
    const-string v1, "usa_cdma_emergency_concept"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v10, :cond_37

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-interface {v0, v10, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setECMCardTitle(Lcom/android/services/telephony/common/Call;I)V

    :cond_37
    const-string v1, "eri_info_label_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v10, :cond_38

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-interface {v0, v10, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEriInfo(Lcom/android/services/telephony/common/Call;I)V

    :cond_38
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageMultiTouchStub(Z)V

    goto/16 :goto_0

    :cond_39
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_3a

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2, v1, v3}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    move-object v10, v2

    goto/16 :goto_1

    :cond_3a
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_3b

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->dismissCallRoamingGuardDialog(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    const/4 v1, 0x1

    invoke-direct {p0, p2, v2, v1}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    move-object v10, v2

    goto/16 :goto_1

    :cond_3b
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_3c

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->dismissModifyCallDialog()V

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->dismissVoLTEDialogs()V

    :cond_3c
    move-object v10, v2

    goto/16 :goto_1

    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_3e
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_3f
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_40
    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCharge(Z)V

    goto/16 :goto_5

    :cond_41
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_42
    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->stopCallCardAnimation()V

    goto/16 :goto_8

    :cond_43
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_44
    if-eqz v3, :cond_45

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_45

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto/16 :goto_a

    :cond_45
    if-eqz v8, :cond_47

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_46

    const/4 v1, 0x1

    :goto_21
    invoke-static {v2, v3, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto/16 :goto_a

    :cond_46
    const/4 v1, 0x0

    goto :goto_21

    :cond_47
    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUpdateInfo for CallState..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v2, :cond_67

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getVideoCallDefaultResId(Lcom/android/services/telephony/common/Call;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :goto_22
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/cover/CoverCall;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_48
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_a

    :cond_49
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02047b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    goto :goto_22

    :cond_4a
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_22

    :cond_4b
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02047a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    goto :goto_22

    :cond_4c
    if-eqz v6, :cond_c

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_c

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v1, :cond_4d

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_4d
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    goto/16 :goto_a

    :cond_4e
    if-nez v4, :cond_4f

    if-nez v5, :cond_4f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_4f
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_50

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    :cond_50
    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_51

    const/4 v1, 0x1

    :goto_23
    invoke-static {v2, v3, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/services/telephony/common/Call;)V

    goto/16 :goto_b

    :cond_51
    const/4 v1, 0x0

    goto :goto_23

    :cond_52
    const-string v1, "Canceling the calltime timer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v1}, Lcom/android/incallui/CallTimer;->cancel()V

    goto/16 :goto_c

    :cond_53
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_54
    const/4 v1, 0x1

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v1}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/incallui/cover/CoverCall;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_55
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_56
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_58
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_59
    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_5a
    const/4 v1, 0x0

    goto/16 :goto_14

    :cond_5b
    const/4 v1, 0x0

    goto/16 :goto_15

    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_5e
    const/4 v1, 0x0

    goto/16 :goto_18

    :cond_5f
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showOnHoldText(Z)V

    goto/16 :goto_19

    :cond_60
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showEncryptCall(Z)V

    goto/16 :goto_1a

    :cond_61
    const/4 v1, 0x0

    goto/16 :goto_1b

    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_64
    const/4 v1, 0x0

    goto/16 :goto_1e

    :cond_65
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_1f

    :cond_66
    const/4 v1, 0x0

    goto/16 :goto_20

    :cond_67
    move-object v2, v1

    goto/16 :goto_22

    :cond_68
    move v11, v1

    move v1, v5

    move v5, v11

    goto/16 :goto_6
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->supportedAudioModeChanged()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(ILandroid/graphics/SurfaceTexture;II)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceAvailable"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :pswitch_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->setCurrentOrientation()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 3
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->addListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->showGuidancePlayingView()V

    :cond_4
    :goto_0
    const-string v0, "support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->showAnswerMemoRecordingView()V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 5

    const/4 v3, 0x0

    const-string v2, "onUiResume"

    invoke-virtual {p0, v2}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    const-string v2, "mini_popup_call_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isKeyguardNormalLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4

    const/4 v1, 0x1

    :goto_0
    const-string v2, "support_second_screen"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isVoiceControlOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCommandClient;->shouldVibrate()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_2
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->showGuidancePlayingView()V

    :goto_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "support_second_screen"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->showAnswerMemoRecordingView()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearAnswerMemoViews()V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->needToShowExtraVolumeBtn()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->needToShowMenu()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMenu(Z)V

    goto :goto_1
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->removeListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onVideoCallEvent(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->hideDialpadOnCameraEvent()V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setFarFrameReady(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateFarEndPreparingAnimationImage(Z)V

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/vt/VTCallUtils;->IsTelkomSelIndonesiaOperator(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0

    :cond_4
    const-string v0, "onStateChanged: keep current Call state for special operator of Exception handling[H324M_VT_PROTOCOL_ERR_IND]"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_6
    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 0
    .param p1    # I
    .param p2    # Lsiso/vt/VideoTelephonyData;

    return-void
.end method

.method public onWBModeChange(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDIcon(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHighQualitySoundText(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isShowHighQualitySoundText(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardPresenter;->setPrevShowState(Z)V

    goto :goto_0
.end method

.method public requestModifyCall(I)Z
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

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->requestModifyCall(II)Z

    move-result v0

    return v0
.end method

.method public secondCallElapsed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    return-void
.end method

.method public setActionMemoFilePath(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setActionMemoFilePath(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setActionMemoFilePath(ILjava/util/ArrayList;)V
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setActionMemoFilePath(ILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setEndCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    return-void
.end method

.method public setIncomingHideShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "camera is not allowed, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f090149

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    goto :goto_1
.end method

.method public setIsShowingModifyCallDialog(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/cover/CoverCall;->updateModifyCallState(Z)V

    :cond_0
    return-void
.end method

.method public setPrevShowState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrevShowState status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrevShowState:Z

    return-void
.end method

.method public setResizeChecked(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    return-void
.end method

.method public setSurfaceViewSwipe(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setSurfaceViewSwipe(Z)V

    :cond_0
    return-void
.end method

.method public showAnswerMemoRecordingView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnswerMemoRecordingView()V

    return-void
.end method

.method public showCallerInfoCard(Z)V
    .locals 3
    .param p1    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    :cond_0
    return-void
.end method

.method public showGuidancePlayingView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showGuidancePlayingView()V

    return-void
.end method

.method public startRender(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->startRender(Z)V

    :cond_0
    return-void
.end method

.method public swapClicked()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "swapClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->swapMultiSim(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setSuppService(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoBtn(Lcom/android/services/telephony/common/Call;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateModifyPannel()V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 9

    const/4 v5, 0x2

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v1, "vt_multimedia_ringback_tone_timer"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    if-eqz v1, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v1}, Lcom/android/incallui/CallTimer;->cancel()V

    :goto_0
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateRecordTime()V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateAnswerMemoRecordTime()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverCall;->updateRecordTime()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v1

    const-string v3, "feature_chn_cdma_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v1

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-string v3, "vt_multimedia_ringback_tone_timer"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    sub-long/2addr v1, v3

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_a

    div-long v3, v1, v7

    invoke-static {v3, v4, v6}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v3}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    div-long v4, v1, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v1, v2}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    :cond_7
    iget-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    if-eqz v3, :cond_8

    div-long/2addr v1, v7

    invoke-static {v1, v2, v6}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondCallElapsedTime(ZLjava/lang/String;)V

    :cond_8
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getLineCtrlEvent()B

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setLineControlEvent(B)V

    :cond_9
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v3

    sub-long/2addr v1, v3

    div-long v3, v1, v7

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryCallElapsedTime(ZLjava/lang/String;J)V

    goto/16 :goto_0

    :cond_a
    div-long v3, v1, v7

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    goto :goto_1

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryCallElapsedTime(ZLjava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public updateCallerInfoCard(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallerInfoCard(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    return-void
.end method

.method public updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2    # Z
    .param p3    # Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 1

    const-string v0, "updateExtraVolumeButton"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateExtraVolumeStatus()V

    :cond_0
    return-void
.end method

.method public updateVideoView()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method
