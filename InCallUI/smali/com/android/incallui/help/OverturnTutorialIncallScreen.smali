.class public Lcom/android/incallui/help/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mCallStateLayout:Landroid/view/View;

.field private mContinueRinging:Z

.field private mEndTutorial:Landroid/widget/FrameLayout;

.field private mEndTutorialAnimation:Landroid/view/animation/Animation;

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMainLayout:Landroid/view/View;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mStartTutorial:Landroid/widget/FrameLayout;

.field private mStartTutorialAnimation:Landroid/view/animation/Animation;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

.field overturnMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020465
        0x7f020466
        0x7f020467
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I

    iput v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    iput-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    iput-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    new-instance v0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/help/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/incallui/help/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/OverturnTutorialIncallScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method private controlRing(Z)V
    .locals 4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private controlVibration()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;Lcom/android/incallui/help/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I

    invoke-direct {p0, v2}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->updateAnimation(I)V

    :cond_0
    return-void
.end method

.method private startIncomingSound()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iget-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->controlRing(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private stopRingingOrVibration()V
    .locals 3

    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mContinueRinging:Z

    iget-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->controlRing(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/incallui/help/OverturnTutorialIncallScreen$VibratorThread;

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method private updateAnimation(I)V
    .locals 5

    const/16 v4, 0x14

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f050003

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0e01cb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    const v0, 0x7f0e01cc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    const v0, 0x7f0e01ce

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorial:Landroid/widget/FrameLayout;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    const v0, 0x7f0e01cd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->overturnMotionWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/incallui/help/OverturnTutorialIncallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mEndTutorialAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorial:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mStartTutorialAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    iput-object v8, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    :sswitch_0
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v6, 0x7f040020

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0e0083

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    const v6, 0x7f0e0082

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0900e2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0900e3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/incallui/help/OverturnTutorialIncallScreen$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    const v6, 0x7f0901b7

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    const/16 v6, 0x32

    iput v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->startAnimation()V

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f0900e6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0900e5

    new-instance v8, Lcom/android/incallui/help/OverturnTutorialIncallScreen$6;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09007b

    new-instance v8, Lcom/android/incallui/help/OverturnTutorialIncallScreen$5;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    iget-object v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/incallui/help/OverturnTutorialIncallScreen$7;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/incallui/help/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v3, "OverturnTutorialIncallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume(), mPreviousMsg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    iget-object v3, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v3, v4, v6}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    const/4 v1, 0x0

    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v3, :cond_1

    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    const/high16 v0, 0x680000

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    iget v3, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v4, 0x32

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "UseRing"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    const-string v3, "OverturnTutorialIncallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRingerType in onResume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/help/OverturnTutorialIncallScreen;->startIncomingSound()V

    :cond_3
    return-void
.end method
