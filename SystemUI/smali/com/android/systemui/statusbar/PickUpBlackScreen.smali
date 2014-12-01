.class public Lcom/android/systemui/statusbar/PickUpBlackScreen;
.super Landroid/app/Activity;
.source "PickUpBlackScreen.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final CHECK_USER_ACTION:I = 0xb

.field private static final DISMISS_POPUP:I = 0xa

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_ON:I = 0x3

.field private static final MESSAGE_SOUND:I = 0x2

.field private static final PICKUP_READY:I = 0x9

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpBlackScreen"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field private lockpause:Z

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickupDialog:Landroid/app/AlertDialog;

.field private mPickupEvent:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->ivt:[B

    new-instance v0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;-><init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    new-instance v0, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen$2;-><init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x64t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x4ft
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/PickUpBlackScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpBlackScreen;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->ivt:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->sound()V

    return-void
.end method

.method private playTone(Landroid/net/Uri;)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "STATUSBAR-PickUpBlackScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone() - Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeUserActivity()V
    .locals 5

    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "pokeUserActivity()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "STATUSBAR-PickUpBlackScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPickUpDialog()V
    .locals 5

    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "showTryDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1030348

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v1, :cond_0

    const v0, 0x1030349

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sound()V
    .locals 3

    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "sound() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/reactive_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->playTone(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    sput-object p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhoneDetect:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->pokeUserActivity()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/16 v3, 0xb

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume() -> registerListenerEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen;->lockpause:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
