.class public Lcom/android/incallui/help/AirMotionTutorialIncallScreen;
.super Landroid/app/Activity;
.source "AirMotionTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/incallui/motion/CallAirMotionListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field beforeMotion:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBtnContainer:Landroid/widget/FrameLayout;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

.field private mCompleteText:Landroid/widget/FrameLayout;

.field private mEndButton:Landroid/widget/Button;

.field private mGuideText:Landroid/widget/FrameLayout;

.field mHandler:Landroid/os/Handler;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectwithmsg:Landroid/widget/LinearLayout;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mTutorialLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->beforeMotion:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    new-instance v0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$1;-><init>(Lcom/android/incallui/help/AirMotionTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/AirMotionTutorialIncallScreen;I)V
    .locals 0
    .param p0    # Lcom/android/incallui/help/AirMotionTutorialIncallScreen;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->displayToast(I)V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const v3, 0x7f050003

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private displayToast(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "AirMotionTutorialIncallScreen"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public goCallConnected()V
    .locals 5

    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectwithmsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "voice_call_recording_menu"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const v4, 0x7f0e0019

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0e0017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBtnContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0e0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCompleteText:Landroid/widget/FrameLayout;

    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectwithmsg:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f02036e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/android/incallui/motion/CallAirMotion;

    invoke-direct {v0, p0}, Lcom/android/incallui/motion/CallAirMotion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0, p0}, Lcom/android/incallui/motion/CallAirMotion;->setCallAirMotionListener(Lcom/android/incallui/motion/CallAirMotionListener;)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen$2;-><init>(Lcom/android/incallui/help/AirMotionTutorialIncallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->animationInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mGuideText:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/incallui/motion/CallAirMotion;->stopMotionCatch()V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/incallui/motion/CallAirMotion;->unbindFromService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    if-eqz v0, :cond_0

    const-string v0, "onPause - stopMotionCatch"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/incallui/motion/CallAirMotion;->stopMotionCatch()V

    :cond_0
    return-void
.end method

.method public onReceiveSweep(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 2
    .param p1    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sweepStep  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->airMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    sget-object v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/incallui/motion/CallAirMotion;->stopMotionCatch()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->beforeMotion:Z

    invoke-virtual {p0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->goCallConnected()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->beforeMotion:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume - beforeMotion"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;

    invoke-virtual {v0}, Lcom/android/incallui/motion/CallAirMotion;->startMotionCatch()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    const v0, 0x7f0900f2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->displayToast(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/incallui/help/AirMotionTutorialIncallScreen;->displayToast(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
