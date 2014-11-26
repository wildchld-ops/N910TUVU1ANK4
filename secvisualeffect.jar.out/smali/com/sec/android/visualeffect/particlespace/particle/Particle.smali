.class public Lcom/sec/android/visualeffect/particlespace/particle/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bigRadius:I

.field private dotAlpha:I

.field private dx:F

.field private dy:F

.field private gravity:F

.field private isAlive:Z

.field private isUnlocked:Z

.field private life:I

.field private maxSpeed:F

.field private paint:Landroid/graphics/Paint;

.field private rad:I

.field private randomTotal:I

.field private smallRadius:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .param p1    # F

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40800000

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    const/high16 v0, 0x40e00000

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    const/16 v0, 0x42

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->randomTotal:I

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isUnlocked:Z

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isUnlocked:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x14

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    if-ge v2, v1, :cond_1

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    mul-int/2addr v2, v3

    div-int v0, v2, v1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    if-gtz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    :goto_2
    return-void

    :cond_0
    const/16 v1, 0x1e

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    goto :goto_2
.end method

.method public getBottom()I
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLeft()I
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTop()I
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public initialize(FFI)V
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # I

    const/high16 v6, 0x40000000

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->randomTotal:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->randomTotal:I

    int-to-float v3, v3

    div-float v1, v2, v3

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    :goto_0
    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    div-float/2addr v4, v6

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    float-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:F

    div-float/2addr v4, v6

    float-to-double v4, v4

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isUnlocked:Z

    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iput p2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    return v0
.end method

.method public move()V
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    return-void
.end method

.method public unlock(F)V
    .locals 1
    .param p1    # F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isUnlocked:Z

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    return-void
.end method
