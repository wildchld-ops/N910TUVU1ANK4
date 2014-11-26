.class public Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBrilliantRing.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private dragSreamID:I

.field private imageType:I

.field private isHasWindowFocus:Z

.field private isLoadCompleted:Z

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field mLongPressTime:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

.field private mWallpaperPath:Ljava/lang/String;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

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

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->DBG:Z

    const-string v3, "BrilliantRing_KeyguardEffectView"

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->TAG:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mWallpaperPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    const-wide/16 v3, 0x7d0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_TAB:I

    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_DRAG:I

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_UNLOC:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isLoadCompleted:Z

    const-wide/16 v3, 0x19b

    iput-wide v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowWidth:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowHeight:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isTablet:Z

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->phoneMode:I

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->imageType:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isHasWindowFocus:Z

    const-string v3, "BrilliantRing_KeyguardEffectView"

    const-string v4, "KeyguardEffectViewBrilliantRing Constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowWidth:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowHeight:I

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isTablet:Z

    :cond_0
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isTablet:Z

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isTablet:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowHeight:I

    if-le v3, v4, :cond_2

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    :goto_0
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->phoneMode:I

    const-string v3, "BrilliantRing_KeyguardEffectView"

    const-string v4, "isTablet is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->phoneMode:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowWidth:I

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->windowHeight:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;-><init>(Landroid/content/Context;III)V

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    const v4, 0x7f020003

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->setResourcesBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->setBackground(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isLoadCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

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

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

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

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "BrilliantRing sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const v3, 0x7f050009

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const v3, 0x7f050008

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const v4, 0x7f05000a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/high16 v6, 0x3f800000

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    const-string v0, "BrilliantRing_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLoadCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isLoadCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->sendDragSoundInfo(Landroid/media/SoundPool;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "BrilliantRing_KeyguardEffectView"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "BrilliantRing_KeyguardEffectView"

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
    const-string v2, "BrilliantRing_KeyguardEffectView"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "BrilliantRing_KeyguardEffectView"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->cleanUp()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->handleSensorEvent(Landroid/hardware/SensorEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    :cond_0
    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "BrilliantRing_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->sendDragSoundFadeOutForTouchUp()V

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

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

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->unlockEffect()V

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "SOUND PLAY SOUND_ID_UNLOC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->sendDragSoundFadeOutForUnlock()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSreamID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isTablet:Z

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    if-eq v0, v4, :cond_0

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->onConfigurationChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->onConfigurationChanged()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string v0, "BrilliantRing_KeyguardEffectView"

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

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isHasWindowFocus:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->setParentWindowFocusState(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->startAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->stopAnimation()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->reset()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->screenTurnedOn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->changeBackground(Landroid/graphics/Bitmap;)V

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

    const-string v1, "BrilliantRing_KeyguardEffectView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingsForImageType, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->imageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->imageType:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const v1, 0x7f0200e3

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->settingsForImageType(ILandroid/graphics/Bitmap;)V

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->imageType:I

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v1, 0x7f0200e4

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "BrilliantRing_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mView:Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/brilliantring/BrilliantRingView;->changeBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
