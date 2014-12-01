.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
    }
.end annotation


# static fields
.field private static levelFingerprintService:I


# instance fields
.field private DoNotRemoveByForce:Z

.field private final INVALID_ID:I

.field private ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private fromShowGuidewithTipDialog:Z

.field private isEnrolled:Z

.field private isForODE:Z

.field private mAnimationImage:Landroid/widget/ImageView;

.field private mArrowImage:Landroid/widget/ImageView;

.field private mBackEnabled:Z

.field private mBlock:Z

.field private mCurrentProgressBarCount:I

.field private mEventProgressBarCount:I

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintConfirmCount:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFinishedScanning:Z

.field private mLL_StepView:Landroid/widget/LinearLayout;

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPreviousStage:Ljava/lang/String;

.field private mPrivProgressBarCount:I

.field private mRegisterError:Landroid/widget/RelativeLayout;

.field mRegisterErrorHandler:Landroid/os/Handler;

.field private mRegisterErrorImage:Landroid/widget/ImageView;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRegisterErrorText:Landroid/widget/TextView;

.field private mRegisterGuideText:Landroid/widget/TextView;

.field private mRegisterStep1:Landroid/widget/ImageView;

.field private mRegisterStep10:Landroid/widget/ImageView;

.field private mRegisterStep2:Landroid/widget/ImageView;

.field private mRegisterStep3:Landroid/widget/ImageView;

.field private mRegisterStep4:Landroid/widget/ImageView;

.field private mRegisterStep5:Landroid/widget/ImageView;

.field private mRegisterStep6:Landroid/widget/ImageView;

.field private mRegisterStep7:Landroid/widget/ImageView;

.field private mRegisterStep8:Landroid/widget/ImageView;

.field private mRegisterStep9:Landroid/widget/ImageView;

.field private mRegisterguide:Landroid/widget/VideoView;

.field private mRightSideView:Landroid/view/View;

.field private mTipDialog:Landroid/app/AlertDialog;

.field private mToken:Landroid/os/IBinder;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTweenAni:Landroid/view/animation/Animation;

.field private mfromOnehandGrip:Ljava/lang/Boolean;

.field private pRunnable:Ljava/lang/Runnable;

.field private selectedFingerIndex:I

.field private sensorIsRemoved:Z

.field video:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->INVALID_ID:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCurrentProgressBarCount:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSupportedOnehand(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->initRegisterfingerprint()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    return p1
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    return-void
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2

    move-object v0, p1

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RegisterFingerprint"

    const-string v2, "resource is not ready"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v2, "anim"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v1, "RegisterFingerprint"

    const-string v2, "resourceId is invalid"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method private initRegisterfingerprint()V
    .locals 2

    const-string v0, "RegisterFingerprint"

    const-string v1, "initRegisterfingerprint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static isSupportedOnehand(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    sget v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedOnehand: levelFingerprintService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->levelFingerprintService:I

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 4

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
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

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerClient()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

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
    .locals 4

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
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

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I

    move-result v2

    invoke-static {p1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    :try_start_0
    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageQuality["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined imageQuality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 3

    const-string v0, "RegisterFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGuideDialog [reason] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    const-string v0, ""

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0918e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0918eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0918ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0918ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0918ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0918ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showGuidewithTipDialog()V
    .locals 3

    const-string v0, "RegisterFingerprint"

    const-string v1, "showGuidewithTipDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0918ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0918ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091884

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0918e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0918ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startOncreate()V
    .locals 5

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromOnehandGrip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method private startTipDialog()V
    .locals 7

    const v6, 0x7f0b024e

    const-string v0, "RegisterFingerprint"

    const-string v1, "startTipDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "RegisterFingerprint"

    const-string v1, "startTipDialog is already exist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0400cd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "&#8226 "

    const v0, 0x7f0b024f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0918b7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0250

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0918b8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0251

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0918b9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02012b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v0, 0x7f091885

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02012d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02012c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private unregisterClient()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private updateRegisterFingerprint()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-static {p0}, Lcom/android/settings/Utils;->hasCocktailbar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0400c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0224

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    const v1, 0x7f0b0228

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLeftSideView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRightSideView:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    const v1, 0x7f0b023a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    const v2, 0x7f0918c4

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f0b023b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    const v1, 0x7f0b0247

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0248

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;

    const v1, 0x7f0b0249

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;

    const v1, 0x7f0b023c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;

    const v2, 0x7f0918cb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b023d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;

    const v1, 0x7f0b023e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;

    const v1, 0x7f0b023f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;

    const v1, 0x7f0b0240

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;

    const v1, 0x7f0b0241

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;

    const v1, 0x7f0b0242

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;

    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;

    const v1, 0x7f0b0244

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;

    const v1, 0x7f0b0245

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    const v1, 0x7f0b0246

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v1, 0x7f0b024a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0b024b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f050001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->configureActionBar()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v1

    if-ne v1, v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/fingerprint_help_forefinger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    invoke-virtual {v1, v6}, Landroid/widget/VideoView;->setStopMusic(Z)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startStandbyAnimation()V

    return-void

    :cond_3
    const v1, 0x7f0400c8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterGuideText:Landroid/widget/TextView;

    const v2, 0x7f0918c6

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/fingerprint_help_forefinger_10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v1

    if-ne v1, v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/fingerprint_help_onehand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/fingerprint_help_twohand_10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/fingerprint_help_onehand_10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->video:Landroid/net/Uri;

    goto/16 :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3f1

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ownName"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromOnehandGrip"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[selectedFingerIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[previousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ownName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    const-string v3, "RegisterFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ownName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "for_ode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f090d2d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020256

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RegisterFingerprint"

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

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

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

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startOncreate()V

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
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V

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

    const-string v1, "RegisterFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->unregisterClient()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    if-nez v1, :cond_1

    const-string v1, "RegisterFingerprint"

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

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "RegisterFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBlock:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    :cond_2
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
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

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

.method protected startFailedAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    :cond_0
    const-string v0, "RegisterFingerprint"

    const-string v1, "startFailedAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "spass_failed"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$18;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$18;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected startPassAnimation()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    :cond_0
    const-string v2, "RegisterFingerprint"

    const-string v3, "startPassAnimation"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "com.samsung.android.fingerprint.service"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "RegisterFingerprint"

    const-string v1, "resource is not ready"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "spass_success"

    const-string v2, "anim"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x10a0030

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTweenAni:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$19;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$19;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    goto :goto_1
.end method

.method protected startProcessingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    :cond_0
    const-string v0, "RegisterFingerprint"

    const-string v1, "startProcessingAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "spass_processing"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected startScanningAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    :cond_0
    const-string v0, "RegisterFingerprint"

    const-string v1, "startScanningAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "spass_unlock"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected startStandbyAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->stop()V

    :cond_0
    const-string v0, "RegisterFingerprint"

    const-string v1, "startStandbyAnimation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "spass_standby2"

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getAnimationResource(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->ani:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
