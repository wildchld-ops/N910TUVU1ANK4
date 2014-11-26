.class public Lcom/android/keyguard/sec/KeyguardEffectViewTilt;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewTilt.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final IMAGE_TYPE_NORMAL:I

.field private mContext:Landroid/content/Context;

.field private mImageType:I

.field private mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->IMAGE_TYPE_NORMAL:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/visualeffect/tilt/TiltEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->changeBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->addView(Landroid/view/View;)V

    return-void
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mContext:Landroid/content/Context;

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

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "Tilt_KeyguardEffectViewTilt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackground mImageType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Tilt_KeyguardEffectViewTilt"

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
    const-string v2, "Tilt_KeyguardEffectViewTilt"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "Tilt_KeyguardEffectViewTilt"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

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

    const/4 v0, 0x0

    return v0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->handleSensorEvent(Landroid/hardware/SensorEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 0

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public settingsForImageType(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setAlphaImageResources(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setTiltEnable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    const v1, 0x7f0200e3

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setAlphaImageResources(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setTiltEnable(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mImageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    const v1, 0x7f0200e4

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setAlphaImageResources(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->setTiltEnable(Z)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "Tilt_KeyguardEffectViewTilt"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    if-eqz v0, :cond_0

    const-string v0, "Tilt_KeyguardEffectViewTilt"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->mTiltEffect:Lcom/sec/android/visualeffect/tilt/TiltEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->changeBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
