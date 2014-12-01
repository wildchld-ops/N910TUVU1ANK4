.class public Landroid/view/animation/SmgAnimation;
.super Ljava/lang/Object;
.source "SmgAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/SmgAnimation$Ratio;,
        Landroid/view/animation/SmgAnimation$AnimationType;
    }
.end annotation


# instance fields
.field public animationType:I

.field public curAngle:F

.field public pivot_x:F

.field public pivot_y:F

.field public pivot_z:F

.field public ratioX:I

.field public ratioY:I

.field public ratioZ:I

.field public shaderAnimationEffect:F

.field public tX:F

.field public tY:F

.field public tZ:F

.field public xAxis:F

.field public yAxis:F

.field public zAxis:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_TRANSLATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/SmgAnimation;->animationType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/SmgAnimation;->curAngle:F

    return-void
.end method

.method public static compareTo(Landroid/view/animation/SmgAnimation;Landroid/view/animation/SmgAnimation;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->animationType:I

    iget v2, p1, Landroid/view/animation/SmgAnimation;->animationType:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/view/animation/SmgAnimation;->curAngle:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->curAngle:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->xAxis:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->xAxis:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->yAxis:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->yAxis:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->zAxis:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->zAxis:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->pivot_x:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->pivot_x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->pivot_y:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->pivot_y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->pivot_z:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->pivot_z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->ratioX:I

    iget v2, p1, Landroid/view/animation/SmgAnimation;->ratioX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->ratioY:I

    iget v2, p1, Landroid/view/animation/SmgAnimation;->ratioY:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->ratioZ:I

    iget v2, p1, Landroid/view/animation/SmgAnimation;->ratioZ:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->tX:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->tX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->tY:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->tY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->tZ:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->tZ:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/animation/SmgAnimation;->shaderAnimationEffect:F

    iget v2, p1, Landroid/view/animation/SmgAnimation;->shaderAnimationEffect:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
