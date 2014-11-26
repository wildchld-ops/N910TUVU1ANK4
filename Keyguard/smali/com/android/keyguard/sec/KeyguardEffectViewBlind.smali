.class public Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewBlind.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final DRAG_SOUNT_DISTANCE_THRESHOLD:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOC:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private affordanceDelay:J

.field private affordanceRect:Landroid/graphics/Rect;

.field private blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

.field private initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

.field private isAsyncPostExecuted:Z

.field private isCleanUp:Z

.field private isHandleUnlock:Z

.field private isOnConfigurationChanged:Z

.field private isShow:Z

.field private isShowUnlockAffordance:Z

.field private isSystemSoundChecked:Z

.field private isUpdate:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DBG:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->leftVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->rightVolumeMax:F

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->UNLOCK_SOUND_PLAY_TIME:J

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_START_POINT:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUND_COUNT_INTERVAL:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->DRAG_SOUNT_DISTANCE_THRESHOLD:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->SOUND_ID_TAB:I

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->SOUND_ID_UNLOC:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    const-string v0, "BlindEffect"

    const-string v2, "KeyguardEffectViewBlind : Constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    new-array v3, v5, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->initBlind:Lcom/android/keyguard/sec/KeyguardEffectViewBlind$initBlindEffectByAsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)J
    .locals 2
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceDelay:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Lcom/sec/android/visualeffect/blind/BlindEffect;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Lcom/sec/android/visualeffect/blind/BlindEffect;)Lcom/sec/android/visualeffect/blind/BlindEffect;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewBlind;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    return p1
.end method

.method private checkSound()V
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makeSound()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "BlindEffect"

    const-string v1, "new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    const v3, 0x7f050004

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

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->checkSound()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->rightVolumeMax:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBlind;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x2

    const-string v9, "BlindEffect"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v12, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v12, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    mul-int/2addr v10, v4

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const-string v9, "BlindEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.getPixel("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    mul-int/2addr v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v6
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->releaseSound()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isCleanUp:Z

    goto :goto_0
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

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-nez v0, :cond_1

    const-string v0, "BlindEffect"

    const-string v1, "isAsyncPostExecuted=false (handleTouchEvent)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->stopReleaseSound()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2

    const-string v0, "BlindEffect"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->makeSound()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->playSound(I)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x1

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : handleUnlock (exit xml animation removed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockEffect()V

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->playSound(I)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isHandleUnlock:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isOnConfigurationChanged:Z

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->initAnimationValue()V

    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->show()V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->makeSound()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShow:Z

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceDelay:J

    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->affordanceRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isShowUnlockAffordance:Z

    goto :goto_0
.end method

.method public update()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "KeyguardEffectViewBlind : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isAsyncPostExecuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->blindEffect:Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;->isUpdate:Z

    goto :goto_0
.end method
