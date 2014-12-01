.class public Lcom/android/systemui/statusbar/PickUpTutorial;
.super Landroid/app/Activity;
.source "PickUpTutorial.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final HELP_PLUG_PKG:Ljava/lang/String; = "com.samsung.helpplugin"

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_OFF_STATE:I = 0x5

.field private static final LCD_ON:I = 0x3

.field private static final LCD_ON_STATE:I = 0x6

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpTutorial"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field mAnimation:Landroid/view/animation/Animation;

.field private mBack:Z

.field private mCount:I

.field private mDownDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLCDisOn:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPaused:Z

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickUpDialog:Landroid/app/AlertDialog;

.field private mPickUpTutorial:Landroid/widget/FrameLayout;

.field private mReadyToShowPutDownDialog:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$1;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$2;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void

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

.method static synthetic access$000(Lcom/android/systemui/statusbar/PickUpTutorial;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->ivt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/PickUpTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/systemui/statusbar/PickUpTutorial;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/PickUpTutorial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/PickUpTutorial;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method private canNavigationBarMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "STATUSBAR-PickUpTutorial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ResourceName id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_0
    :try_start_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "PackageManager is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "not find resource!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v5, "STATUSBAR-PickUpTutorial"

    const-string v6, "Resource is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_1
.end method

.method private putDownDialog()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PickUpTutorial$3;-><init>(Lcom/android/systemui/statusbar/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    return-void
.end method

.method public static setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    move-object v2, p1

    move-object v1, p0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v2, :cond_0

    const-string v6, "drawable"

    const-string v7, "com.samsung.helpplugin"

    invoke-static {v1, p2, v6, v7}, Lcom/android/systemui/statusbar/PickUpTutorial;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    :try_start_0
    const-string v6, "com.samsung.helpplugin"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v6, "STATUSBAR-PickUpTutorial"

    const-string v7, "The resource not downloaded yet"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryPickUpDialog()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public isDownloadable()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_HELP_HUB_APK_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p2, :sswitch_data_0

    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0b01d2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mBack:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    sput-object p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->isDownloadable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PickUpTutorial;->putDownDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const-string v1, "motion_pick_up_bg_land"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/PickUpTutorial;->setBackgroundViewer(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/PickUpTutorial;->setMotionSensor(Z)V

    iput v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mCount:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mPaused:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3

    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionSensor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
