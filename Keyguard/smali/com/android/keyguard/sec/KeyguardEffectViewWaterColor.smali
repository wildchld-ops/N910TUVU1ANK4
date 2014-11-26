.class public Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWaterColor.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isSystemSoundChecked:Z

.field private isTablet:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSound_tap_id:I

.field private mSound_unlock_id:I

.field private mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

.field private mWallpaperPath:Ljava/lang/String;

.field private phoneMode:I

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1    # Landroid/content/Context;

    const/4 v13, 0x2

    const/high16 v1, 0x3f800000

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->DBG:Z

    const-string v0, "WaterColor_KeyguardEffectView"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->TAG:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mWallpaperPath:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSound_tap_id:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSound_unlock_id:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->SOUND_ID_UNLOC:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isUnlocked:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "KeyguardEffectViewWaterColor Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v0, "tablet"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    :cond_0
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    if-le v0, v1, :cond_2

    iput v13, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    :goto_0
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "isTablet is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x2

    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->phoneMode:I

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->windowHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    const v0, 0x7f020290

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    const v0, 0x7f020291

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    const v0, 0x7f020292

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v7

    const v0, 0x7f020294

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    const v0, 0x7f020293

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->setBackground(Landroid/graphics/Bitmap;)V

    new-array v0, v13, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

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

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

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

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "WaterColor sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const v3, 0x7f050015

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    const v3, 0x7f050016

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "WaterColor_KeyguardEffectView"

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
    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "WaterColor_KeyguardEffectView"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->cleanUp()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->releaseSound()V

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

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->checkSound()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeSound()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p2}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->handleTouchEventForPatternLock(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "handleUnlock, SOUND PLAY SOUND_ID_UNLOC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->unlockEffect()V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->playSound(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isUnlocked:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1    # Landroid/content/res/Configuration;

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isTablet:Z

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyguardManager.isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    if-eq v0, v4, :cond_0

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->onConfigurationChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "= onConfigurationChanged = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    if-eq v0, v3, :cond_0

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->prevOrientation:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->onConfigurationChanged()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const-string v0, "WaterColor_KeyguardEffectView"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->startAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isUnlocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->stopAnimation()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->reset()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->screenTurnedOn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isUnlocked:Z

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->makeSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "WaterColor_KeyguardEffectView"

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

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    if-eqz v0, :cond_0

    const-string v0, "WaterColor_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->mView:Lcom/sec/android/visualeffect/watercolor/WaterColorView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/WaterColorView;->changeBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
