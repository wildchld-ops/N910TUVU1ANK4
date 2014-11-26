.class public Lcom/android/incallui/EndCallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "EndCallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field public static fromEndcallDriveLink:Z

.field public static fromMWEndcallDriveLink:Z

.field private static sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mForceFinishActivity:Z

.field private mPreviousMuteState:Z

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mShowGenericMerge:Z

.field private mShowManageConference:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    sput-boolean v0, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousMuteState:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mShowGenericMerge:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mShowManageConference:Z

    iput-boolean v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method private getContactInfo()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/EndCallButtonPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/EndCallButtonPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/EndCallButtonPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPersonId()J
    .locals 5

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    :cond_0
    return-wide v1
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_0

    const-string v2, "emergency_find_lost_phone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private requestDisableAllButtons()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableAllButtons(Z)V

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->setVisible(Z)V

    const-string v2, "Updating call UI for call: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Updating call UI for call: isVisible = "

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/EndCallButtonPresenter;->updateEndCallButtonDisplayInfo(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cleanupInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/EndCallButtonPresenter;->sEndCallButtonPresenter:Lcom/android/incallui/EndCallButtonPresenter;

    return-void
.end method

.method public createContactClicked()V
    .locals 7

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v4, :cond_1

    const-string v5, "feature_cnam"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move-object v0, v3

    const-string v2, " "

    :goto_0
    const-string v5, "name"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "data2"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "data3"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "sip"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_1
    const/high16 v5, 0x30000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v5, "phone"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public ipCallClicked()V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "ipcall"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v8, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDefaultSimForVoiceCalls()I

    move-result v2

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.sim.state2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "simSlot"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    if-ne v2, v8, :cond_1

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    const-string v5, "simSlot"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/EndCallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/android/incallui/InCallUtils;->getCallForUpdateEndCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/EndCallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isCoverLEDClosed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "call time of Cover LED: "

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.phone.action.ACTION_CALL_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "calldurationmillis"

    iget-object v2, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->onUiReady(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->onUiUnready(Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method requestUpdateDueToContactQuery(I)V
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->getVisibile()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/EndCallButtonPresenter;->updateEndCallButtonDisplayInfo(I)V

    goto :goto_0
.end method

.method public sendDrivelinkMessageClicked()V
    .locals 12

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getContactInfo()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    const-string v2, "com.sec.android.automotive.drivelink"

    const-string v1, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    const-string v5, "userfirstname"

    const-string v6, "userlastname"

    const-string v4, "userdisplayname"

    const-string v7, "usernumber"

    const-string v3, "userbitmap"

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v9, "usernumber"

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "userfirstname"

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.automotive.drivelink"

    const-string v11, "com.sec.android.automotive.drivelink.message.MessageComposerActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, v8}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public sendMessageClicked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVoiceCall()Z

    move-result v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/incallui/CallCommandClient;->setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "support_oem_message_for_kk"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public updateEndCallButtonDisplayInfo(I)V
    .locals 19
    .param p1    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const-string v3, "20"

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_pcw_enabled"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v17, "20"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    :cond_2
    if-eqz v4, :cond_4

    iget-boolean v7, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-boolean v5, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v17, v0

    sget v18, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    iget v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move/from16 v17, v0

    sget v18, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_1
    const-string v17, "support_safetycare"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->isSafetyAssistanceMode(Landroid/content/Context;)Z

    move-result v9

    :cond_5
    const-string v17, "isEmergency : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v17, "contactExists : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v17, "isNumberExists : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v17, "islockPcw : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v17, "isSafetyAssistanceMode : "

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez v7, :cond_d

    if-eqz v8, :cond_d

    if-nez v11, :cond_d

    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_e

    if-nez v9, :cond_e

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showSaveButtonFrame(Z)V

    if-eqz v6, :cond_f

    if-nez v5, :cond_f

    if-nez v9, :cond_f

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showCreateContact(Z)V

    if-eqz v6, :cond_10

    if-nez v5, :cond_10

    if-nez v9, :cond_10

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showUpdateExisting(Z)V

    if-eqz v6, :cond_11

    if-eqz v5, :cond_11

    if-nez v9, :cond_11

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showViewContact(Z)V

    invoke-interface {v15, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableCreateContact(Z)V

    invoke-interface {v15, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableUpdateExisting(Z)V

    invoke-interface {v15, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableViewContact(Z)V

    invoke-interface {v15, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableSendMessage(Z)V

    invoke-interface {v15, v6}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableVoiceCall(Z)V

    const-string v17, "us_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    const-string v17, "att_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    :cond_6
    const-string v17, "common_volte_vt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showVideoCall(Z)V

    :goto_7
    if-nez v7, :cond_17

    if-eqz v8, :cond_17

    if-nez v11, :cond_17

    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableVideoCall(Z)V

    const-string v17, "feature_lgt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableVideoCall(Z)V

    :cond_7
    const-string v17, "ims_rcs"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_8
    const-string v17, "ip_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    if-nez v7, :cond_18

    if-eqz v8, :cond_18

    if-nez v11, :cond_18

    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->enableIpCall(Z)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-interface {v15}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->updateEndCallButtonDrawable()V

    const-string v17, "emergency_find_lost_phone"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/InCallUtils;->isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallCommandClient;->isFindService()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showAllButtons(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/EndCallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    move-object/from16 v17, v0

    const/16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v13

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/android/incallui/vt/VideoCallManager;->isServiceRegistered(I)Z

    move-result v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showVideoCall, modifyCall : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / isVTReg: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v6, :cond_13

    if-eqz v13, :cond_13

    if-eqz v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_13

    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showVideoCall(Z)V

    goto/16 :goto_7

    :cond_13
    const/16 v17, 0x0

    goto :goto_a

    :cond_14
    const-string v17, "ims_ui_for_kor"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "common_volte_vt"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showVideoCall(Z)V

    goto/16 :goto_7

    :cond_15
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DISALBLE: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "video_call_disable"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, "video_call_disable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_16

    const/16 v17, 0x1

    :goto_b
    move/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/android/incallui/EndCallButtonPresenter$CallButtonUi;->showVideoCall(Z)V

    goto/16 :goto_7

    :cond_16
    const/16 v17, 0x0

    goto :goto_b

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_9
.end method

.method public updateExistingClicked()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "hidecreatelabel"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sip"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phone_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public videoCallClicked()V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "videocall"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-boolean v8, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallCommandClient;->setCallManagerAudioMode()V

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v8, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDefaultSimForVoiceCalls()I

    move-result v2

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.sim.state2"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "simSlot"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    if-ne v2, v8, :cond_1

    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    const-string v5, "simSlot"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public viewContactClicked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPersonId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/EndCallButtonPresenter;->mForceFinishActivity:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x30000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public voiceCallClicked()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked(I)V

    return-void
.end method

.method public voiceCallClicked(I)V
    .locals 11
    .param p1    # I

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->requestDisableAllButtons()V

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const-string v6, "roaming_auto_dial"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: Roaming area before - phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVoiceCall()Z

    move-result v1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/android/incallui/CallCommandClient;->setEndCallNumberForLGTRAD(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: Roaming area after - phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/incallui/Presenter;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v6, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    if-eqz v6, :cond_2

    const-string v6, "setFromEndButtonDriveLink"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v10, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    :cond_2
    sget-boolean v6, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    if-eqz v6, :cond_3

    const-string v6, "setFromMWEndButtonDriveLink"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v10, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    :cond_3
    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ltz p1, :cond_6

    const-string v6, "simSlot"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallCommandClient;->setCallManagerAudioMode()V

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v6

    if-le v6, v9, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDefaultSimForVoiceCalls()I

    move-result v3

    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gsm.sim.state2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_8

    const-string v6, "PIN_REQUIRED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "PUK_REQUIRED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_7
    const-string v6, "simSlot"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    if-ne v3, v9, :cond_4

    const-string v6, "PIN_REQUIRED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "PUK_REQUIRED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_9
    const-string v6, "simSlot"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public voiceCallLongClicked()V
    .locals 5

    const-string v2, "support_multimedia_caller_id"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonPresenter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.PhotoRingScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "dest_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/incallui/EndCallButtonPresenter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
