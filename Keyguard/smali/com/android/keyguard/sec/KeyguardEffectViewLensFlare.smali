.class public Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLensFlare.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const v1, 0x7f0200f9

    const v2, 0x7f0200fa

    const v3, 0x7f0200fb

    const v4, 0x7f0200fc

    const v5, 0x7f0200fd

    const v6, 0x7f0200fe

    const v7, 0x7f0200ff

    const v8, 0x7f020100

    const v9, 0x7f020101

    const v10, 0x7f020102

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageResourceId(IIIIIIIIII)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const v1, 0x7f05000d

    const v2, 0x7f05000e

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setSoundResourceId(II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUp()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getUnlockDelay()J

    move-result-wide v0

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
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public playLockSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playLockSound()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->reset()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenTurnedOff()V

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenTurnedOn()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->update()V

    return-void
.end method
