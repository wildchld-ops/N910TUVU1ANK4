.class public Lcom/android/incallui/cocktail/SecondScreenPanelView;
.super Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.source "SecondScreenPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# static fields
.field private static FEATURE_PHONE_NUMBER_LOCATOR:Z

.field private static FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

.field private static FEATURE_VOICE_CALL_RECORDING:Z


# instance fields
.field private final CLOSE_COCKTAILBAR_UI:I

.field private final CLOSE_COCKTAILBAR_UI_DELAY:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final MAKE_TARGET_DURATION:I

.field private answerMemoPhoto:Landroid/widget/ImageView;

.field private answerMemoStatus:Landroid/widget/TextView;

.field private answerMemoStatusContainer:Landroid/widget/LinearLayout;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

.field private mCallAnswerContainer:Landroid/widget/RelativeLayout;

.field private mCallButtonsContainer:Landroid/widget/RelativeLayout;

.field private mCallEndText:Landroid/widget/TextView;

.field private mCallTime:Landroid/widget/Chronometer;

.field private mCallTimeContainer:Landroid/widget/LinearLayout;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNameContainer:Landroid/widget/LinearLayout;

.field private mCallerPhoto:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBundle:Landroid/os/Bundle;

.field private mDragButton:Landroid/widget/ImageButton;

.field private mDragButtonContainer:Landroid/widget/LinearLayout;

.field private mDragModeContainer:Landroid/widget/RelativeLayout;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mEndCallButtonsContainer:Landroid/widget/LinearLayout;

.field private mFullButton:Landroid/widget/ImageButton;

.field private mFullButtonContainer:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHoldCallText:Landroid/widget/TextView;

.field private mHoldCallTextContainer:Landroid/widget/LinearLayout;

.field private mIncomingAni:Landroid/view/View;

.field private mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

.field private mLargeEndButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOutgoingAni:Landroid/view/View;

.field private mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

.field private mOutgoingEndButton:Landroid/widget/ImageButton;

.field private mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

.field private mOutgoingText:Landroid/widget/TextView;

.field private mOutgoingTextContainer:Landroid/widget/LinearLayout;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPreviousCallState:I

.field private mRecordContainer:Landroid/widget/LinearLayout;

.field private mRecordTime:Landroid/widget/Chronometer;

.field private mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSecondScreenContainer:Landroid/widget/RelativeLayout;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mVoiceCallButton:Landroid/widget/ImageButton;

.field private mVoiceControlContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

    sput-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_VOICE_CALL_RECORDING:Z

    sput-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_PHONE_NUMBER_LOCATOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;-><init>(Landroid/content/Context;)V

    const-string v0, "SecondScreenPanelView"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSecondScreenContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragModeContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceControlContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerNameContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButtonContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingEndButton:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallEndText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->CLOSE_COCKTAILBAR_UI:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->CLOSE_COCKTAILBAR_UI_DELAY:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->MAKE_TARGET_DURATION:I

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoPhoto:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoStatusContainer:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoStatus:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/cocktail/SecondScreenPanelView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007e

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v3, "USA"

    const-string v4, "JPN"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TMO"

    const-string v4, "SPR"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sput-boolean v6, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RecordingAllowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v6, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_VOICE_CALL_RECORDING:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_3

    sput-boolean v6, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_PHONE_NUMBER_LOCATOR:Z

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSecondScreenContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceControlContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    sget-boolean v3, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_PHONE_NUMBER_LOCATOR:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerNameContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingEndButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingEndButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->answerMemoStatusContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    invoke-virtual {v3, p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->setParentView(Lcom/android/incallui/cocktail/SecondScreenPanelView;)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    invoke-virtual {v3, v7}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->inflateHandle(I)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAnswerHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    invoke-virtual {v3, p0}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->setParentView(Lcom/android/incallui/cocktail/SecondScreenPanelView;)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    invoke-virtual {v3, v6}, Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;->inflateHandle(I)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRejectHandle:Lcom/android/incallui/cocktail/SecondScreenIncomingHandle;

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v5, 0x7f0902ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallEndText:Landroid/widget/TextView;

    sget-boolean v3, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_VOICE_CALL_RECORDING:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    :cond_d
    sget-boolean v3, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02db

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragModeContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    new-instance v3, Lcom/android/incallui/cocktail/SecondScreenPanelView$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/cocktail/SecondScreenPanelView$1;-><init>(Lcom/android/incallui/cocktail/SecondScreenPanelView;)V

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answermemo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private sendNoticeIntent(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktail.action.CALL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "SecondScreenPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNoticeIntent Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Context : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePhoneNumberLocator(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method

.method private updateRecordContainer()V
    .locals 9

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    const-string v1, "recordDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v0, "SecondScreenPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- recordDurationTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v1, v7

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    cmp-long v1, v1, v7

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0
.end method

.method private updateTTS(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    const-string v2, "callStateLabel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    const-string v2, "callername"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->setTTS(J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x64

    const-string v1, "SecondScreenPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "speaker"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "mute"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;->END:Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;

    invoke-static {v1, v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->telephonyInvokeHook(Landroid/content/Context;Lcom/android/incallui/cocktail/SecondScreenPanelUtils$HookCommand;)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :sswitch_3
    const-string v1, "drag"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v1, "full"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v1, "log"

    invoke-direct {p0, v1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->sendNoticeIntent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "SecondScreenPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e02b5 -> :sswitch_4
        0x7f0e02b7 -> :sswitch_4
        0x7f0e02ca -> :sswitch_0
        0x7f0e02cb -> :sswitch_2
        0x7f0e02d2 -> :sswitch_0
        0x7f0e02d3 -> :sswitch_1
        0x7f0e02d5 -> :sswitch_3
        0x7f0e02d6 -> :sswitch_2
        0x7f0e02d7 -> :sswitch_2
        0x7f0e02db -> :sswitch_6
        0x7f0e02de -> :sswitch_4
        0x7f0e02df -> :sswitch_5
    .end sparse-switch
.end method

.method public onClosePanel()V
    .locals 3

    const/16 v2, 0x64

    const-string v0, "cocktaildummytools"

    const-string v1, "onClosePanel"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    const-string v0, "SecondScreenPanelView"

    const-string v1, "onOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateSecondScreenLayout()V

    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 3

    const-string v0, "SecondScreenPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->setData(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "SecondScreenPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_6

    const-string v0, "isAccept"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    const-string v0, "isDragMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "isVideoCall"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_0

    if-eqz v1, :cond_7

    const-string v4, "HoldCocktail"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-interface {v0, v3}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;->sendOptions(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "SecondScreenPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "callstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "SecondScreenPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previousCallState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "callername"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v4, "phoneNumber"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "phoneNumber"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    :cond_3
    const-string v4, "SecondScreenPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callerName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", phoneNumber : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_PHONE_NUMBER_LOCATOR:Z

    if-eqz v0, :cond_5

    const-string v0, "phoneNumberLocator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    const-string v0, "holdCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "isConferenceCall"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "conferenceCount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    const-string v0, "SecondScreenPanelView"

    const-string v1, "- missed/reject call"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-string v4, "HoldCocktail"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    const v4, 0x7f0204cb

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    const-string v6, "isVoiceControlOn"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "shouldVibrate"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceControlContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x3

    if-ne v3, v8, :cond_c

    if-eqz v6, :cond_c

    if-nez v7, :cond_c

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceControlContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    iput v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerPhoto:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v6, 0x2

    if-ne v3, v6, :cond_18

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "calltime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/16 v10, -0x1

    cmp-long v2, v6, v10

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v8, v9}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    const-string v2, "SecondScreenPanelView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "baseTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "connected time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_14

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0902fd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_4
    const/4 v0, 0x2

    if-eq v3, v0, :cond_10

    const/4 v0, 0x7

    if-ne v3, v0, :cond_22

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragModeContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_20

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnswerMemoUtils.isAutoAnswered(mContext) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateLayoutBackgoundColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateAudioButtons()V

    const/4 v0, 0x1

    if-ne v3, v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateEndCallButtonDisplayInfo(Ljava/lang/String;)V

    :cond_11
    sget-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_VOICE_CALL_RECORDING:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateRecordContainer()V

    :cond_12
    sget-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_PHONE_NUMBER_LOCATOR:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, v3}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updatePhoneNumberLocator(I)V

    :cond_13
    iput v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    invoke-direct {p0, p1}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->updateTTS(Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_14
    if-eqz v4, :cond_15

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090300

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->FEATURE_REMOVE_CONTENT_SHARE_ON_CALL:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mLargeEndButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_16
    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragButtonContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_18
    const/4 v0, 0x5

    if-eq v3, v0, :cond_19

    const/16 v0, 0x14

    if-eq v3, v0, :cond_19

    const/4 v0, 0x6

    if-ne v3, v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "callStateLabel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecondScreenPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callStateLabel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_1a
    const/4 v0, 0x3

    if-eq v3, v0, :cond_1b

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1e

    :cond_1b
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1d
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_1e
    const/4 v0, 0x7

    if-ne v3, v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1f
    const/4 v0, 0x1

    if-ne v3, v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallAnswerContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mEndCallButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mIncomingVideoCallContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingAni:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallButtonsContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingCallButtonsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragModeContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "disconnectcause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v2, "SecondScreenPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectcause : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallEndText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_20
    const/16 v0, 0x8

    goto/16 :goto_5

    :cond_21
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_22
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mDragModeContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
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

    iget-object v4, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v8, 0x7f0900f7

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    iget-object v5, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v8, 0x7f0900f8

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public updateAudioButtons()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    const-string v2, "isCallForwardingState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    const-string v2, "isSpeakerOn"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    const-string v3, "isMuteOn"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "SecondScreenPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSpeakerOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMuteOn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mOutgoingSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public updateEndCallButtonDisplayInfo(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SecondScreenPanelView"

    const-string v3, "updateEndCallButtonDisplayInfo() ==> "

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "20"

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_pcw_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    const v4, 0x104057c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v2

    :goto_0
    if-eqz v3, :cond_4

    const-string v0, "20"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "SecondScreenPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNumberExists = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEmergency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mVoiceCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public updateLayoutBackgoundColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mSecondScreenContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallerNameContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mHoldCallTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCallTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mFullButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public updateSecondScreenLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mPreviousCallState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenPanelView;->mCurrentBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelView;->setData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
