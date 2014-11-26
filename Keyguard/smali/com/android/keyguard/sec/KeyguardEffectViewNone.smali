.class public Lcom/android/keyguard/sec/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->DBG:Z

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v10, v9, :cond_0

    move v11, v10

    :goto_0
    int-to-float v0, v11

    const/high16 v1, 0x44870000

    div-float v8, v0, v1

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v2, v0, 0x2

    const/high16 v0, 0x40800000

    mul-float/2addr v0, v8

    float-to-int v3, v0

    const/high16 v0, 0x40c00000

    mul-float/2addr v0, v8

    float-to-int v4, v0

    const/16 v0, 0x1e

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-instance v0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    const v6, 0x7f02012c

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;-><init>(Landroid/content/Context;III[II)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    move v11, v9

    goto :goto_0

    :array_0
    .array-data 4
        0x7f02012d
        0x7f02012e
        0x7f02012f
        0x7f020130
        0x7f020131
        0x7f020132
        0x7f020133
        0x7f020134
        0x7f020135
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f02014a
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->changeModeForShorcutButton(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->changeModeForCircleUnlock()V

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
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->unlock()V

    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
