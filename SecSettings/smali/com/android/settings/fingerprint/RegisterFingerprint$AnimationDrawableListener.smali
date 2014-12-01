.class public abstract Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AnimationDrawableListener"
.end annotation


# instance fields
.field anim:Landroid/graphics/drawable/AnimationDrawable;

.field mAnimationHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method


# virtual methods
.method public getTotalDuration()I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onAnimationEnd()V
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->getTotalDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    :cond_2
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method
