.class public Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
.super Landroid/app/Activity;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;
    }
.end annotation


# instance fields
.field private DoNotRemoveByForce:Z

.field first_line_text:Landroid/widget/TextView;

.field private fromShowGuidewithTipDialog:Z

.field private isEnrolled:Z

.field private isForODE:Z

.field private mBackEnabled:Z

.field mErrorMessage:Landroid/widget/LinearLayout;

.field mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintConfirmCount:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFinishedScanning:Z

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPreviousStage:Ljava/lang/String;

.field private mPrivProgressBarCount:I

.field mRegisterErrorHandler:Landroid/os/Handler;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRightSideView:Landroid/view/View;

.field private mTipDialog:Landroid/app/AlertDialog;

.field private mToken:Landroid/os/IBinder;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private pRunnable:Ljava/lang/Runnable;

.field private selectedFingerIndex:I

.field private sensorIsRemoved:Z

.field tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuideDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->initRegisterfingerprint()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->sensorIsRemoved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintConfirmCount:I

    return p1
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2

    move-object v0, p1

    new-instance v1, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFingerRegisterText()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initRegisterfingerprint()V
    .locals 2

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "initRegisterfingerprint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPrivProgressBarCount:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->startEffect()V

    return-void
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerClient()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerGuideText(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091bec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091bef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091bed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091bee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f091beb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v1

    :try_start_0
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageQuality["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorMessage:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined imageQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 6

    const-string v3, "RegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGuideDialog [reason] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0918e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0918e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$6;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0918ec

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Unable to register your fingerprint."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0918e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0918ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$8;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startOncreate()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method private startTipDialog()V
    .locals 7

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "startTipDialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "startTipDialog is already exist"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f0400cd

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v1, "&#8226 "

    const v4, 0x7f0b024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0918b7

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0250

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0918b8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0918b9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02012b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f091885

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$12;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private unregisterClient()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private updateRegisterFingerprint()V
    .locals 2

    const v0, 0x7f040252

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0224

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    const v0, 0x7f0b0228

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mLeftSideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRightSideView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0b05a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEffectView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->startEffect()V

    const v0, 0x7f0b05a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->first_line_text:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V

    const v0, 0x7f0b05a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorMessage:Landroid/widget/LinearLayout;

    const v0, 0x7f0b05aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "RegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#00000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "fingerIndex"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[selectedFingerIndex] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "previousStage"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[previousStage] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ownName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ownName] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "for_ode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->updateRegisterFingerprint()V

    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->vib:Landroid/os/Vibrator;

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mBackEnabled:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startOncreate()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :sswitch_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startTipDialog()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->unregisterClient()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->EnableSystemKey()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z

    if-nez v1, :cond_1

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "DoNotRemoveByForce == false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DisableSystemKey()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
