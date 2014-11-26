.class public Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;
.super Landroid/view/View;
.source "FingerprintEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$2;,
        Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;
    }
.end annotation


# instance fields
.field private final BIG_SCALE_RATIO:F

.field private final CIRCLE_FIRST_TOTAL:I

.field private final CIRCLE_TOTAL:I

.field private final DRAWING_DELAY_TIME:I

.field private final EFFECTWIDTH_FOR_RATIO:I

.field private final FIRST_RADIUS_OFFSET:F

.field private final FIRST_START_POSITION_RATIO_TARGET:F

.field private final MINIMUM_DRAWING_COUNT_ON_FIRST:I

.field private final MINIMUM_DRAWING_COUNT_ON_STATUS_CHANGE:I

.field private final RADIUS_GAP:F

.field private final SCAN_SECOND_INDEX:I

.field private final SMALL_SCALE_RATIO:F

.field private final STROKE_WIDTH:F

.field private final TAG:Ljava/lang/String;

.field private bgColor:I

.field private bottom:I

.field private capturedImage:Landroid/graphics/Bitmap;

.field private centerX:I

.field private centerY:I

.field private circleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;",
            ">;"
        }
    .end annotation
.end field

.field private circleX:I

.field private circleY:I

.field private circlesMatrix:Landroid/graphics/Matrix;

.field private currentFirstDrawingCount:I

.field private currentFirstStartRatio:F

.field private currentScaleValue:F

.field private currentScanStep:I

.field private currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

.field private effectHeight:I

.field private effectWidth:I

.field private firstRadiusOffset:F

.field private isDrawing:Z

.field private isFirstStart:Z

.field private isScanFailed:Z

.field private left:I

.field private mHandler:Landroid/os/Handler;

.field private maskMatrix:Landroid/graphics/Matrix;

.field private maskPaint:Landroid/graphics/Paint;

.field private maskPath:Landroid/graphics/Path;

.field private maskRadius:F

.field private radiusGap:F

.field private right:I

.field private scanOrder:[[I

.field private scanTotal:I

.field private stroke:F

.field private targetScaleValue:F

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/high16 v2, 0x3f800000

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v1, "VisualeffectFingerprint"

    iput-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->TAG:Ljava/lang/String;

    const/16 v1, 0x25

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->CIRCLE_TOTAL:I

    const/16 v1, 0x1d

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->CIRCLE_FIRST_TOTAL:I

    const/16 v1, 0xd

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->SCAN_SECOND_INDEX:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->DRAWING_DELAY_TIME:I

    const/16 v1, 0x26c

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->EFFECTWIDTH_FOR_RATIO:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->MINIMUM_DRAWING_COUNT_ON_FIRST:I

    iput v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->MINIMUM_DRAWING_COUNT_ON_STATUS_CHANGE:I

    const/high16 v1, 0x41d80000

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->RADIUS_GAP:F

    const/high16 v1, 0x40800000

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->STROKE_WIDTH:F

    iput v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->BIG_SCALE_RATIO:F

    const/high16 v1, 0x40000000

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->FIRST_RADIUS_OFFSET:F

    const v1, 0x3f266666

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->SMALL_SCALE_RATIO:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->FIRST_START_POSITION_RATIO_TARGET:F

    iput v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    iput v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    iput v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isFirstStart:Z

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isScanFailed:Z

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    iput-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const/16 v1, 0x12

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v6

    const/4 v2, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v5, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v5, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v5, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v5, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v6, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v6, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v6, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanOrder:[[I

    const-string v1, "VisualeffectFingerprint"

    const-string v2, "FingerprintEffect : init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "VisualeffectFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintEffect : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bgColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bgColor:I

    iput p2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerX:I

    div-int/lit8 v1, p3, 0x2

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerY:I

    iget-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanOrder:[[I

    array-length v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanTotal:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    const v2, 0x3f4a3d71

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleX:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x3e8f5c29

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleY:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->left:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->right:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerY:I

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->top:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerY:I

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bottom:I

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x441b0000

    div-float v0, v1, v2

    const/high16 v1, 0x40000000

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->firstRadiusOffset:F

    const/high16 v1, 0x40800000

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->stroke:F

    const/high16 v1, 0x41d80000

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->radiusGap:F

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setHandler()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setMask()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setMatrix()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setCircles()V

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->left:I

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->top:I

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->right:I

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x15
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x3
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x11
        0x14
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x18
    .end array-data

    :array_7
    .array-data 4
        0x5
        0x7
        0x1c
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x9
        0x10
    .end array-data

    :array_9
    .array-data 4
        0xe
        0x13
        0x19
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x16
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x17
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x7
        0xb
        0x18
        0x1d
        0x22
    .end array-data

    :array_d
    .array-data 4
        0x2
        0xa
        0xe
        0x12
        0x17
        0x1c
        0x24
    .end array-data

    :array_e
    .array-data 4
        0x3
        0xc
        0x11
        0x16
        0x1f
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x8
        0x13
        0x1a
        0x1e
        0x23
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x9
        0xf
        0x14
        0x19
        0x20
        0x25
    .end array-data

    :array_11
    .array-data 4
        0x6
        0xd
        0x10
        0x15
        0x1b
        0x21
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->left:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->top:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->right:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)I
    .locals 2
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isCircleAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->stopDrawing()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)Z
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z

    return v0
.end method

.method private capture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->capturedImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->capturedImage:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private changeScale(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private complete()V
    .locals 2

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "scan complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setCurrentStatus(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    sget-object v3, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/16 v1, 0x1d

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->draw(Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x25

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isCircleAnimating()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private setAnimationValue()V
    .locals 7

    const/high16 v6, 0x41200000

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isFirstStart:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isFirstStart:Z

    :cond_1
    :goto_1
    const v3, 0x3f266666

    const v4, 0x3eb33334

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setMatrix(F)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    sub-float v2, v3, v4

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    div-float v4, v2, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    sub-float v0, v5, v3

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    div-float v4, v0, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->targetScaleValue:F

    iput v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScaleValue:F

    iput v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstStartRatio:F

    goto :goto_1
.end method

.method private setCircles()V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x25

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleX:I

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleY:I

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->firstRadiusOffset:F

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->radiusGap:F

    add-int/lit8 v6, v1, 0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->stroke:F

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v7, v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;-><init>(IIIFFII)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHandler()V
    .locals 1

    new-instance v0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$1;-><init>(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setMask()V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v6, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    const/high16 v3, -0x3ccc0000

    invoke-virtual {v2, v1, v6, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    const/high16 v3, 0x43340000

    invoke-virtual {v2, v0, v6, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private setMatrix()V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circlesMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circlesMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerY:I

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private setMatrix(F)V
    .locals 7
    .param p1    # F

    const/high16 v5, 0x3f800000

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    sub-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->centerY:I

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circlesMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p1, p1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circlesMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskMatrix:Landroid/graphics/Matrix;

    div-float v3, v5, p1

    div-float v4, v5, p1

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskRadius:F

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->effectHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method private startDrawing()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopDrawing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isDrawing:Z

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->stopDrawing()V

    return-void
.end method

.method public getCurrentScanStep()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    return v0
.end method

.method public getCurrentStatus()Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setAnimationValue()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circlesMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->getCurrentStatus()Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->getCurrentStatus()Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->capturedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->capturedImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->drawCircles(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public scan()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->startDrawing()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isScanFailed:Z

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->getCurrentStatus()Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->COMPLETE:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-virtual {p0, v4}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setCurrentStatus(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;)V

    :cond_0
    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanTotal:I

    if-lt v4, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->complete()V

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    const-string v4, "VisualeffectFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan : currentScanStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_3

    sget-object v4, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-virtual {p0, v4}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setCurrentStatus(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;)V

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x25

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    sget-object v4, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$2;->$SwitchMap$com$sec$android$visualeffect$fingerprint$FingerprintEffect$EffectStatus:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;->ONE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    invoke-virtual {v0, v4}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentStepStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;)V

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;->TWO:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    invoke-virtual {v0, v4}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentStepStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanOrder:[[I

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanOrder:[[I

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    add-int/lit8 v2, v4, -0x1

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    sget-object v5, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->BLUELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {v4, v5}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scanFail()V
    .locals 7

    const/4 v5, 0x1

    iget-boolean v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isScanFailed:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    if-ge v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->startDrawing()V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isScanFailed:Z

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    const-string v4, "VisualeffectFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanFail : currentScanStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanOrder:[[I

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    aget-object v1, v4, v5

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget v4, v1, v2

    add-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->fail()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCurrentStatus(Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;)V
    .locals 3
    .param p1    # Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-eq v2, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    sget-object v2, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->changeScale(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_SECOND:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x25

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->directWhiteLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->capture()V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->changeScale(Z)V

    goto :goto_0
.end method

.method public startEffect()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "VisualeffectFingerprint"

    const-string v3, "startEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->SCANNING_FIRST:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    iput-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentStatus:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    iget-object v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->circleArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;

    sget-object v2, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->clearVariables()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->startDrawing()V

    const/16 v2, 0x3c

    iput v2, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentFirstDrawingCount:I

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->isScanFailed:Z

    iput v4, p0, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->currentScanStep:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->changeScale(Z)V

    return-void
.end method
