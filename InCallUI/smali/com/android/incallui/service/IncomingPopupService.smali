.class public Lcom/android/incallui/service/IncomingPopupService;
.super Lcom/android/incallui/service/MiniModeCallService;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;
    }
.end annotation


# static fields
.field public static isShowing:Z


# instance fields
.field private cityInformation:Ljava/lang/String;

.field private ecidListener:Lcom/android/incallui/EcidClient$Listener;

.field private mAcceptBtnOn:Z

.field private mAnswerBtn:Landroid/widget/Button;

.field private mAnswerCallAfterThisDisconnect:I

.field private mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

.field private mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCallEndBlinkCnt:I

.field private mCallRoamingGuardDialog:Landroid/app/AlertDialog;

.field private mCallState:Landroid/widget/TextView;

.field private mCallTimeText:Landroid/widget/Chronometer;

.field private mCallType:Landroid/widget/ImageView;

.field private mCallerImage:Landroid/widget/ImageView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCardName:Landroid/widget/TextView;

.field private mCdnipNumber:Landroid/widget/TextView;

.field private mChangedOrientation:Z

.field private mCityId:Landroid/widget/TextView;

.field private mCnapName:Landroid/widget/TextView;

.field private mCnapNameContainer:Landroid/view/View;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mControlPanel:Landroid/widget/LinearLayout;

.field private mDragModeButtonLayout:Landroid/widget/LinearLayout;

.field private mDrageModeBtn:Landroid/widget/ImageButton;

.field private mDragmodeText:Landroid/widget/TextView;

.field private mEndButton:Landroid/widget/Button;

.field private mEndcallButtonLayout:Landroid/widget/LinearLayout;

.field private mEriInfoForPopup:Landroid/widget/TextView;

.field private mFullScreenBtn:Landroid/widget/ImageButton;

.field private mHDIcon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHoldCallText:Landroid/widget/TextView;

.field private mIncallButtonLayout:Landroid/widget/LinearLayout;

.field private mIncomingButtonLayout:Landroid/widget/LinearLayout;

.field private mIncomingPopup:Landroid/widget/RelativeLayout;

.field private mIncomingText:Ljava/lang/String;

.field private mIsContensShareMode:Z

.field private mMessageButton:Landroid/widget/Button;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOrientation:I

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPopupService:Landroid/widget/RelativeLayout;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPrimary:Lcom/android/services/telephony/common/Call;

.field private mRecordInfoStub:Landroid/view/ViewStub;

.field private mRecordTime:Landroid/widget/Chronometer;

.field private mRejectBtn:Landroid/widget/Button;

.field private mRejectMessagePanel:Landroid/widget/RelativeLayout;

.field private mRejectMessageText:Landroid/widget/TextView;

.field private mRejectcall:Lcom/android/services/telephony/common/Call;

.field private mSendMessageBtn:Landroid/widget/ImageButton;

.field private mShouldOnSpeaker:Z

.field private mShowingCallEndBlink:Z

.field private mSimType:Landroid/widget/ImageView;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTextAniImage:Landroid/widget/ImageView;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallButtonDivider:Landroid/widget/ImageView;

.field private mVideoCallButtonDividerExtra:Landroid/widget/ImageView;

.field private mVideoCallButtonExtra:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;

.field private showingRejectMessage:Z

.field private textAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/IncomingPopupService;->isShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/MiniModeCallService;-><init>()V

    iput v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    iput v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallEndBlinkCnt:I

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mShowingCallEndBlink:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mChangedOrientation:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAcceptBtnOn:Z

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/service/IncomingPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/IncomingPopupService$1;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/service/IncomingPopupService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/IncomingPopupService$2;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/service/IncomingPopupService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/IncomingPopupService$3;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090122

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const v0, 0x7f090121

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aget-object v2, v1, v5

    aget-object v1, v1, v6

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/incallui/service/IncomingPopupService;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallerName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall(Z)V
    .locals 12

    const v1, 0x7f090122

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f09016c

    const v0, 0x7f09016a

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090168

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/service/IncomingPopupService;->getCallerName(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "%s"

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    if-ne v0, v1, :cond_6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "%s"

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    :goto_2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v5, v9

    aget-object v3, v5, v10

    aget-object v4, v5, v11

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/service/IncomingPopupService;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/service/IncomingPopupService;->getCallerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090169

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallerName(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f090121

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->answerThenGoCallScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/service/IncomingPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->toggleMute(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->endCall()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->videoCallClicked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->voiceCallClicked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->sendMessageClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->checkAudioMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/services/telephony/common/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->onEcidUpdate(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStayAsPopUp()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/incallui/service/IncomingPopupService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/incallui/service/IncomingPopupService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/incallui/service/IncomingPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->showInCallUIForAnswerMemo(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/incallui/service/IncomingPopupService;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerInfo()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCnapName()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCdnipNumber()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->answerViaSpeaker()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStay()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->dismissCallRoamingGuardDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->rejectCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->sendMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/incallui/service/IncomingPopupService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/service/IncomingPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->toggleSpeaker(Z)V

    return-void
.end method

.method private answerCallThenStay()V
    .locals 2

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->answerViaSpeaker()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->onAnswerWithWaitingCheck(Z)V

    goto :goto_1
.end method

.method private answerCallThenStayAsPopUp()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "answerCallThenStayAsPopUp "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAcceptBtnOn:Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->onAnswerWithWaitingCheck(Z)V

    return-void
.end method

.method private answerThenGoCallScreen()V
    .locals 4

    const-string v0, "answerThenGoCallScreen "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private answerViaSpeaker()V
    .locals 2

    const-string v0, "answerViaSpeaker "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->answerCallWithSpeaker(I)V

    return-void
.end method

.method private areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4

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

.method private checkAudioMode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02047d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mShouldOnSpeaker:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private dismissCallRoamingGuardDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private endCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "endcall "

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    :cond_0
    return-void
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 3

    const/16 v2, 0x66

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

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : cnapName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallerName : name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCardName()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.cardname"

    const-string v1, "Slot 1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "IncomingPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cardName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "gsm.sim.cardname2"

    const-string v1, "Slot 2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConferenceGroupString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getNameForCall()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_6

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNameForCall - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const-string v2, "UNKNOWN NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNameForCall - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNameForCall - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNameForCall - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getNumberForCall()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->getConferenceGroupString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_1

    const-string v0, "contactInfo is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isSafetyAssistanceMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "UNKNOWN NAME"

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getPhoneNumberLocator()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncomingPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneNumberLocator :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private inflateRecordInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v5, "IncomingPopupService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iput-boolean v8, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsLandScape:Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/service/IncomingPopupService;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;)V

    const-string v5, "usa_spr_roaming_feature"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->showCallRoamingGuardDialog(Lcom/android/services/telephony/common/Call;)V

    :cond_2
    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/service/IncomingPopupService;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v0, v5, v6, v7}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v4

    const-string v5, "volte_jpn_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09037b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private internalAnswer()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    return-void
.end method

.method private isCallRoamingGuardDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "IncomingPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeCall(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_1

    const-string v0, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private manageRecordInfo(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manageRecordInfo(showRecordInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->inflateRecordInfo()V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateRecordTime()V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    goto :goto_0
.end method

.method private onAnswerWithWaitingCheck(Z)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingOrActive()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    const/16 v4, 0x800

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/service/IncomingPopupService;->controlWaitingCall(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/CallCommandClient;->answerCallWithSpeaker(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_1
.end method

.method private onEcidUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerInfo()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerInfo()V

    invoke-static {p1}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setCityInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectCall()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    const-string v3, "mini_popup_call_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :goto_0
    const-string v3, "rejectCall "

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/incallui/CallCommandClient;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/EcidClient;->clearAllCalls()V

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectMessageText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/CallCommandClient;->sendMessage(Lcom/android/services/telephony/common/Call;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private sendMessageClicked()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x10000000

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const-string v3, ""

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private setCallTime()V
    .locals 10

    const-wide/16 v2, -0x1

    const/4 v8, 0x2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v4, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    :cond_0
    if-ne v4, v8, :cond_2

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    const-string v7, "feature_ctc"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v6

    if-ne v6, v8, :cond_1

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v6, v7}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/service/IncomingPopupService;->checkCallStatus(I)V

    return-void

    :cond_2
    const/4 v6, 0x7

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090084

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v2, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_2
.end method

.method private setCallType(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getIconForLabel(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCallerImage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const-string v0, "CallerImage From ContactAgent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/InCallUtils;->contactAgentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v0, :cond_3

    const-string v0, "setCallerImage"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallerInfo()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallType:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->getNumberForCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->getNameForCall()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallType:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallType:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setCallType(Landroid/widget/ImageView;)V

    :cond_2
    sget-boolean v0, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/incallui/InCallUtils;->contactAgentPresence:I

    if-eq v0, v1, :cond_4

    const-string v0, "presenceMode From ContactAgent"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    sget v0, Lcom/android/incallui/InCallUtils;->contactAgentPresence:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPresenceIcon(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->cityInformation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setCityInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    if-eq v0, v1, :cond_3

    const-string v0, "presenceMode From Contact"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPresenceIcon(I)V

    goto :goto_1
.end method

.method private setCityInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEriInfo(Lcom/android/services/telephony/common/Call;I)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEriInfo state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    if-eq v0, p2, :cond_1

    const/4 v0, 0x4

    if-ne v0, p2, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getEriInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSimType(Landroid/widget/ImageView;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    move-object v1, v3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v7, v6}, Lcom/android/incallui/InCallUtils;->getSimCardIcon(IZZ)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz v4, :cond_3

    move-object v1, v4

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private showCallRoamingGuardDialog(Lcom/android/services/telephony/common/Call;)V
    .locals 5

    const v4, 0x7f0901a7

    const/4 v3, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCallRoamingGuardDialog : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->isRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->isDomesticRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->showCallRoamingGuardDialog(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->isInternationalRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCallRoamingGuardDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f10005a

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/IncomingPopupService$13;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/service/IncomingPopupService$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/IncomingPopupService$12;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
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

    const-string v0, "IncomingPopupService"

    const-string v1, "call statusBar.showCallView()!"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showInCallUI()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v1}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showInCallUIForAnswerMemo(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(IZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->resetAutoAnsTimer()V

    new-instance v0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;-><init>(Lcom/android/incallui/service/IncomingPopupService;JJ)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/IncomingPopupService$5;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private startTextAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    const v1, 0x7f020434

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mChangedOrientation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mChangedOrientation:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "cannot startTextAnimation"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopTextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private toggleMute(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    return-void
.end method

.method private toggleSpeaker(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAudioMode(I)V

    goto :goto_0
.end method

.method private updateAlertWithInformationMessage(Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/IncomingPopupService;->updateAlertWithInformationMessage(Lcom/android/incallui/CallList;Z)V

    return-void
.end method

.method private updateAlertWithInformationMessage(Lcom/android/incallui/CallList;Z)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "updateAlertWithInformationMessage"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v3, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    move-object v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryName(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_3

    const-string v0, "call is null"

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->getPrimaryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryName(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method private updateCdnipNumber()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCnapName()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEndCallButtonForIcon()V
    .locals 5

    const v4, 0x7f0d01f3

    const v3, 0x7f0d01f2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private updateEndCallVideoButton()V
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/InCallUtils;->getCallForUpdateEndCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/vt/VideoCallManager;->isServiceRegistered(I)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "change_order_of_endcall_buttons"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonExtra:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDividerExtra:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "common_volte_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const-string v0, "video_call_disable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "change_order_of_endcall_buttons"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonExtra:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDividerExtra:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private updatePhoneNumberLocator()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method private updateRecordTime()V
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->inflateRecordInfo()V

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v5, v2

    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->start()V

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/service/IncomingPopupService;->setTTS(J)V

    :cond_0
    return-void
.end method

.method private videoCallClicked()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->makeCall(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private voiceCallClicked()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->makeCall(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    if-eq p1, v5, :cond_0

    if-ne p1, v2, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eq p1, v4, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    if-eq p1, v5, :cond_3

    if-ne p1, v2, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public controlWaitingCall(IZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "controlWaitingCall"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/service/IncomingPopupService;->DisplayWaitingCallDialogWhenHaveHoldingCall(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/incallui/service/IncomingPopupService;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(Z)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->answerCallWithSpeaker(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_2
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsLandScape:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method dismissWaitingCallPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getIconForLabel(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIconForLabel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    const v0, 0x7f0201f1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0201ee

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0201ef

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0201f0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0201ed

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public hangUpThenAnswer(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangUpThenAnswer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->onHangUpThenAnswer(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->onHangUpThenAnswer(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    goto :goto_1

    :pswitch_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->onHangUpThenAnswer(Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->onHangUpThenAnswer(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hidePopup()V
    .locals 2

    const-string v0, "IncomingPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "IncomingPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04004d

    invoke-virtual {v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0190

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0191

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerViaSpeakerBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0192

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e018c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0185

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHoldCallText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0184

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0179

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0186

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    :cond_2
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0187

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0188

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCnapName()V

    :cond_3
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0189

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCdnipNumber:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCdnipNumber()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e018d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/service/MiniModeCallService$mDragListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/MiniModeCallService$mDragListener;-><init>(Lcom/android/incallui/service/MiniModeCallService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_5
    const-string v0, "popup_caller_info_wide_height"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mControlPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0182

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallType:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0193

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectMessagePanel:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0194

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectMessageText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0195

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSendMessageBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSendMessageBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "phone_number_locator"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e018a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updatePhoneNumberLocator()V

    :cond_a
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e018b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "feature_display_sim_icon_on_callcard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0183

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setSimType(Landroid/widget/ImageView;)V

    :cond_d
    const-string v0, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v6, :cond_15

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCommandClient;->checkVoiceRecorder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0902e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_e
    :goto_1
    const-string v0, "display_hd_icon"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0201d4

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUtils;->getVolteResourceId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_f
    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e018f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01d6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndcallButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDivider:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e017d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    const-string v0, "change_order_of_endcall_buttons"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonDividerExtra:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e01df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonExtra:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonExtra:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    :cond_12
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->checkAudioMode()V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->startTextAnimation()V

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCustomLayout()V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_15
    if-ne v0, v6, :cond_e

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->checkVideoRecorder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0902e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->getAudioMode()I

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

.method public isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->getSupportedAudio()I

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

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 1

    const-string v0, "onCallListChange()"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/service/IncomingPopupService;->setTTS(J)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsLandScape:Z

    :goto_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordInfoStub:Landroid/view/ViewStub;

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mChangedOrientation:Z

    invoke-super {p0, p1}, Lcom/android/incallui/service/MiniModeCallService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_1

    invoke-super {p0, v2}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mIsLandScape:Z

    goto :goto_0
.end method

.method public onCoverStatusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onCreate "

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iput-object p0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    sput-boolean v2, Lcom/android/incallui/service/IncomingPopupService;->isShowing:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setIncomingPopup(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->startReceiver()V

    new-instance v0, Lcom/android/incallui/service/IncomingPopupService$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/IncomingPopupService$4;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->init()V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setShowingIncomingPopup(Z)V

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->setShowingIncomingPopup(Z)V

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onCreate()V

    return-void
.end method

.method protected onCustomCreate()V
    .locals 4

    const/4 v3, 0x1

    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, v3}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v3, :cond_0

    invoke-super {p0, v3}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onDestroy "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    sput-boolean v3, Lcom/android/incallui/service/IncomingPopupService;->isShowing:Z

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCommandClient;->setShowingIncomingPopup(Z)V

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->setShowingIncomingPopup(Z)V

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->stopTextAnimation()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setIncomingPopup(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->isCallRoamingGuardDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->dismissCallRoamingGuardDialog()V

    :cond_8
    iput-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-super {p0}, Lcom/android/incallui/service/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAnswerCallAfterThisDisconnect:I

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V

    :cond_0
    return-void
.end method

.method public onHangUpThenAnswer(Lcom/android/services/telephony/common/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->hangUp(IZ)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/service/IncomingPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_2

    move v2, v4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "callsettings_ring_duration"

    const/16 v7, 0xd

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "callsettings_answer_memo"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

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

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    const-string v4, "answerMemo  ON "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/incallui/service/IncomingPopupService;->startAutoAnsTimer(I)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/service/MiniModeCallService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    return v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    const-string v4, "answerMemo  ON_DURING_VIB_SILENT "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lcom/android/incallui/service/IncomingPopupService;->startAutoAnsTimer(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_1
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 9

    const/16 v8, 0x65

    const/4 v1, 0x0

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_awim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setPrimaryName(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v5, v0}, Lcom/android/incallui/service/IncomingPopupService;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/service/IncomingPopupService;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_3
    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "sendBroadcast(NOTIFY_STOP_SMARTCLIP_DRAGDROP)..."

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.NOTIFY_STOP_SMARTCLIP_DRAGDROP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    :cond_5
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingPopup:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAcceptBtnOn:Z

    if-nez v0, :cond_c

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    const-string v0, " call connected by BT or wired headset without accept button."

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mAcceptBtnOn:Z

    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_f

    :cond_9
    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V

    :cond_a
    :goto_2
    return-void

    :cond_b
    const/16 v0, 0x8

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCustomLayout()V

    goto :goto_1

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->showGreenBar()V

    goto :goto_2

    :cond_f
    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/IncomingPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mShowingCallEndBlink:Z

    if-nez v0, :cond_a

    iput-boolean v7, p0, Lcom/android/incallui/service/IncomingPopupService;->mShowingCallEndBlink:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->showCallEndBlink()V

    goto :goto_2

    :cond_10
    if-nez v2, :cond_a

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z

    if-nez v0, :cond_a

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_2
.end method

.method public onWBModeChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWBModeChange, isWBMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/IncomingPopupService;->showHighQualitySoundText(Z)V

    :cond_0
    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mHDIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mAutoAnsTimer:Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;

    :cond_0
    return-void
.end method

.method public setCallerImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPresenceIcon(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPresenceIcon MODE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/incallui/InCallUtils;->getPresenceIcon(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/InCallUtils;->isFromContactAgent:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallUtils;->contactAgentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "CallerName From ContactAgent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    sget-object v1, Lcom/android/incallui/InCallUtils;->contactAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setTTS(J)V
    .locals 10

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    const/4 v2, 0x0

    div-long v3, p1, v8

    long-to-int v3, v3

    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v4, v4

    rem-long v5, p1, v6

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "%d"

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const v4, 0x7f0900f7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    const v5, 0x7f0900f8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public showCallEndBlink()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallEndBlinkCnt:I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "showCallEndBlink - hasLiveCallExceptDisconnecting()"

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallEndBlinkCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    const-string v0, "showCallEndBlink - sendEmptyMessageDelayed(SHOW_CALL_END_BLINK)"

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const-string v0, "showCallEndBlink - stopSelf()"

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1
.end method

.method public showHighQualitySoundText(Z)V
    .locals 5

    const v4, 0x7f090082

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09037b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f10005a

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$6;

    invoke-direct {v2, p0, p5}, Lcom/android/incallui/service/IncomingPopupService$6;-><init>(Lcom/android/incallui/service/IncomingPopupService;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09002a

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/IncomingPopupService$7;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/service/IncomingPopupService$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/IncomingPopupService$8;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "waiting_call_option_invisible"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "showWaitingCallDialog : call answered without poup"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V

    const-string v0, "waiting_call_option_hold"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "waiting_call_option_end"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/incallui/service/IncomingPopupService;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f10005a

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$9;

    invoke-direct {v2, p0, p4}, Lcom/android/incallui/service/IncomingPopupService$9;-><init>(Lcom/android/incallui/service/IncomingPopupService;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09002a

    new-instance v2, Lcom/android/incallui/service/IncomingPopupService$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/IncomingPopupService$10;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/service/IncomingPopupService$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/IncomingPopupService$11;-><init>(Lcom/android/incallui/service/IncomingPopupService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public startReceiver()V
    .locals 3

    const-string v1, "IncomingPopupService"

    const-string v2, "startReceiver"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "answer_ringing_call"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateAudioButtons()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/IncomingPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->checkAudioMode()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method protected updateCustomLayout()V
    .locals 12

    const/4 v11, 0x7

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v9, 0x8

    const-string v0, "updateCustomLayout"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/incallui/CallList;->hasIncomingCall(I)Z

    move-result v4

    invoke-virtual {v5, v0}, Lcom/android/incallui/CallList;->hasActiveCall(I)Z

    move-result v3

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-ne v0, v9, :cond_f

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasLiveCallExceptDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_1
    if-eqz v0, :cond_10

    iget-object v8, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v8, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/android/incallui/service/IncomingPopupService;->setSimType(Landroid/widget/ImageView;)V

    :cond_1
    :goto_3
    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_11

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndcallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090082

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->checkCallStatus(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->startTextAnimation()V

    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    move v0, v1

    :goto_4
    const-string v4, "remove_content_share_on_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v3, :cond_24

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerInfo()V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallerImage()V

    iget-boolean v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    if-eqz v3, :cond_26

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCnapNameContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_7
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/service/IncomingPopupService;->setEriInfo(Lcom/android/services/telephony/common/Call;I)V

    :cond_a
    :goto_8
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2c

    move v0, v1

    :goto_9
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/16 v6, 0x14

    if-eq v4, v6, :cond_b

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-ne v3, v11, :cond_c

    :cond_b
    move v2, v1

    :cond_c
    invoke-direct {p0, v0, v2}, Lcom/android/incallui/service/IncomingPopupService;->manageRecordInfo(ZZ)V

    :cond_d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "dismiss mDrageModeBtn"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    :cond_e
    invoke-direct {p0, v5}, Lcom/android/incallui/service/IncomingPopupService;->updateAlertWithInformationMessage(Lcom/android/incallui/CallList;)V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_1

    :cond_10
    iget-object v8, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_11
    if-eqz v6, :cond_12

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndcallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f09007e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateAudioButtons()V

    move v0, v1

    goto/16 :goto_4

    :cond_12
    if-nez v3, :cond_14

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-eq v4, v11, :cond_14

    :cond_13
    if-eqz v0, :cond_1f

    :cond_14
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndcallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    if-eqz v3, :cond_1c

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1c

    :cond_16
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    const-string v0, "updateCustomLayout - mSimType"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/service/IncomingPopupService;->setSimType(Landroid/widget/ImageView;)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    const-string v0, "mini_popup_call_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_b
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    move v0, v2

    :goto_c
    if-eqz v7, :cond_1a

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v4, :cond_1a

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->setCallTime()V

    :cond_1a
    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateAudioButtons()V

    goto/16 :goto_4

    :cond_1c
    const-string v0, "share_content_not_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_1e
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_1f
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "dismiss endcall layout when is IncomingMissedCall()"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->hidePopup()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    move v0, v1

    goto/16 :goto_4

    :cond_20
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEndcallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncomingButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mIncallButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragModeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPopupService:Landroid/widget/RelativeLayout;

    const v4, 0x7f0201f9

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_22
    invoke-virtual {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateEndCallButton()V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mTextAniImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_23
    move v0, v1

    goto/16 :goto_4

    :cond_24
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_25
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_26
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mDragmodeText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService;->mSimType:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mCardName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateCnapName()V

    goto/16 :goto_7

    :cond_2b
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService;->mEriInfoForPopup:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_2c
    move v0, v2

    goto/16 :goto_9

    :cond_2d
    move v0, v1

    goto/16 :goto_c

    :cond_2e
    move v0, v2

    goto/16 :goto_1

    :cond_2f
    move v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_3
.end method

.method public updateEndCallButton()V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "20"

    invoke-virtual {p0}, Lcom/android/incallui/service/MiniModeCallService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_pcw_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget-object v2, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    if-ne v5, v6, :cond_3

    :cond_0
    move v5, v4

    move v4, v2

    move v2, v1

    :goto_1
    const-string v6, "isEmergency : "

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v6, "contactExists : "

    invoke-static {p0, v6, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v4, "isNumberExists : "

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v4, "islockPcw : "

    invoke-static {p0, v4, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mVoiceCallButton:Landroid/widget/Button;

    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    move v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButton:Landroid/widget/Button;

    if-nez v5, :cond_6

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    move v4, v3

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v4, "change_order_of_endcall_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/incallui/service/IncomingPopupService;->mVideoCallButtonExtra:Landroid/widget/Button;

    if-nez v5, :cond_7

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    move v4, v3

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService;->mMessageButton:Landroid/widget/Button;

    if-nez v5, :cond_8

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateEndCallVideoButton()V

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/IncomingPopupService;->updateEndCallButtonForIcon()V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    :cond_4
    move v5, v4

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_5
    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v1

    goto :goto_4

    :cond_8
    move v3, v1

    goto :goto_5

    :cond_9
    move v5, v4

    move v4, v2

    move v2, v3

    goto :goto_1

    :cond_a
    move v2, v3

    move v4, v1

    move v5, v1

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method
