.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;,
        Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;,
        Lcom/android/incallui/InCallActivity$AutoAnsTimer;,
        Lcom/android/incallui/InCallActivity$InCallActivityMenu;
    }
.end annotation


# instance fields
.field private isAnswerMemoForceStart:Z

.field private isFromPopupAnsweringMessage:Z

.field private mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

.field private mAnyScreenChangeObserver:Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;

.field private mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

.field private mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

.field private mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

.field private mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

.field mCoverBlinder:Landroid/widget/FrameLayout;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogResId:I

.field private mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

.field private mGotoMiniMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mInCallActivityMenu:Landroid/widget/PopupMenu;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mIsAppSwitchSystemKeyEventRequested:Z

.field private mIsCameraOff:Z

.field private mIsDialpadShow:Z

.field private mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field mIsMultiWindow:Z

.field private mLocked:Z

.field mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mOrientation:I

.field private mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

.field private mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

.field private mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

.field private mRotationEnabledObserver:Landroid/database/ContentObserver;

.field private mShowDialpadRequested:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTtyNotificationDialog:Landroid/app/AlertDialog;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private msetAnyScreenStatusObserverState:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindow:Z

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mGotoMiniMode:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mLocked:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsDialpadShow:Z

    new-instance v0, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/InCallActivity$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/InCallActivity$16;-><init>(Lcom/android/incallui/InCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnyScreenChangeObserver:Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallActivity;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->startLockScreenDuringCallService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->divertToVoiceCall(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateFragmentManagers()V

    return-void
.end method

.method private checkIntentFromAnsweringMachine(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isFromPopupAnsweringMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    :goto_1
    const-string v0, "isAnswerMemoForceStart"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isAnswerMemoForceStart"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    goto :goto_0
.end method

.method private destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideMiniModeInCallUi()V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopService()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    :cond_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/EndCallButtonFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    :cond_8
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->unregister(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_9
    const-string v0, "support_drive_link"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_a
    const-string v0, "show_audio_codec_amr_wb"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "phoneapp.amrwb.simulation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopAmrBandTimer()V

    :cond_b
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    return-void
.end method

.method private dimissDialogOnStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    const v1, 0x7f090021

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    goto :goto_0
.end method

.method private dismissTtyNotificationOnFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private divertToVoiceCall(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "divertToVoiceCall: toVoLTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_2

    const-string v1, "divertToCSVoiceCall"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    sget-boolean v1, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    if-eqz v1, :cond_3

    const-string v1, "setFromEndButtonDriveLink"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    sput-boolean v5, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    :cond_3
    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    sget-boolean v1, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    if-eqz v1, :cond_1

    const-string v1, "setFromMWEndButtonDriveLink"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    sput-boolean v5, Lcom/android/incallui/EndCallButtonPresenter;->fromMWEndcallDriveLink:Z

    goto :goto_1
.end method

.method private getPreviousUserMode()I
    .locals 3

    const-string v0, "persona"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getPhoneCaller()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousUserMode - previousUserMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I
    .locals 3

    const v0, 0x7f090025

    const/4 v1, -0x1

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v2, :cond_1

    const v0, 0x7f090022

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v2, :cond_2

    const v0, 0x7f090021

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v2, :cond_3

    const v0, 0x7f090023

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v2, :cond_4

    const v0, 0x7f090024

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq p1, v2, :cond_0

    const-string v2, "dcm_dsac_feature"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v2, :cond_5

    const-string v1, "getResIdForDisconnectCause() cause is CDMA_ACCESS_BLOCKED"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v0, :cond_6

    const v0, 0x7f09030a

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->WIFI_OUT_OF_FOOTPRINT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v0, :cond_7

    const v0, 0x7f090382

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->okToDialDtmfTones()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideMiniModeInCallUi()V
    .locals 4

    const-string v0, "hideMiniModeInCallUi"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideOverlayPopup()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    const-string v0, "initViews()..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->initView()V

    :cond_0
    return-void
.end method

.method private initializeInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/CallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/EndCallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/EndCallButtonFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/incallui/AnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/incallui/DialpadFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/DialpadFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceManagerFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    :cond_5
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InCallActivity.show_dialpad"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    :cond_0
    return-void
.end method

.method private isScreenTypeLandscape()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const/4 v0, 0x0

    const-string v3, "us_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoQvgaLandCall()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isScreenTypeSensor(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "common_volte_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSModifyVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "volte_cvo_feature"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCVOEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScreenTypeSensor "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string v0, "isScreenTypeSensor disabled since cvo is false"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemKeyEventRequested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private okToDialDtmfTones()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v2, :cond_2

    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2, v1}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutGoingOrActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[okToDialDTMFTones] okToDial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method private onDialogDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method private registerAnyScreenStatusObserver()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mAnyScreenChangeObserver:Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "registerAnyScreenStatusObserver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    :cond_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAnyScreenStatusObserver(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnyScreenStatusObserver enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oldState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->msetAnyScreenStatusObserverState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->msetAnyScreenStatusObserverState:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->msetAnyScreenStatusObserverState:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->registerAnyScreenStatusObserver()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->unregisterAnyScreenStatusObserver()V

    goto :goto_0
.end method

.method private setMultiWindowForDriveLinkNaviMode()V
    .locals 5

    const v4, 0x7f0d0209

    const v3, 0x7f0d0207

    const/4 v2, 0x1

    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private shouldShowOverlayPopup(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v1, "feature_skt_tphone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.nttdocomo.android.kidsmode"

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUtils;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.rcs.share.ContentShareActivity"

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCallFailDialog(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCallFailDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090029

    new-instance v2, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v2, p0, p2}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002a

    new-instance v2, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput p1, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    const-string v0, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const-string v1, "SERR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f10005a

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090029

    new-instance v2, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput p1, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    const-string v0, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const-string v1, "SERR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showGreenBar(Z)V
    .locals 4

    const/16 v3, 0xa0

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
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    if-nez v0, :cond_0

    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call statusBar.showCallView()!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0
.end method

.method private showIMSErrorDialog(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090029

    new-instance v2, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    const-string v0, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const-string v1, "SERR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIMSErrorDialog_Divert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090170

    new-instance v2, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090171

    new-instance v2, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mDialogResId:I

    const-string v0, "sendStartUpErrorViaATCommand"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const-string v1, "SERR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showIMSErrorToast(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method private showMiniModeInCallUi(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->shouldShowOverlayPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mGotoMiniMode:Z

    if-eqz v0, :cond_2

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->blockToUpdate(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->miniModeKeyUpdate(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateSecondScreen()V

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mGotoMiniMode:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    new-instance v0, Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AutoAnsTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startLockScreenDuringCallService()V
    .locals 4

    const/16 v1, 0xa3

    const/4 v3, 0x1

    const-string v0, "startLockScreenDuringCallService"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, "stopService LockScreenDuringCall..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-nez v0, :cond_3

    const-string v0, "- is not foreground"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "- is not offhook"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v0, v1, :cond_5

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v0, v1, :cond_5

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- audioMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const-string v0, "- startService LockScreenDuringCall..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private unregisterAnyScreenStatusObserver()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mAnyScreenChangeObserver:Lcom/android/incallui/InCallActivity$AnyScreenChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "unregisterAnyScreenStatusObserver"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Observer not registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFragmentManagers()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mEndCallButtonFragmentManager:Lcom/android/incallui/EndCallButtonFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/EndCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/EndCallButtonFragment;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    :cond_5
    return-void
.end method

.method private updateScreenOrientation(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenOrientation: newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenOrientation : nextOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RequestedOrientaiton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallActivity;->updateScreenType(Landroid/content/res/Configuration;)Z

    move-result v1

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    if-ne v2, v0, :cond_1

    if-nez v1, :cond_1

    const-string v0, "call updateFragmentManagers"

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateFragmentManagers()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "updateScreenOrientation: Update with new orientaton"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->configurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/rcs/RcsInvitation;->setOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public answeringMode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->stopCallCardAnimationForMemoRecording()V

    :cond_0
    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->onAnswer()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->showGuidancePlayingView()V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->showCallerInfoCard(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->resetAutoAnsTimer()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f090307

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public changeCameraPreviewState(Z)V
    .locals 2

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[changeCameraPreviewState] isCameraOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSetPreviewOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    goto :goto_0
.end method

.method public changeSideDialPad(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment;->onChangeSideDialPad(I)V

    :cond_0
    return-void
.end method

.method public clearDigits()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/DialpadPresenter;->getInstance()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->clearDigits()V

    return-void
.end method

.method public dismissDialogForDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->dismissControlPopup()V

    :cond_1
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 2

    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogues()V

    :cond_1
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 2

    const/16 v1, 0xa2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    :cond_1
    return-void
.end method

.method public dismissSoundEQDialog()V
    .locals 2

    const-string v0, "dismissSoundEQDialog"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.callsettings.ACTION.SENT_CLOSE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialpad(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-nez v3, :cond_1

    const-string v0, "mDialpadFragmentManager is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3, p1}, Lcom/android/incallui/DialpadFragmentManager;->setDialpadOpen(Z)V

    if-eqz p1, :cond_c

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragment;->setupKeypadLayout()V

    if-eqz p2, :cond_a

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/DialpadFragment;->setVisibleByAninmation(Z)V

    :cond_2
    :goto_2
    if-eqz v0, :cond_b

    const-string v2, "mini_popup_call_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallCardFragment;->enableMiniModeButton(Z)V

    :cond_3
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallButtonFragmentManager;->updateCallButtonFragment(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->updateDiapadButton()V

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    :cond_7
    const-string v2, "clear_dialpad_digits"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/DialpadFragment;->clearDigits()V

    :cond_8
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragment;->updateSimButtonTabUI()V

    :cond_9
    const-string v2, "prohibit_candid_shot"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsDialpadShow:Z

    if-eqz p1, :cond_13

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->setCameraStateOff()V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallButtonFragment;->setVisibleByDialpad(Z)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz p2, :cond_10

    const-string v3, "ims_ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAliveVideoCall()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    :cond_d
    :goto_4
    if-eqz v0, :cond_11

    const-string v3, "mini_popup_call_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallCardFragment;->enableMiniModeButton(Z)V

    :cond_e
    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto/16 :goto_3

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/DialpadFragment;->setVisibleByAninmation(Z)V

    goto :goto_4

    :cond_10
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    goto :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/CallButtonFragment;->setVisibleByDialpad(Z)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->changeCameraPreviewState(Z)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->setCameraStateOn()V

    goto/16 :goto_1

    :cond_14
    const-string v0, "isScreenOn is false"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    move v0, v2

    goto/16 :goto_0
.end method

.method public displayManageConferencePanel(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    :cond_0
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/CallCardVoiceFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/incallui/CallCardVoiceFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardVoiceFragment;->hideViewForFolder(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isManageConferencePanelVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/incallui/CallCardVoiceFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/incallui/CallCardVoiceFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardVoiceFragment;->hideViewForFolder(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish().  Dialog showing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->manageTurnOnFlag(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showCoverBlinder(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hasPendingErrorDialog()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->hasPendingDialogs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissSoundEQDialog()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->getPreviousUserMode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideMiniModeInCallUi()V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initViews()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->dismissTtyNotificationOnFinish()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish - moveTaskToBack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAnsRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method protected getProperOrientation(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isScreenTypeSensor(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->isScreenTypeLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    return v0
.end method

.method public getRcsInvitation()Lcom/android/incallui/rcs/RcsInvitation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    return-object v0
.end method

.method public getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method public goSoundEQDialog()V
    .locals 3

    const-string v0, "goSoundEQDialog"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone"

    const-string v2, "SEQD"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.SoundEQDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public handleCshInfo(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public handleError(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isCshTopMostActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f0901c8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0901c9

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0901ca

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0901cb

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0901c6

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0901c7

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0901cc

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0901cd

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0901ce

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0901cf

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public handleIMSCallFailError()V
    .locals 6

    const/4 v2, 0x1

    const-string v0, "handleIMSCallFailError"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->getIMSCallFailErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/vt/PSVTCallUtils;->canHandleIMSCallFailError()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "handleIMSCallFailError: already done"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    const-string v1, "noti_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toVoLTE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "show_endscreen"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showIMSErrorToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "ims_support_uicc_mobility"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showIMSErrorToast(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->divertToVoiceCall(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showIMSErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "ims_support_uicc_mobility"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/InCallActivity;->showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    const-string v0, "ims_support_uicc_mobility"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->divertToVoiceCall(Ljava/lang/String;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleIncommingIMandFT(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleInvitation(ZLandroid/content/Intent;)V
    .locals 2

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->onNewIncomingRcsSession(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleRcsAction(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.rcs.intent.action.CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    const-string v3, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_INTENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "com.samsung.rcs.intent.action.ADD_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->addCall()V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.rcs.intent.action.NOTES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.samsung.rcs.intent.action.SIM_SERVICES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.start_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v0, "com.samsung.rcs.intent.action.NOISE_REDUCTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleNoiseReduction()V

    goto :goto_0

    :cond_6
    const-string v0, "com.samsung.rcs.intent.action.BLUETOOTH_HANDSET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    :cond_7
    const-string v0, "com.samsung.rcs.intent.action.INIT_SPEAKER_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_8
    const-string v0, "com.samsung.rcs.intent.action.UPDATE_PROXIMITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    goto :goto_0

    :cond_9
    const-string v0, "com.samsung.rcs.intent.action.ACTION_RCS_SPEAKER_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.samsung.rcs.intent.action.SPEAKER_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    :cond_c
    const-string v0, "com.samsung.rcs.intent.action.MUTE_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "com.samsung.rcs.intent.action.MUTE_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "com.samsung.rcs.intent.action.END_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "com.samsung.rcs.intent.action.ACTION_LAUNCH_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->showMiniModeInCallUi(I)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideMiniModeInCallUi()V

    goto/16 :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    return v0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->setPrimaryCallElapsedTimeForDialpad(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public hideDialpadForModifyCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    :cond_0
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->isDialpadOpen()Z

    move-result v0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isManageConferencePanelVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragmentManager:Lcom/android/incallui/ConferenceManagerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "multitasking_in_call_mw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindow:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiWindowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsMultiWindow:Z

    :cond_1
    return v0
.end method

.method public isPenMultiWindow()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x800

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Caught : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isTopActivityRunning(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public manageTurnOnFlag(Z)V
    .locals 4

    const/high16 v3, 0x200000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissTurnOnFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v0

    if-ne v0, v6, :cond_2

    const-string v0, "autoredial_mode_sim2"

    invoke-static {v0, v7}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-static {p0, p1}, Lcom/android/incallui/vt/VTCallUtils;->isDisconnectedCauseForCallFailOption(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const-string v0, "vt_call_fail_fallback"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "usecall_fail_option"

    invoke-static {v0, v6}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-static {p0, p1}, Lcom/android/incallui/vt/VTCallUtils;->getCallFailMsg(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/InCallActivity;->showCallFailDialog(ILjava/lang/String;)V

    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne v1, v2, :cond_4

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "autoredial_mode"

    invoke-static {v0, v7}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f0901a4

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    goto :goto_2
.end method

.method public onAnswerMemoRecorderStateChanged()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageAnswerMemoRecord(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onBackPressed()..."

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->showCoverBlinder(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DRIVELINK] BackKey pressed!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonFragment;->showSwitchButton(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isManageConferencePanelVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallActivity;->displayManageConferencePanel(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->closeDrawer()V

    :cond_4
    const-string v0, "Consume Back press for an incoming call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "hw_home_key"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "Consume Back press for calling"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->updateScreenOrientation(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setChangingOrientation(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "VerificationLog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0xc288000

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xc688000

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "samsung_screen_timeout_incall"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x7530

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v1, 0x4e20

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lp.userActivityTimeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lp.screenDimDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindow().setAttributes(lp) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "18"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v4}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6}, Lcom/android/incallui/InCallActivity;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mLocked:Z

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStateChangeListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    iget v0, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0e0164

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCoverBlinder:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startService()V

    :cond_6
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService()V

    :cond_7
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallDUOSUIControl;->initialize(Lcom/android/incallui/InCallActivity;)V

    :cond_8
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;-><init>(Lcom/android/incallui/rcs/RcsBroadcastReceiver$RcsActionHandler;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsBroadcastReceiver:Lcom/android/incallui/rcs/RcsBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/incallui/rcs/RcsBroadcastReceiver;->register(Landroid/content/Context;)V

    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rcs/RcsInvitation;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    :cond_9
    const-string v0, "yellowpage_callerid_info"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/incallui/YellowPageCallerid;->unInitialize_3rdlib()V

    :cond_a
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "isFromPopupAnsweringMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    :goto_0
    if-eqz v0, :cond_f

    const-string v1, "isAnswerMemoForceStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "isAnswerMemoForceStart"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    :cond_d
    :goto_1
    const-string v0, "InCallActivity"

    const-string v1, "onCreate() exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    goto :goto_0

    :cond_f
    iput-boolean v5, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->destroy()V

    const-string v0, "t_all"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->isCameraAppRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->moveCameraTaskToFront()Ljava/lang/Boolean;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isAnyKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "disable_camera_in_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Volume key : incoming call is ringing!return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    sget-boolean v0, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_0
        0x4c -> :sswitch_6
        0x5b -> :sswitch_5
        0xa4 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xa9 -> :sswitch_3
        0x101 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->isMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v1}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KEYCODE_MENU showInCallMenu"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->showInCallBanner()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onModeChanged(Z)V
    .locals 5

    const/16 v4, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onModeChanged : isMultiWindowMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallPresenter;->windowStatusChanged(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    const-string v0, "hide_penwindow_indicator_area"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setIndicatorVisible(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->setupKeypadLayout()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->updateButtonLayoutByPenMultiWindow()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setIndicatorVisible(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EXTRA_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->checkIntentFromAnsweringMachine(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    const/16 v7, 0xa3

    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "InCallActivity"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    const-string v0, "lock"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    const-string v0, "pause MissingPhoneLock TRUE "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_1
    :goto_0
    const-string v0, "ota_mode_disable_expand"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDomesticOtaStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const-string v0, "resume mDomesticOtaStart StatusBarManager.DISABLE_NONE in pause"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissInCallMenu()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Lcom/android/incallui/rcs/RcsShareUI;->unRegisterRcsObserver(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_INACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    const-string v0, "stopService LockScreenDuringCall..."

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    :cond_6
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isFromNoti()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->holdVideo()V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isFromNoti()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeldRemote()Z

    move-result v0

    if-ne v0, v4, :cond_9

    :cond_9
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->setAnyScreenStatusObserver(Z)V

    return-void

    :cond_a
    const-string v0, "support_drive_link"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DRIVELINK] REQUESTSYSTEMKEYEVENT FALSE in pause"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0
.end method

.method public onRecorderStateChanged()V
    .locals 8

    const/16 v7, 0x14

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecorderStateChanged - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v0, v7, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v5, :cond_e

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v0, "callForwarding is enabled or in encryption mode, disable record button"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    :cond_2
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    const-string v3, "support_nsri_secure"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_4
    move v0, v1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_f

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->resumeRecord()V

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v7, :cond_7

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_11

    :cond_7
    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v5, v1, v3}, Lcom/android/incallui/CallCardFragment;->manageRecordInfo(ZZ)V

    :cond_9
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "voice_call_recording_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "voice_call_recording_easy_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonFragment;->showRecord(Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonFragment;->enableRecord(Z)V

    :cond_b
    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showRecordToast()V

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    :cond_d
    return-void

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v7, :cond_10

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_6

    :cond_10
    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->pauseRecord()V

    goto/16 :goto_1

    :cond_11
    move v3, v1

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 8

    const/16 v7, 0xa1

    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "VerificationLog"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InCallActivity"

    const-string v3, "onResume()..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    sput-boolean v2, Lcom/android/incallui/InCallUtils;->isVoLTEShowMeHideScreenState:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->getVideoHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onResume resumeVideo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->resumeVideo()V

    :cond_1
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/vt/VideoCallManager;->setVideoHeld(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->isFromNoti()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallApp;->setIsFromNoti(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "setSystemBarNavigationEnabled(false)..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideMiniModeInCallUi()V

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->setCameraStateOn()V

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "onCoverStateChanged(true)..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onCoverStateChanged(Z)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->updateScreenType(Landroid/content/res/Configuration;)Z

    move-result v3

    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-ne v0, v1, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    if-nez v0, :cond_18

    if-ne v4, v1, :cond_18

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_19

    if-eqz v3, :cond_19

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setChangingOrientation(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    :cond_a
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->updateAppSwitchSystemKeyEvent(Z)V

    const-string v0, "force_turn_on_screen_for_new_incoming"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "posting TURN_ON_SCREEN_FOR_NEW_INCOMING message..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    :goto_2
    const-string v0, "lock"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v0, :cond_1b

    const-string v0, "resume MissingPhoneLock TRUE "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1770000

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_3
    const-string v0, "ota_mode_disable_expand"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDomesticOtaStart:Ljava/lang/String;

    const-string v0, "true"

    iget-object v3, p0, Lcom/android/incallui/InCallActivity;->mDomesticOtaStart:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v5, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallActivity;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mLocked:Z

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v3, 0x470000

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_e
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v1}, Lcom/android/incallui/rcs/RcsShareUI;->registerRcsObserver(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.mediatransfer.contentshare.notification.PHONE_ACTIVE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.rcs.framework.mediatransfer.contentshare.notification"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/incallui/rcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    :cond_10
    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->sendLockScreenEvent()V

    :cond_11
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtyNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "tty notification for incoming call, show!"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->onTtyNotification(Z)V

    :cond_12
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->setAnyScreenStatusObserver(Z)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->showCallerInfoCard(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMiniModeButton(Z)V

    :cond_13
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    :cond_14
    :goto_4
    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v1}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->blockToUpdate(Z)V

    invoke-static {v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->miniModeKeyUpdate(Z)V

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doClose()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getDragModeViewVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.NOTIFY_STOP_SMARTCLIP_DRAGDROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setDragModeViewVisible(Z)V

    :cond_15
    const-string v0, "support_drive_link"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "check Drivelink again because of Emergency mode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->checkDrivelink()V

    :cond_16
    const-string v0, "t_all"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->isCameraAppRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->moveCameraTaskToBack()Ljava/lang/Boolean;

    :cond_17
    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onResume()... done."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_18
    move v0, v2

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_1

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "normalWindow()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->normalWindow()V

    goto/16 :goto_2

    :cond_1b
    const-string v0, "support_drive_link"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    const-string v0, "[DRIVELINK] REQUESTSYSTEMKEYEVENT TRUE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_3

    :cond_1d
    const-string v0, "REQUESTSYSTEMKEYEVENT FALSE in resume"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_3

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    if-eqz v0, :cond_14

    const-string v0, "AnswerMemo - AnswerPresenter.getInstance().getUi() is null"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragment;->showAnswerUi(Z)V

    goto/16 :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 7

    const/16 v4, 0x400

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "InCallActivity"

    const-string v3, "onStart()..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->hideMiniModeInCallUi()V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.intent.action.RESUME_SHARING_SERVICE_DIALOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isPenMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "addFlags FLAG_FULLSCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->setMultiWindowForDriveLinkNaviMode()V

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "callsettings_ring_duration"

    const/16 v5, 0xd

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/incallui/InCallActivity;->isFromPopupAnsweringMessage:Z

    if-eqz v5, :cond_2

    move v3, v2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "limit = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "answerMemo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- all_sound_off == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v0, "answerMemo  ON "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->startAutoAnsTimer(I)V

    :cond_3
    :goto_2
    const-string v0, "show_audio_codec_amr_wb"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "phoneapp.amrwb.simulation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->startAmrBandTimer()V

    :cond_4
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_3
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2

    :cond_8
    if-ne v4, v1, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v0, "answerMemo  ON_DURING_VIB_SILENT "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->startAutoAnsTimer(I)V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_2

    :cond_a
    iget-boolean v4, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallActivity;->startAutoAnsTimer(I)V

    :goto_4
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->isAnswerMemoForceStart:Z

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->creatCoverDialog()V

    goto :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "InCallActivity"

    const-string v1, "onStop()..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showMiniModeInCallUi(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->setCameraStateOff()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->resetStatusbarExpandState()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->existsLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initViews()V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "clearFlags FLAG_FULLSCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->dimissDialogOnStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method onTtyNotification(Z)V
    .locals 3

    const-string v0, "InCallActivity"

    const-string v1, "onTtyNotification : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090384

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/InCallActivity$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$15;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mTtyNotificationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->setTtyNotification(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mHasWindowFocus:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateFragmentManagers()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "com.android.incallui.InCallActivity"

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InCallActivity"

    const-string v1, "Disable proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivityForProximity:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->disableProximitySensor(Z)V

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallActivity;->showGreenBar(Z)V

    :cond_1
    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setCallProtectionValue(Z)V

    :cond_2
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method

.method public resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAutoAnsTimer:Lcom/android/incallui/InCallActivity$AutoAnsTimer;

    :cond_0
    return-void
.end method

.method returnToNormalWindowMode()V
    .locals 2

    const-string v0, "returnToNormalWindowMode"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multitasking_in_call_mw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "returnToNormalMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->normalWindow()V

    :cond_0
    return-void
.end method

.method public sendLockScreenEvent()V
    .locals 4

    const/16 v3, 0xa3

    const-string v0, "sendLockScreenEvent"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public setCameraStateOff()V
    .locals 3

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraStateOff] isCameraOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->stopCameraPreview()V

    if-eqz v0, :cond_0

    const v0, 0x7f090378

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    :cond_1
    return-void
.end method

.method public setCameraStateOn()V
    .locals 3

    const-string v0, "prohibit_candid_shot"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraStateOn] isCameraOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDialpadShow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsDialpadShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsDialpadShow:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->startCameraPreview()V

    if-eqz v0, :cond_0

    const v0, 0x7f090379

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsCameraOff:Z

    :cond_1
    return-void
.end method

.method public setDragModeViewVisible(Z)V
    .locals 2

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- setDragModeViewVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->setDragModeViewVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setDragModeViewVisible(Z)V

    goto :goto_0
.end method

.method public setGotoMiniMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- setGotoMiniMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mGotoMiniMode:Z

    return-void
.end method

.method public setInCallMenuInstacne(Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-void
.end method

.method public setPrimaryCallElapsedTimeForDialpad(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragmentManager:Lcom/android/incallui/DialpadFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/DialpadFragment;->setPrimaryCallElapsedTimeForDialpad(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setStatusBar(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public setUpInCallMenu(ILandroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- setUpInCallMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/InCallActivity$InCallActivityMenu;

    invoke-direct {v0, p0, p0, p2}, Lcom/android/incallui/InCallActivity$InCallActivityMenu;-><init>(Lcom/android/incallui/InCallActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setUpRcsCallCard(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mRcsInvitation:Lcom/android/incallui/rcs/RcsInvitation;

    invoke-static {v0, v1, p1}, Lcom/android/incallui/rcs/RcsShareUI;->setupRcsCallCard(Landroid/content/Context;Lcom/android/incallui/rcs/RcsInvitation;Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method public showCoverBlinder(Z)V
    .locals 3

    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCoverBlinder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCoverBlinder:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCoverBlinder:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showInCallBanner()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOutgoingVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->showCallBannerByMenu(Z)V

    :cond_1
    return-void
.end method

.method public showInCallMenu()V
    .locals 1

    const-string v0, "- showInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mInCallActivityMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method

.method public showPostCharPauseDialog(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharPause"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharPause"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public showPostCharWaitDialog(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    const-string v1, "postCharWait"

    invoke-direct {v0, p1, p2, v1}, Lcom/android/incallui/PostCharDialogFragment;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mPostCharDialogFragment:Lcom/android/incallui/PostCharDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method startAmrBandTimer()V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;-><init>(Lcom/android/incallui/InCallActivity;JJ)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const-string v0, "startAmrBandTimer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method stopAmrBandTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    if-eqz v0, :cond_0

    const-string v0, "stopAmrBandTimer"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAmrBandSimulationTimer:Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;

    :cond_0
    return-void
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppSwitchSystemKeyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mIsAppSwitchSystemKeyEventRequested:Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/InCallActivity;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method

.method public updateFragmentforModificationInitiated()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragmentManager:Lcom/android/incallui/CallButtonFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public updateFragmentforShowMeHideMeScreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragmentManager:Lcom/android/incallui/AnswerFragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragmentManager:Lcom/android/incallui/CallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/CallCardFragment;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :cond_0
    return-void
.end method

.method protected updateScreenType(Landroid/content/res/Configuration;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->isScreenTypeSensor(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->isScreenTypeLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenType... new screenType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / current screenType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eq v3, v0, :cond_2

    const-string v3, "updateScreenType... reset"

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput v2, p0, Lcom/android/incallui/InCallActivity;->mOrientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
