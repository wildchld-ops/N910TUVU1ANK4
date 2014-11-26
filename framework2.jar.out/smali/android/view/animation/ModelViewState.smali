.class public Landroid/view/animation/ModelViewState;
.super Ljava/lang/Object;
.source "ModelViewState.java"


# instance fields
.field public smgAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/animation/ModelViewState;)Z
    .locals 8
    .param p1    # Landroid/view/animation/ModelViewState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v6, p1, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/SmgAnimation;

    invoke-static {v0, v2}, Landroid/view/animation/SmgAnimation;->compareTo(Landroid/view/animation/SmgAnimation;Landroid/view/animation/SmgAnimation;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eq v6, v7, :cond_3

    move v4, v5

    goto :goto_0
.end method

.method public getAnimationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnimationState()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public printAnimClass()V
    .locals 2

    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/SmgAnimation;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/animation/ModelViewState;->resetAnimationState()V

    const/4 v0, 0x1

    return v0
.end method

.method public resetAnimationState()V
    .locals 1

    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAnimationList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/animation/ModelViewState;->resetAnimationState()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    iget-object v2, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRotationAnimation(FFFFFIFIFI)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # F
    .param p8    # I
    .param p9    # F
    .param p10    # I

    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_ROTATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    iput p1, v0, Landroid/view/animation/SmgAnimation;->curAngle:F

    iput p2, v0, Landroid/view/animation/SmgAnimation;->xAxis:F

    iput p3, v0, Landroid/view/animation/SmgAnimation;->yAxis:F

    iput p4, v0, Landroid/view/animation/SmgAnimation;->zAxis:F

    iput p5, v0, Landroid/view/animation/SmgAnimation;->pivot_x:F

    iput p7, v0, Landroid/view/animation/SmgAnimation;->pivot_y:F

    iput p9, v0, Landroid/view/animation/SmgAnimation;->pivot_z:F

    iput p6, v0, Landroid/view/animation/SmgAnimation;->ratioX:I

    iput p8, v0, Landroid/view/animation/SmgAnimation;->ratioY:I

    iput p10, v0, Landroid/view/animation/SmgAnimation;->ratioZ:I

    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShaderAnim(F)V
    .locals 2
    .param p1    # F

    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_SHADER_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    iput p1, v0, Landroid/view/animation/SmgAnimation;->shaderAnimationEffect:F

    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSmgAnimationState(Landroid/view/animation/ModelViewState;)V
    .locals 3
    .param p1    # Landroid/view/animation/ModelViewState;

    iget-object v2, p1, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    iget-object v2, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTranslationAnim(FFFIII)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I
    .param p6    # I

    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_TRANSLATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    iput p1, v0, Landroid/view/animation/SmgAnimation;->tX:F

    iput p2, v0, Landroid/view/animation/SmgAnimation;->tY:F

    iput p3, v0, Landroid/view/animation/SmgAnimation;->tZ:F

    iput p4, v0, Landroid/view/animation/SmgAnimation;->ratioX:I

    iput p5, v0, Landroid/view/animation/SmgAnimation;->ratioY:I

    iput p6, v0, Landroid/view/animation/SmgAnimation;->ratioZ:I

    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
