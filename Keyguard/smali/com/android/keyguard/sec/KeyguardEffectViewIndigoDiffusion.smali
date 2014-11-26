.class public Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    }
.end annotation


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field imageType:I

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

.field private mWallpaperPath:Ljava/lang/String;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const/4 v8, 0x2

    const/high16 v4, 0x3f800000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "IndigoDiffusion_KeyguardEffect"

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mWallpaperPath:Ljava/lang/String;

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    const-wide/16 v3, 0x7d0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isTablet:Z

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->phoneMode:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    const-string v3, "IndigoDiffusion_KeyguardEffect"

    const-string v4, "KeyguardEffectViewIndigoDiffusion Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isTablet:Z

    :cond_0
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isTablet:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isTablet:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    if-le v3, v4, :cond_2

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    :goto_0
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->phoneMode:I

    const-string v3, "IndigoDiffusion_KeyguardEffect"

    const-string v4, "isTablet is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->phoneMode:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;-><init>(Landroid/content/Context;III)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setRippleConfiguration()V

    new-array v3, v8, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    const v4, 0x7f0201b6

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    const/16 v4, 0x23

    const/16 v5, 0x23

    const/16 v6, 0x55

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->changeColor(III)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    return-object v0
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "IndigoDiffusion sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const v3, 0x7f05000b

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const v3, 0x7f050014

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-nez v0, :cond_1

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "new SoundHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1    # I

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "IndigoDiffusion_KeyguardEffect"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "IndigoDiffusion_KeyguardEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "IndigoDiffusion_KeyguardEffect"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "IndigoDiffusion_KeyguardEffect"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRippleConfiguration()V
    .locals 20

    const/16 v3, 0x68

    const/16 v4, 0x68

    const v5, 0x3eb33333

    const/high16 v6, 0x3f000000

    const v7, -0x3dd3cccd

    const v8, -0x3e41999a

    const/4 v9, 0x3

    const/16 v10, 0x15

    const/16 v11, 0x15

    const/4 v12, 0x3

    const/high16 v13, 0x42340000

    const/high16 v14, 0x41c80000

    const/high16 v15, 0x41f00000

    const/high16 v16, 0x42380000

    const v2, 0x3e4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v2, v2, v18

    float-to-int v0, v2

    move/from16 v17, v0

    const-string v2, "IndigoDiffusion_KeyguardEffect"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "rippleDragThreshold = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0xa00

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x640

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x640

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0xa00

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    :cond_1
    const/16 v3, 0x4a

    const/16 v4, 0x4a

    const v5, 0x3e4ccccd

    const v6, 0x3eb33333

    const v7, -0x3dd3cccd

    const v8, -0x3e2ccccd

    const/4 v9, 0x2

    const/16 v10, 0xe

    const/16 v11, 0xe

    const/4 v12, 0x2

    const/16 v17, 0xfa

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual/range {v2 .. v17}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->setRippleConfiguration(IIFFFFIIIIFFFFI)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-eq v2, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    :cond_5
    const v8, -0x3e388937

    const/4 v9, 0x3

    const/16 v10, 0x15

    const/16 v11, 0x13

    const/4 v12, 0x3

    const/high16 v13, 0x42400000

    const/high16 v14, 0x41d80000

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x2d0

    move/from16 v0, v18

    if-ne v2, v0, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x500

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x2d0

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x21c

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x3c0

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x21c

    move/from16 v0, v18

    if-eq v2, v0, :cond_2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x1e0

    move/from16 v0, v18

    if-ne v2, v0, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-eq v2, v0, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    const/16 v18, 0x320

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    const/16 v18, 0x1e0

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    :cond_c
    const/16 v3, 0x4a

    const/16 v4, 0x4a

    const/4 v9, 0x2

    const/16 v10, 0xe

    const/16 v11, 0xe

    const/4 v12, 0x2

    const/high16 v15, 0x41e00000

    const/high16 v16, 0x42340000

    goto/16 :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->cleanUp()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->releaseSound()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v1, p2}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->checkSound()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "IndigoDiffusion_KeyguardEffect"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->playSound(I)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->playSound(I)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isTablet:Z

    if-eqz v0, :cond_0

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    if-eq v0, v4, :cond_0

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->onConfigurationChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->onConfigurationChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->startAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->stopAnimation()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->reset()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->screenTurnedOn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "IndigoDiffusion_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "or mView is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "setContextualWallpaper bmp isn\'t null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public settingsForImageType(I)V
    .locals 4
    .param p1    # I

    const/16 v2, 0x23

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "settingsForImageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->imageType:I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    const/16 v1, 0x55

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->changeColor(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    const/16 v1, 0x50

    const/16 v2, 0xa

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->changeColor(III)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "IndigoDiffusion_KeyguardEffect"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->mView:Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/indigodiffusion/IndigoDiffusionView;->changeBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method
