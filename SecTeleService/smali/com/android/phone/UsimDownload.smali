.class public Lcom/android/phone/UsimDownload;
.super Landroid/app/Activity;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UsimDownload$15;,
        Lcom/android/phone/UsimDownload$ScreenMode;
    }
.end annotation


# static fields
.field private static final SAFE_DBG:Z

.field static final productName:Ljava/lang/String;


# instance fields
.field private AttacReject_121315:Z

.field private AttacReject_161722:Z

.field private AttacReject_ByPass:Z

.field private KtNumRegSendMsg:B

.field private KtNumTimerExpired:Z

.field private SimState:Ljava/lang/String;

.field private SimType:Ljava/lang/String;

.field private ktIdleNumReg:Z

.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mFailHandler:Landroid/os/Handler;

.field private mFailRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLocked:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMode:Lcom/android/phone/UsimDownload$ScreenMode;

.field private mOTAHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisterButton:Landroid/widget/Button;

.field private mRetry:Z

.field private mRetryNoButton:Landroid/widget/Button;

.field private mRetryYesButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSMSHandler:Landroid/os/Handler;

.field private mSMSRunnable:Ljava/lang/Runnable;

.field private mTitle:Landroid/widget/TextView;

.field private mUsim:Lcom/android/internal/telephony/IccCard;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private networkRejectCauseCS:I

.field private networkRejectCauseIdle:I

.field private networkRejectCausePS:I

.field private networkStatusValue:I

.field private reboot_reason:Ljava/lang/String;

.field private scAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/UsimDownload;->productName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/phone/UsimDownload;->SAFE_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    iput v0, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    iput v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    iput v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    iput v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->ktIdleNumReg:Z

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->mRetry:Z

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$1;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$2;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$2;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$3;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$3;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/phone/UsimDownload$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$4;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/UsimDownload$5;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$5;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/UsimDownload$14;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$14;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mOTAHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/UsimDownload;)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaRegSendMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/UsimDownload;)I
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/UsimDownload;)I
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/UsimDownload;)I
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/UsimDownload;I)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/UsimDownload;)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestStopKtOtaReg()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/UsimDownload;)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->updateNetworkStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/UsimDownload;J)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/UsimDownload;)V
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/UsimDownload;)Z
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->placeCallforOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->mRetry:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/UsimDownload;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/UsimDownload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/UsimDownload;)I
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/UsimDownload;)B
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/UsimDownload;)Z
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/UsimDownload;)Z
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/UsimDownload;)Z
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/UsimDownload;)Z
    .locals 1
    .param p0    # Lcom/android/phone/UsimDownload;

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/UsimDownload;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    return p1
.end method

.method private closePopup(J)V
    .locals 2
    .param p1    # J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/UsimDownload$7;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$7;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isRejectCause121315()Z
    .locals 4

    const/16 v3, 0xf

    const/16 v2, 0xd

    const/16 v1, 0xc

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRejectCause161722()Z
    .locals 4

    const/16 v3, 0x16

    const/16 v2, 0x11

    const/16 v1, 0x10

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRejectCauseByPass()Z
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private placeCallforOTA()Z
    .locals 5

    const-string v0, "tel"

    const-string v1, "*575"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/UsimDownload;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v0, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    const/4 v0, 0x1

    return v0
.end method

.method private queryRequestKtOtaReg()V
    .locals 5

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x4

    const/16 v3, 0x16

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    throw v0

    :catch_2
    move-exception v0

    const-string v0, "UsimDownload"

    const-string v1, "close fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private queryRequestKtOtaRegSendMsg()V
    .locals 9

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    const-string v5, "0000001005"

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v6, 0xe

    :try_start_0
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v6, 0x12

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_3

    const-string v0, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "00 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v6, Lcom/android/phone/UsimDownload;->SAFE_DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "UsimDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMSI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsimDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imei: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsimDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSC: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsimDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "UsimDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu.encodedScAddress: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "UsimDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu.encodedMessage: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/length: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0, v1}, Landroid/telephony/SmsManager;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "UsimDownload"

    const-string v2, "NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    const-string v0, ""

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private queryRequestSetOtaReg(I)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x5

    const/16 v3, 0x16

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    throw v0

    :catch_2
    move-exception v0

    const-string v0, "UsimDownload"

    const-string v1, "close fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private queryRequestStopKtOtaReg()V
    .locals 5

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x4

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x36

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "UsimDownload"

    const-string v3, "write fail!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "UsimDownload"

    const-string v1, "close fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private rebootSystem(J)V
    .locals 2
    .param p1    # J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/UsimDownload$6;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$6;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateNetworkStatus()V
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v8, "ril.skt.network_regist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v8, "Status"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, ";Idle"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v8, v7, 0x6

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateNetworkStatus : networkStatusValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Idle"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, ";CS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v8, v7, 0x4

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "networkRejectCauseIdle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "CS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, ";PS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v8, v7, 0x2

    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "networkRejectCauseCS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "PS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v8, v7, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "networkRejectCausePS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const/16 v9, 0xfe

    if-ne v8, v9, :cond_0

    const-string v8, "UsimDownload"

    const-string v9, "networkRejectCauseIdle = 0xFE -> 0x00"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCause121315()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCause161722()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCauseByPass()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StringIndexOutOfBoundsException = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v8, "UsimDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NumberFormatException = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    .locals 8
    .param p1    # Lcom/android/phone/UsimDownload$ScreenMode;

    const v3, 0x7f090a1d

    const v7, 0x7f0202f7

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x4

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    sget-object v1, Lcom/android/phone/UsimDownload$15;->$SwitchMap$com$android$phone$UsimDownload$ScreenMode:[I

    invoke-virtual {p1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a07

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "ril.domesticOta"

    const-string v2, "UsimDownload"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a08

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a09

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0202ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "SKTNumRegFail"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a08

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090a13

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090a23

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "SKTNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a08

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090a13

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090a14

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v1, "ril.domesticOta"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ril.domesticOtaStart"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/phone/UsimDownload;->closePopup(J)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a0e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "SKT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "SKT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "SKT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LGT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "RefreshReset"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    :cond_4
    const-string v1, "ril.domesticOtaStart"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ril.domesticOta"

    const-string v2, "RefreshReset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "KTT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    const-string v1, "LGT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "KTT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_8
    const-string v1, "LGT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "UsimRemovedReset"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v1, 0x1b58

    invoke-direct {p0, v1, v2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "UsimDownload"

    const-string v2, "KtUsimRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a16

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a17

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iput-boolean v6, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a19

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a1a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a1c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "ril.domesticOtaStart"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x470000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v1, "KtNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a1b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_d
    const-string v1, "UsimDownload"

    const-string v2, "KtNumRegFailRetryNo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a1e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a26

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a24

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a26

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a21

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a26

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a23

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "LGTNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a26

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a22

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0202ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "LGTNumRegFail"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f090a26

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f090a29

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0202ff

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public emergencyCallAction()V
    .locals 2

    const-string v0, "com.android.phone.EmergencyDialer.LIST"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->startActivity(Landroid/content/Intent;)V

    const-string v0, "KTT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.numreg_emergency"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initPrefOTA()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "UsimDownload"

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/UsimDownload;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Download"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "UsimDownload"

    const-string v1, "Set Download = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "UsimDownload"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mApp:Lcom/android/phone/PhoneGlobals;

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "ril.domesticOtaStart"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ril.reject_121315"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ril.simtype"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v7, v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOTAHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    :cond_1
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v7, v0, :cond_3

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/UsimDownload;->requestWindowFeature(I)Z

    const v0, 0x7f0400a4

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->setContentView(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "UsimDownload"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_4
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "UsimDownload"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->initPrefOTA()V

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->updateNetworkStatus()V

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    const v0, 0x7f0a0222

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    const v0, 0x7f0a0224

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/UsimDownload$8;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$8;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/UsimDownload$9;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$9;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/UsimDownload$10;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$10;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/UsimDownload$11;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$11;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/UsimDownload$12;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$12;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "REFRESHRESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_5
    :goto_0
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    sget-object v0, Lcom/android/phone/UsimDownload;->productName:Ljava/lang/String;

    const-string v1, "ks02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-direct {p0, v0, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    :cond_6
    invoke-direct {p0, v6}, Lcom/android/phone/UsimDownload;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V

    return-void

    :cond_7
    const-string v1, "SIMREMOVEDRESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_8
    const-string v1, "KTSIMREMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "UsimDownload"

    const-string v1, "KTSIMREMOVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_9
    const-string v1, "KtRegisterMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v4}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v0, "ril.domesticOta"

    const-string v1, "KtfNumberReg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v1, "KtRegisterInIdle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v4, p0, Lcom/android/phone/UsimDownload;->ktIdleNumReg:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V

    invoke-direct {p0, v4}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v0, "ril.domesticOta"

    const-string v1, "KtfNumberReg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v1, "LGTRegisterMain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string v0, "ril.domesticOta"

    const-string v1, "LGTNumberReg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "LGTRegistering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->placeCallforOTA()Z

    invoke-direct {p0, v4}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    const-string v0, "ril.domesticOta"

    const-string v1, "LGTNumberReg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "LGTOverseaMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/phone/UsimDownload$ScreenMode;->LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UsimDownload"

    const-string v1, "onDestroy() : SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string v0, "ril.domesticOta"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ril.domesticOtaStart"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1onKeyDown keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2onKeyDown keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause(), simState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    sget-object v1, Lcom/android/phone/UsimDownload;->productName:Ljava/lang/String;

    const-string v2, "ks02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "KTT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.numreg_emergency"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "UsimDownload"

    const-string v2, "onResume() : set to long timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x1770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v6, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    sget-object v1, Lcom/android/phone/UsimDownload;->productName:Ljava/lang/String;

    const-string v2, "ks02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/UsimDownload;->isSystemKeyEventRequested(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "ril.domesticOta"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.sktota.usim.FAIL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.sktota.usim.SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.ktota.usim.READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/UsimDownload;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "KtfNumberReg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "LGTNumberReg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "UsimDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop(), simState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/UsimDownload;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method rebootSystem()V
    .locals 2

    new-instance v0, Lcom/android/phone/UsimDownload$13;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$13;-><init>(Lcom/android/phone/UsimDownload;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public toastRebootSystem()V
    .locals 2

    const v0, 0x7f090a11

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
