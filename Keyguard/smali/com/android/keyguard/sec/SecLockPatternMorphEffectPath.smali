.class public Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;
.super Ljava/lang/Object;
.source "SecLockPatternMorphEffectPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;,
        Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private lastX:F

.field private lastX1:F

.field private lastY:F

.field private lastY1:F

.field private final offsetX:F

.field private final offsetY:F

.field private path:[Landroid/graphics/Path;

.field private final pathTotal:I

.field private scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 3

    const/16 v1, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecLockPatternViewMorphEffectPath"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->pathTotal:I

    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const v0, -0x3c3a8000

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetX:F

    const v0, -0x3b900ccd

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->offsetY:F

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    const-string v1, "SecLockPatternMorphEffectPath : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecLockPatternMorphEffectPath : scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->setPath()V

    return-void
.end method

.method private setPath()V
    .locals 10

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const v0, -0x3c3a8000

    const v1, -0x3b900ccd

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->scale:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x42b40000

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43d8d7ae

    const/high16 v3, 0x44700000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3f7028f6

    const v5, -0x40633333

    const v6, -0x3ef4c49c

    const v7, -0x3fa98937

    const v8, -0x3ebaf9db

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x413e76c9

    const v4, -0x4074fdf4

    const v5, -0x40b6872b

    const v6, -0x3ff5d2f2

    const v7, -0x405ed917

    const v8, -0x3fb353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40b9db23

    const v4, -0x402624dd

    const v5, -0x4029fbe7

    const v6, -0x3faa7efa

    const v7, -0x3fd45a1d

    const v8, -0x3f637cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40528f5c

    const v4, -0x3ffa8f5c

    const v5, -0x3fc5b22d

    const v6, -0x3f7f22d1

    const v7, -0x3f6b74bc

    const v8, -0x3f466e98

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26147b

    const v4, -0x3f20ed91

    const v5, -0x3e7d7efa

    const v6, -0x3ecb374c

    const v7, -0x3e296042

    const v8, -0x3ecb374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4123a5e3

    const/4 v4, 0x0

    const v5, 0x419bfdf4

    const v6, -0x3f7cfdf4

    const v7, 0x41d21cac

    const v8, -0x3ed449ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe1a9fc

    const v4, -0x40228f5c

    const v5, 0x4056b852

    const v6, -0x3f977cee

    const/high16 v7, 0x40980000

    const v8, -0x3f4a3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f8db22d

    const v4, -0x402fbe77

    const v5, 0x4005d2f2

    const v6, -0x3fa9fbe7

    const v7, 0x403be76d

    const v8, -0x3f5b8d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0ccccd

    const v4, -0x406a5e35

    const v5, 0x3f826e98

    const v6, -0x3fe78d50

    const v7, 0x3fb95810

    const v8, -0x3f98c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43d83a5e

    const v4, 0x44722e04

    const v5, 0x43d8d7ae

    const v6, 0x44712042

    const v7, 0x43d8d7ae

    const/high16 v8, 0x44700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43daed91

    const/high16 v3, 0x44700000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3f15374c

    const v5, -0x3fada1cb

    const v6, -0x3ea18937

    const v7, -0x3ef89375

    const v8, -0x3e6d72b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40466666

    const v4, -0x40428f5c

    const v5, -0x3fa8d4fe

    const v6, -0x3fa6e979

    const v7, -0x3f5428f6

    const v8, -0x3f558937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40c7ae14

    const v4, -0x409d70a4

    const v5, -0x404353f8

    const v6, -0x402147ae

    const v7, -0x3feeb852

    const v8, -0x3fdc7ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26147b

    const v4, -0x3f20ed91

    const v5, -0x3e7d7efa

    const v6, -0x3ecb374c

    const v7, -0x3e296042

    const v8, -0x3ecb374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4123a5e3

    const/4 v4, 0x0

    const v5, 0x419bfdf4

    const v6, -0x3f7cfdf4

    const v7, 0x41d21cac

    const v8, -0x3ed449ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f916873

    const v4, -0x407147ae

    const v5, 0x400c5a1d

    const v6, -0x3fec28f6

    const v7, 0x404b9581

    const v8, -0x3f9c1893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd7ae14

    const v4, -0x402fdf3b

    const v5, 0x40520c4a

    const v6, -0x3fb27efa

    const v7, 0x40928f5c

    const v8, -0x3f6f7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43d930e5

    const v4, 0x447391ba

    const v5, 0x43daed91

    const v6, 0x4471e2f2

    const v7, 0x43daed91

    const/high16 v8, 0x44700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43d7e958

    const v3, 0x446aef5c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fad2f1b

    const v4, -0x3fdc0831

    const v5, -0x3ec70625

    const v6, -0x3ef5a5e3

    const v7, -0x3e7b9fbe

    const v8, -0x3ecc5604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f44624e

    const v4, -0x3f8cfdf4

    const v5, -0x3eb276c9

    const v6, -0x3f3fa5e3

    const v7, -0x3e5d3127

    const v8, -0x3f3fa5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f3126f

    const/4 v4, 0x0

    const v5, 0x416a978d

    const v6, -0x3fef3b64

    const v7, 0x41a48b44

    const v8, -0x3f3b645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40aaf9db

    const v4, -0x3fcfced9

    const v5, 0x415fef9e

    const v6, -0x3eecac08

    const v7, 0x4185f9db

    const v8, -0x3eca2d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d15810

    const v4, -0x3f781893

    const v5, 0x412df3b6

    const v6, -0x3ec6353f

    const v7, 0x412df3b6

    const v8, -0x3e601062

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dd8e35

    const v4, 0x446ddc4a

    const v5, 0x43db4c6a

    const v6, 0x446bfc39

    const v7, 0x43d7e958

    const v8, 0x446aef5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e02ed9

    const/high16 v3, 0x44700000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ed22d0e

    const v5, -0x3f14cccd

    const v6, -0x3e5ff1aa

    const v7, -0x3e753b64

    const v8, -0x3e4a0e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faf5c29

    const v4, -0x40374bc7

    const v5, -0x3ee18937

    const v6, -0x3f3deb85

    const v7, -0x3e821062

    const v8, -0x3ef2bc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f45374c

    const v4, -0x3f903127

    const v5, -0x3eb39db2

    const v6, -0x3f424dd3

    const v7, -0x3e5e3333

    const v8, -0x3f424dd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ec8312

    const/4 v4, 0x0

    const v5, 0x41646a7f

    const v6, -0x3ff6a7f0

    const v7, 0x41a0a9fc

    const v8, -0x3f45374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d8bc6a

    const v4, -0x3fc1a9fc

    const v5, 0x41571aa0

    const v6, -0x3efa0419

    const v7, 0x417dae14

    const v8, -0x3ef21cac

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e73b646

    const v4, -0x42b74bc7

    const v5, 0x3ef43958

    const v6, -0x42083127

    const v7, 0x3f36872b

    const v8, -0x41a8f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dca4dd

    const v4, 0x4474eac1

    const v5, 0x43e02ed9

    const v6, 0x4472aa5e

    const v7, 0x43e02ed9

    const/high16 v8, 0x44700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e2c4fe

    const/high16 v3, 0x44700000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3ece1062

    const v5, -0x3f070a3d

    const v6, -0x3e5ca7f0

    const v7, -0x3e6e76c9

    const v8, -0x3e49e560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x415cac08

    const v4, -0x422b020c

    const v5, -0x40da1cac

    const v6, -0x41b020c5

    const v7, -0x40808312

    const v8, -0x416f9db2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc2e148

    const v4, -0x40d53f7d

    const v5, -0x3ed5f7cf

    const v6, -0x3f66a7f0

    const v7, -0x3e66872b

    const v8, -0x3ef7ba5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f451eb8

    const v4, -0x3f8fced9

    const v5, -0x3eb378d5

    const v6, -0x3f41fbe7

    const v7, -0x3e5e126f

    const v8, -0x3f41fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e9cac1

    const/4 v4, 0x0

    const v5, 0x4161e354

    const v6, -0x3ff9ba5e

    const v7, 0x419f1062

    const v8, -0x3f493f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4108b439

    const v4, -0x3fa624dd

    const v5, 0x41817efa

    const v6, -0x3f225604

    const v7, 0x4198a5e3

    const v8, -0x3efd9168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401f2b02

    const v4, -0x40791687

    const v5, 0x4039db23

    const v6, -0x4063d70a

    const v7, 0x40672b02

    const v8, -0x4043d70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cac0831

    const v4, -0x441a9fbe

    const v5, 0x3f928f5c

    const v6, -0x41418937

    const v7, 0x3f9872b0

    const v8, -0x41245a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43dfb0c5

    const v4, 0x447495e3

    const v5, 0x43e2c4fe

    const v6, 0x44727917

    const v7, 0x43e2c4fe

    const/high16 v8, 0x44700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e55042

    const/high16 v3, 0x44700000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3eb96873

    const v5, -0x3ee35810

    const v6, -0x3e4bbe77

    const v7, -0x3e4f70a4

    const v8, -0x3e4774bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f8676c9

    const v4, -0x40758106

    const v5, -0x3ec40831

    const v6, -0x3f73ef9e

    const v7, -0x3e556c8b

    const v8, -0x3ef8d4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f44ac08

    const v4, -0x3f8e0419

    const v5, -0x3eb2d4fe

    const v6, -0x3f408312

    const v7, -0x3e5d851f

    const v8, -0x3f408312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40e80000

    const/4 v4, 0x0

    const v5, 0x41603958

    const v6, -0x3ffbd70a

    const v7, 0x419e020c

    const v8, -0x3f4be76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412574bc

    const v4, -0x3f7f74bc

    const v5, 0x41940419

    const v6, -0x3f0cac08

    const v7, 0x41b1e76d

    const v8, -0x3ef9be77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f90a3d7

    const v4, -0x418d4fdf

    const v5, 0x4006978d

    const v6, -0x40f89375

    const v7, 0x403a2d0e

    const v8, -0x40b53f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e14375

    const v4, 0x44752b64

    const v5, 0x43e55042

    const v6, 0x4472d25e

    const v7, 0x43e55042

    const/high16 v8, 0x44700000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e7fba6

    const v3, 0x446ffff0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    const v4, -0x3eb61cac

    const v5, -0x3edc51ec

    const v6, -0x3e49353f

    const v7, -0x3e493333

    const v8, -0x3e49353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4122d0e5

    const/4 v4, 0x0

    const v5, -0x40a39581

    const v6, 0x3c75c28f

    const v7, -0x405b22d1

    const v8, 0x3d1fbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f74f5c3

    const v4, -0x4079374c

    const v5, -0x3eb0624e

    const v6, -0x3f8bf7cf

    const v7, -0x3e3bed91

    const v8, -0x3ef59db2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f441893

    const v4, -0x3f8bd70a

    const v5, -0x3eb20c4a

    const v6, -0x3f3eb852

    const v7, -0x3e5cd4fe

    const v8, -0x3f3eb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e64dd3

    const/4 v4, 0x0

    const v5, 0x415ea7f0

    const v6, -0x3ffde354

    const/high16 v7, 0x419d0000

    const v8, -0x3f4e76c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4142a7f0

    const v4, -0x3f6a7efa

    const v5, 0x41a7f7cf

    const v6, -0x3f09db23

    const v7, 0x41cb20c5

    const v8, -0x3ef60419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f61cac1

    const v4, -0x41c08312

    const v5, 0x3fd374bc

    const v6, -0x4149374c

    const v7, 0x40156042

    const v8, -0x40fdb22d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e32d71

    const v4, 0x44758de3

    const v5, 0x43e7fba6

    const v6, 0x44730ea8

    const v7, 0x43e7fba6

    const v8, 0x446ffff0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43dfe9ba

    const v3, 0x446a5958

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4062d0e5

    const/4 v4, 0x0

    const v5, -0x3fe46a7f

    const v6, 0x3dd0e560

    const v7, -0x3f9947ae

    const v8, 0x3e94fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4165e354

    const v4, -0x427ef9db

    const v5, -0x40e5e354

    const v6, -0x41fdf3b6

    const v7, -0x4090e560

    const v8, -0x41af1aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f66f1aa

    const v4, -0x40722d0e

    const v5, -0x3e9cc49c

    const v6, -0x3fb322d1

    const v7, -0x3e21126f

    const v8, -0x3ef1f7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f895810

    const v5, -0x3eb122d1

    const v6, -0x3f3ca3d7

    const v7, -0x3e5c0831

    const v8, -0x3f3ca3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49ba6

    const/4 v4, 0x0

    const v5, 0x415d126f

    const v6, -0x3fffdf3b

    const/high16 v7, 0x419c0000

    const v8, -0x3f50fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416024dd

    const v4, -0x3f549ba6

    const v5, 0x41bbe76d

    const v6, -0x3f0722d1

    const v7, 0x41e45604

    const v8, -0x3ef25604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fbd2f1b

    const v4, -0x415f3b64

    const v5, 0x40298937

    const v6, -0x40fd2f1b

    const v7, 0x40658106

    const v8, -0x40dd2f1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ed91687

    const v4, 0x3cc49ba6

    const v5, 0x3f581062

    const v6, 0x3d810625

    const v7, 0x3fa2f1aa

    const v8, 0x3d810625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4147ba5e

    const/4 v4, 0x0

    const v5, 0x41b4d4fe

    const v6, -0x3ede1062

    const v7, 0x41b4d4fe

    const v8, -0x3e4b2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43e6278d

    const v4, 0x446a5958

    const v5, 0x43dfe9ba

    const v6, 0x446a5958

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e3199a

    const v3, 0x446a6906

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40160419

    const/4 v4, 0x0

    const v5, -0x3f99eb85

    const v6, 0x3e79db23

    const v7, -0x3f568f5c

    const v8, 0x3f283127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40710625

    const v4, -0x41f1a9fc

    const v5, -0x3fe6872b

    const v6, -0x4156872b

    const v7, -0x3f86e979

    const v8, -0x40e3126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f399168

    const v4, -0x406a1cac

    const v5, -0x3e8174bc

    const v6, -0x3fa6d917

    const v7, -0x3e134189

    const v8, -0x3eeebc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f8947ae

    const v5, -0x3eb122d1

    const v6, -0x3f3ca3d7

    const v7, -0x3e5c0831

    const v8, -0x3f3ca3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375

    const/4 v4, 0x0

    const v5, 0x415d126f

    const v6, -0x3fffdf3b

    const v7, 0x419bfdf4

    const v8, -0x3f50fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416051ec

    const v4, -0x3f548b44

    const v5, 0x41be47ae

    const v6, -0x3f04fdf4

    const v7, 0x41f2020c

    const v8, -0x3ef03958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x403e45a2

    const v4, -0x40f9db23

    const v5, 0x40a7020c

    const v6, -0x40bc6a7f

    const v7, 0x40da0419

    const v8, -0x40a20c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f641893

    const v4, 0x3ddb22d1

    const v5, 0x3fe56042

    const v6, 0x3e3a5e35

    const v7, 0x402d9168

    const v8, 0x3e3a5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41459581

    const/4 v4, 0x0

    const v5, 0x41b2df3b

    const v6, -0x3edfced9

    const v7, 0x41b2df3b

    const v8, -0x3e4d20c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43ee47ae

    const v4, 0x446ce9aa

    const v5, 0x43e94646

    const v6, 0x446a6906

    const v7, 0x43e3199a

    const v8, 0x446a6906

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e62ed9

    const v3, 0x446a78b4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff6872b

    const/4 v4, 0x0

    const v5, -0x3f3a147b

    const v6, 0x3f639581

    const v7, -0x3f3a147b

    const v8, 0x3f639581

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f727efa

    const v4, -0x41343958

    const v5, -0x3f11e354

    const v6, -0x409ced91

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f0c4189

    const v4, -0x4061eb85

    const v5, -0x3e73126f

    const v6, -0x3f9a7efa

    const v7, -0x3e0570a4

    const v8, -0x3eeb7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc

    const v4, -0x3f8947ae

    const v5, -0x3eb122d1

    const v6, -0x3f3ca3d7

    const v7, -0x3e5c0831

    const v8, -0x3f3ca3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375

    const/4 v4, 0x0

    const v5, 0x415d0e56

    const v6, -0x3fffdf3b

    const v7, 0x419bfdf4

    const v8, -0x3f510625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41607efa

    const v4, -0x3f546a7f

    const v5, 0x41c0a5e3

    const v6, -0x3f02c8b4

    const v7, 0x41ffb22d

    const v8, -0x3eee1cac

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a2b852

    const v4, -0x40b89375

    const v5, 0x412d851f

    const v6, -0x4079fbe7

    const v7, 0x412d851f

    const v8, -0x4079fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40046a7f

    const v4, 0x3e7ced91

    const v5, 0x4048c49c

    const v6, 0x3e7ced91

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41436c8b

    const/4 v4, 0x0

    const v5, 0x41b0e979

    const v6, -0x3ee19581

    const v7, 0x41b0e979

    const v8, -0x3e4f1687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f13d71

    const v4, 0x446cf24e

    const v5, 0x43ec4a3d

    const v6, 0x446a78b4

    const v7, 0x43e62ed9

    const v8, 0x446a78b4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43e8445a

    const v3, 0x446a8852

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff0f5c3

    const/4 v4, 0x0

    const v5, -0x3f737cee

    const v6, 0x3eac8b44

    const v7, -0x3f327efa

    const v8, 0x3f75c28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdee979

    const v4, -0x41e56042

    const v5, -0x3f473333

    const v6, -0x411d2f1b

    const v7, -0x3ee5ae14

    const/high16 v8, -0x40800000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eef74bc

    const v4, -0x4059ba5e

    const v5, -0x3e656a7f

    const v6, -0x3f8e24dd

    const v7, -0x3dfbd0e5

    const v8, -0x3ee84189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f8947ae

    const v5, -0x3eb11eb8

    const v6, -0x3f3c9ba6

    const v7, -0x3e5c0625

    const v8, -0x3f3c9ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375

    const/4 v4, 0x0

    const v5, 0x415d0e56

    const v6, -0x3fffdf3b

    const v7, 0x419bfbe7

    const v8, -0x3f510625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160ac08

    const v4, -0x3f545a1d

    const v5, 0x41c30625

    const v6, -0x3f00ac08

    const v7, 0x4206b021

    const/high16 v8, -0x3eec0000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c170a4

    const v4, -0x40ac8b44

    const v5, 0x412a8b44

    const v6, -0x40756042

    const v7, 0x41553b64

    const v8, -0x406ba5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f828f5c

    const v4, 0x3e158106

    const v5, 0x400374bc

    const v6, 0x3e7be76d

    const v7, 0x40473b64

    const v8, 0x3e7be76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41413b64

    const/4 v4, 0x0

    const v5, 0x41aef3b6

    const v6, -0x3ee353f8

    const v7, 0x41aef3b6

    const v8, -0x3e510c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f33396

    const v4, 0x446cfaf2

    const v5, 0x43ee4e35

    const v6, 0x446a8852

    const v7, 0x43e8445a

    const v8, 0x446a8852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ea8439

    const v3, 0x446a9800

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fec5a1d

    const/4 v4, 0x0

    const v5, -0x3f6f3333

    const v6, 0x3ebef9db

    const v7, -0x3f2c7ae1

    const v8, 0x3f856042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb70a3d

    const v4, -0x41db22d1

    const v5, -0x3f15cac1

    const v6, -0x41083127

    const v7, -0x3ebc5a1d

    const v8, -0x407020c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed8c49c

    const v4, -0x40518937

    const v5, -0x3e57c28f

    const v6, -0x3f81cac1

    const v7, -0x3df4e873

    const v8, -0x3ee4fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f8947ae

    const v5, -0x3eb11eb8

    const v6, -0x3f3c9ba6

    const v7, -0x3e5c0419

    const v8, -0x3f3c9ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e49375

    const/4 v4, 0x0

    const v5, 0x415d0a3d

    const v6, -0x3fffdf3b

    const v7, 0x419bf9db

    const v8, -0x3f510e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160d917

    const v4, -0x3f543958

    const v5, 0x41c5645a

    const v6, -0x3eff3b64

    const v7, 0x420d8625

    const v8, -0x3ee9df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e69fbe

    const v4, -0x409a5e35

    const v5, 0x414e45a2

    const v6, -0x40681062

    const v7, 0x4180b646

    const v8, -0x405c6a7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f839581

    const v4, 0x3e189375

    const v5, 0x40049ba6

    const v6, 0x3e810625

    const v7, 0x40491687

    const v8, 0x3e810625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413f1687

    const/4 v4, 0x0

    const/high16 v5, 0x41ad0000

    const v6, -0x3ee51687

    const/high16 v7, 0x41ad0000

    const v8, -0x3e53020c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f55439

    const v4, 0x446d03a6

    const v5, 0x43f07d0e

    const v6, 0x446a9800

    const v7, 0x43ea8439

    const v8, 0x446a9800

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ec99ba

    const v3, 0x446aa7ae

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe90625

    const/4 v4, 0x0

    const v5, -0x3f6c1893

    const v6, 0x3ecccccd

    const v7, -0x3f283127

    const v8, 0x3f8d70a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f915810

    const v4, -0x41c8b439

    const v5, -0x3ef4353f

    const v6, -0x40f78d50

    const v7, -0x3e9774bc

    const v8, -0x4062b021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ec21893

    const v4, -0x40495810

    const v5, -0x3e4a1aa0

    const v6, -0x3f7ab852

    const v7, -0x3dedfefa

    const v8, -0x3ee1c28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f8947ae

    const v5, -0x3eb11eb8

    const v6, -0x3f3c9ba6

    const v7, -0x3e5c0419

    const v8, -0x3f3c9ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44

    const/4 v4, 0x0

    const v5, 0x415d0a3d

    const v6, -0x3fffef9e

    const v7, 0x419bf9db

    const v8, -0x3f510e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41610625

    const v4, -0x3f5428f6

    const v5, 0x41c7c28f

    const v6, -0x3efe2d0e

    const v7, 0x42145d2f

    const v8, -0x3ee7c6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41025604

    const v4, -0x408f5c29

    const v5, 0x416c9375

    const v6, -0x405d0e56

    const v7, 0x41948106

    const v8, -0x404db22d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f82f1aa

    const v4, 0x3e19999a

    const v5, 0x4003f7cf

    const v6, 0x3e818937

    const v7, 0x404820c5

    const v8, 0x3e818937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413ced91

    const/4 v4, 0x0

    const v5, 0x41ab0a3d

    const v6, -0x3ee6d917

    const v7, 0x41ab0a3d

    const v8, -0x3e54f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f28127

    const v4, 0x446aa7ae

    const v5, 0x43ec99ba

    const v6, 0x446aa7ae

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43ef24bc

    const v3, 0x446ab74c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe33333

    const/4 v4, 0x0

    const v5, -0x3f66a7f0

    const v6, 0x3ee04189

    const v7, -0x3f20a3d7

    const v8, 0x3f9a3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f73ced9

    const v4, -0x41bf7cee

    const v5, -0x3ed73b64

    const v6, -0x40ed4fdf

    const v7, -0x3e72be77

    const v8, -0x4050a3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eab6873

    const v4, -0x404126e9

    const v5, -0x3e3c70a4

    const v6, -0x3f748b44

    const v7, -0x3de71687

    const v8, -0x3ede872b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f89374c

    const v5, -0x3eb11aa0

    const v6, -0x3f3c9375

    const v7, -0x3e5c020c

    const v8, -0x3f3c9375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44

    const/4 v4, 0x0

    const v5, 0x415d0625

    const v6, -0x3fffef9e

    const v7, 0x419bf7cf

    const v8, -0x3f510e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41613333

    const v4, -0x3f541062

    const v5, 0x41ca20c5

    const v6, -0x3efd1687

    const v7, 0x421b3439

    const v8, -0x3ee5a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411a3127

    const v4, -0x407a9fbe

    const v5, 0x418cbe77

    const v6, -0x404c8b44

    const v7, 0x41ae51ec

    const v8, -0x403c49ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f88f5c3

    const v4, 0x3e2b020c

    const v5, 0x400a2d0e

    const v6, 0x3e8dd2f2

    const v7, 0x4051a9fc

    const v8, 0x3e8dd2f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413ac49c

    const/4 v4, 0x0

    const v5, 0x41a9147b

    const v6, -0x3ee89375

    const v7, 0x41a9147b

    const v8, -0x3e56e979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43f9b604

    const v4, 0x446d14dd

    const v5, 0x43f4fae1

    const v6, 0x446ab74c

    const v7, 0x43ef24bc

    const v8, 0x446ab74c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f20439

    const v3, 0x446ac6fa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdc1893

    const/4 v4, 0x0

    const v5, -0x3f5fe76d

    const v6, 0x3ef645a2

    const v7, -0x3f175c29

    const v8, 0x3fa978d5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f601893

    const v4, -0x41bf7cee

    const v5, -0x3eb6353f

    const v6, -0x40e56042

    const v7, -0x3e54eb85

    const v8, -0x403c0831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e94bc6a

    const v4, -0x40391687

    const v5, -0x3e2ec8b4

    const v6, -0x3f6e5e35

    const v7, -0x3de02e14

    const v8, -0x3edb47ae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f89374c

    const v5, -0x3eb11aa0

    const v6, -0x3f3c9375

    const v7, -0x3e5c020c

    const v8, -0x3f3c9375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48b44

    const/4 v4, 0x0

    const v5, 0x415d0625

    const v6, -0x3fffef9e

    const v7, 0x419bf5c3

    const v8, -0x3f511687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41616042

    const v4, -0x3f53f7cf

    const v5, 0x41cc7efa

    const/high16 v6, -0x3efc0000

    const v7, 0x42220a3d

    const v8, -0x3ee39168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412ec083

    const v4, -0x407126e9

    const v5, 0x41a0d0e5

    const v6, -0x403db22d

    const v7, 0x41c60a3d

    const v8, -0x402ba5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e960419

    const v4, -0x43ec8b44

    const v5, 0x3f1020c5

    const v6, -0x4374bc6a

    const v7, 0x3f51a9fc

    const v8, -0x43439581

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f93126f

    const v4, 0x3e48b439

    const v5, 0x4014bc6a

    const v6, 0x3ea1cac1

    const v7, 0x4061db23

    const v8, 0x3ea1cac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4138978d

    const/4 v4, 0x0

    const v5, 0x41a720c5

    const v6, -0x3eea5604

    const v7, 0x41a720c5

    const v8, -0x3e58df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fc7625

    const v4, 0x446d1d91

    const v5, 0x43f7c8f6

    const v6, 0x446ac6fa

    const v7, 0x43f20439

    const v8, 0x446ac6fa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f45979

    const v3, 0x446ad6a8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fd29fbe

    const/4 v4, 0x0

    const v5, -0x3f56a7f0

    const v6, 0x3f07ef9e

    const v7, -0x3f0ac8b4

    const v8, 0x3fbd70a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5d5810

    const v4, -0x426a7efa

    const v5, -0x3ebf0a3d

    const v6, -0x411d2f1b

    const v7, -0x3e49a9fc

    const v8, -0x4044dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e8374bc

    const v4, -0x403d2f1b

    const v5, -0x3e1824dd

    const v6, -0x3f5f4bc7

    const v7, -0x3dd4b021

    const v8, -0x3ed3ae14

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc

    const v4, -0x3f896873

    const v5, -0x3eb12b02

    const v6, -0x3f3cb439

    const v7, -0x3e5c1062

    const v8, -0x3f3cb439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1

    const/4 v4, 0x0

    const v5, 0x415cf9db

    const/high16 v6, -0x40000000

    const v7, 0x419bef9e

    const v8, -0x3f5126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41611687

    const v4, -0x3f548b44

    const v5, 0x41dad4fe

    const v6, -0x3ef56042

    const v7, 0x422d7cee

    const v8, -0x3edd374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41412b02

    const v4, -0x407126e9

    const v5, 0x419b1cac

    const v6, -0x40451eb8

    const v7, 0x41c59fbe

    const v8, -0x40383127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f641893

    const v4, -0x436c8b44

    const v5, 0x3fcdf3b6

    const v6, -0x42ec8b44

    const v7, 0x400c3958

    const v8, -0x42bf7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa645a2

    const v4, 0x3e83126f

    const v5, 0x40291687

    const v6, 0x3ec83127

    const v7, 0x40808b44

    const v8, 0x3ec83127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41366e98

    const/4 v4, 0x0

    const v5, 0x41a52b02

    const v6, -0x3eec1893

    const v7, 0x41a52b02

    const v8, -0x3e5ad4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fa0d0e

    const v4, 0x446ad6a8

    const v5, 0x43f45979

    const v6, 0x446ad6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f5c831

    const v3, 0x446ae656

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fcd6042

    const/4 v4, 0x0

    const v5, -0x3f51999a

    const v6, 0x3f10624e

    const v7, -0x3f041062

    const v8, 0x3fca1cac

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5fb646

    const v4, -0x42ec8b44

    const v5, -0x3ec5be77

    const v6, -0x413645a2

    const v7, -0x3e4b5810

    const v8, -0x40551eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e79147b

    const v4, -0x404126e9

    const v5, -0x3e017efa

    const v6, -0x3f5028f6

    const v7, -0x3dc9322d

    const v8, -0x3ecc1893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f

    const v4, -0x3f89999a

    const v5, -0x3eb13b64

    const v6, -0x3f3cdd2f

    const v7, -0x3e5c1eb8

    const v8, -0x3f3cdd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e41062

    const/4 v4, 0x0

    const v5, 0x415c978d

    const v6, -0x40010625

    const v7, 0x419bae14

    const v8, -0x3f51cac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4160e979

    const v4, -0x3f54d4fe

    const v5, 0x41e947ae

    const v6, -0x3eee76c9

    const v7, 0x42390b44

    const v8, -0x3ed69ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4153999a

    const v4, -0x40710625

    const v5, 0x419d6a7f

    const v6, -0x404c8b44

    const v7, 0x41cd3958

    const v8, -0x4044bc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3edba5e3

    const v4, -0x445c28f6

    const v5, 0x3f52f1aa

    const v6, -0x43bb645a

    const v7, 0x3f981062

    const v8, -0x43645a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa8b439

    const v4, 0x3e89374c

    const v5, 0x402b9581

    const v6, 0x3ed374bc

    const v7, 0x40827efa

    const v8, 0x3ed374bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413449ba

    const/4 v4, 0x0

    const v5, 0x41a3353f

    const v6, -0x3eedd70a

    const v7, 0x41a3353f

    const v8, -0x3e5ccac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x43fb6a7f

    const v4, 0x446ae656

    const v5, 0x43f5c831

    const v6, 0x446ae656

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f719ba

    const v3, 0x446af604

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc8a3d7

    const/4 v4, 0x0

    const v5, -0x3f4d5810

    const v6, 0x3f1c28f6

    const v7, -0x3eff2f1b

    const v8, 0x3fd81062

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f543958

    const v4, 0x3d9ba5e3

    const v5, -0x3ee4a3d7

    const v6, -0x41872b02

    const v7, -0x3e4e9ba6

    const v8, -0x4063d70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7070a4

    const v4, -0x40453f7d

    const v5, -0x3df56b85

    const v6, -0x3f410e56

    const v7, -0x3dbdb53f

    const v8, -0x3ec48312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f438d50

    const v4, -0x3f89ba5e

    const v5, -0x3eb14bc7

    const v6, -0x3f3cfdf4

    const v7, -0x3e5c2b02

    const v8, -0x3f3cfdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e4624e

    const/4 v4, 0x0

    const v5, 0x415ce560

    const v6, -0x40004189

    const v7, 0x419bdf3b

    const v8, -0x3f514fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416072b0

    const v4, -0x3f55999a

    const v5, 0x41f77efa

    const v6, -0x3ee8147b

    const v7, 0x42446148

    const v8, -0x3ed0872b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41660419

    const v4, -0x407126e9

    const v5, 0x418fb646

    const v6, -0x4053d70a

    const v7, 0x41c4d0e5

    const v8, -0x40516873

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f3126e9

    const v4, -0x44fced91

    const v5, 0x3fa3b646

    const v6, -0x43ab020c

    const v7, 0x3fe89375

    const v8, -0x43439581

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb0a3d7

    const v4, 0x3e991687

    const v5, 0x4033c6a8

    const v6, 0x3ef0a3d7

    const v7, 0x4088ed91

    const v8, 0x3ef0a3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41321cac

    const/4 v4, 0x0

    const v5, 0x41a13d71

    const v6, -0x3eef9db2

    const v7, 0x41a13d71

    const v8, -0x3e5ec083

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440096c9

    const v4, 0x446d377d

    const v5, 0x43fcaaa0

    const v6, 0x446af604

    const v7, 0x43f719ba

    const v8, 0x446af604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43f90439

    const v3, 0x446b05b2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc5f3b6

    const/4 v4, 0x0

    const v5, -0x3f4ae979

    const v6, 0x3f23d70a

    const v7, -0x3efd9db2

    const v8, 0x3fe147ae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3849ba

    const v4, 0x3e624dd3

    const v5, -0x3ef34396

    const v6, -0x42d3f7cf

    const v7, -0x3e47a9fc

    const v8, -0x40776c8b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e67cccd

    const v4, -0x4049374c

    const v5, -0x3dea1687

    const v6, -0x3f31eb85

    const v7, -0x3db23852

    const v8, -0x3ebced91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f439581

    const v4, -0x3f89eb85

    const v5, -0x3eb15810

    const v6, -0x3f3d1eb8

    const v7, -0x3e5c3958

    const v8, -0x3f3d1eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e45a1d

    const/4 v4, 0x0

    const v5, 0x415cd917

    const v6, -0x40004189

    const v7, 0x419bd917

    const v8, -0x3f516042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41601cac

    const v4, -0x3f561cac

    const v5, 0x4202e873

    const v6, -0x3ee170a4

    const v7, 0x424fd3f8

    const v8, -0x3eca353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41786a7f

    const v4, -0x40710625

    const v5, 0x418a020c

    const v6, -0x405b22d1

    const v7, 0x41c46666

    const v8, -0x405dd2f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f856042

    const v4, 0x3b449ba6

    const v5, 0x3ff4fdf4

    const v6, -0x43645a1d

    const v7, 0x4028d4fe

    const v8, -0x430a3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb8b439

    const v4, 0x3ea9fbe7

    const v5, 0x403c1893

    const v6, 0x3f06e979

    const v7, 0x408f74bc

    const v8, 0x3f06e979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412fef9e

    const/4 v4, 0x0

    const v5, 0x419f49ba

    const v6, -0x3ef15c29

    const v7, 0x419f49ba

    const v8, -0x3e60b646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44017c6a

    const v4, 0x446d4031

    const v5, 0x43fe83b6

    const v6, 0x446b05b2

    const v7, 0x43f90439

    const v8, 0x446b05b2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fad560

    const v3, 0x446b1550

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1

    const/4 v4, 0x0

    const v5, -0x3f49a1cb

    const v6, 0x3f28f5c3

    const v7, -0x3efcd917

    const v8, 0x3fe76c8b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f12e979

    const v4, 0x3ebe76c9

    const v5, -0x3f044189

    const v6, 0x3e27ef9e

    const v7, -0x3e41e76d

    const v8, -0x409c28f6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5f24dd

    const v4, -0x404d4fdf

    const v5, -0x3ddebf7d

    const v6, -0x3f22c083

    const v7, -0x3da6ba5e

    const v8, -0x3eb55810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43a5e3

    const v4, -0x3f8a0c4a

    const v5, -0x3eb16873

    const v6, -0x3f3d47ae

    const v7, -0x3e5c45a2

    const v8, -0x3f3d47ae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e449ba

    const/4 v4, 0x0

    const v5, 0x415ccccd

    const v6, -0x4000624e

    const v7, 0x419bd2f2

    const v8, -0x3f5170a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415fbe77

    const v4, -0x3f56b852

    const v5, 0x420a126f

    const v6, -0x3edacccd

    const v7, 0x425b46a8

    const v8, -0x3ec3df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41856c8b

    const v4, -0x40710625

    const v5, 0x41844dd3

    const v6, -0x40626e98

    const v7, 0x41c3fbe7

    const v8, -0x406a5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fabe76d

    const v4, 0x3c343958

    const v5, 0x401ae148

    const v6, -0x43439581

    const v7, 0x40521cac

    const v8, -0x42fced91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fbfbe77

    const v4, 0x3ebae148

    const v5, 0x4043851f

    const v6, 0x3f147ae1

    const v7, 0x40954fdf

    const v8, 0x3f147ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412dc6a8

    const/4 v4, 0x0

    const v5, 0x419d53f8

    const v6, -0x3ef31aa0

    const v7, 0x419d53f8

    const v8, -0x3e62ac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44025550

    const v4, 0x446d48d5

    const v5, 0x440021cb

    const v6, 0x446b1550

    const v7, 0x43fad560

    const v8, 0x446b1550

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fcaefa

    const v3, 0x446b24fe

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1

    const/4 v4, 0x0

    const v5, -0x3f49b22d

    const v6, 0x3f2b020c

    const v7, -0x3efcfdf4

    const v8, 0x3fea3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41e76c8b

    const v4, 0x3c1374bc

    const v5, -0x416b851f

    const v6, 0x3c9ba5e3

    const v7, -0x411b22d1

    const v8, 0x3ce56042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ef7ced9

    const v4, 0x3f01cac1

    const v5, -0x3f241893

    const v6, 0x3eb0a3d7

    const v7, -0x3e3ebe77

    const v8, -0x40c9374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e567cee

    const v4, -0x40516873

    const v5, -0x3dd3676d

    const v6, -0x3f139db2

    const v7, -0x3d9b3d71

    const v8, -0x3eadbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43ae14

    const v4, -0x3f8a3d71

    const v5, -0x3eb178d5

    const v6, -0x3f3d6873

    const v7, -0x3e5c53f8

    const v8, -0x3f3d6873

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e44189

    const/4 v4, 0x0

    const v5, 0x415cc083

    const v6, -0x40008312

    const v7, 0x419bcac1

    const v8, -0x3f518106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f6042

    const v4, -0x3f574bc7

    const v5, 0x42113c6a

    const v6, -0x3ed42d0e

    const v7, 0x4266b852

    const v8, -0x3ebd8937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ea1cb

    const v4, -0x40710625

    const v5, 0x417d374c

    const v6, -0x4069db23

    const v7, 0x41c39581

    const v8, -0x40770a3d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fda7efa

    const v4, 0x3cac0831

    const v5, 0x4040a3d7

    const v6, -0x42f4bc6a

    const v7, 0x40805a1d

    const v8, -0x43126e98

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc5e354

    const v4, 0x3ecac083

    const v5, 0x404a2d0e

    const v6, 0x3f20c49c

    const v7, 0x409a8f5c

    const v8, 0x3f20c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412b9db2

    const/4 v4, 0x0

    const v5, 0x419b5e35

    const v6, -0x3ef4dd2f

    const v7, 0x419b5e35

    const v8, -0x3e64a1cb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4403326f

    const v4, 0x446d5179

    const v5, 0x440105f4

    const v6, 0x446b24fe

    const v7, 0x43fcaefa

    const v8, 0x446b24fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x43fe6ed9

    const v3, 0x446b349c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1

    const/4 v4, 0x0

    const v5, -0x3f49c28f

    const v6, 0x3f2d0e56

    const v7, -0x3efd26e9

    const v8, 0x3feced91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4148b439

    const v4, 0x3cd4fdf4

    const v5, -0x40c41893

    const v6, 0x3d591687

    const v7, -0x406db22d

    const v8, 0x3da5e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eed374c

    const v4, 0x3f1c6a7f

    const v5, -0x3f4820c5

    const v6, 0x3ef74bc7

    const v7, -0x3e3f2b02

    const v8, -0x40efdf3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4e1687

    const v4, -0x4055a1cb

    const v5, -0x3dc83852

    const v6, -0x3f04fdf4

    const v7, -0x3d8fe354

    const v8, -0x3ea68b44

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee

    const v4, -0x3f8978d5

    const v5, -0x3eb1374c

    const v6, -0x3f3ccccd

    const v7, -0x3e5c1893

    const v8, -0x3f3ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312

    const/4 v4, 0x0

    const v5, 0x415cfdf4

    const v6, -0x3fffef9e

    const v7, 0x419bf1aa

    const v8, -0x3f511eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f1aa0

    const v4, -0x3f57f7cf

    const v5, 0x4218645a

    const v6, -0x3ecdb646

    const v7, 0x4272147b

    const v8, -0x3eb76c8b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4197d70a

    const v4, -0x40710625

    const v5, 0x4171ced9

    const v6, -0x407126e9

    const v7, 0x41c32b02

    const v8, -0x4086e979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffccccd

    const v4, 0x3cf5c28f

    const v5, 0x405cac08

    const v6, -0x42cfdf3b

    const v7, 0x4091b22d

    const v8, -0x4353f7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fcb851f

    const v4, 0x3eda9fbe

    const v5, 0x405051ec

    const v6, 0x3f2c0831

    const v7, 0x409f5c29

    const v8, 0x3f2c0831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x412978d5

    const/4 v4, 0x0

    const v5, 0x41996c8b

    const v6, -0x3ef69ba6

    const v7, 0x41996c8b

    const v8, -0x3e669375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4401dd50

    const v4, 0x446b349c

    const v5, 0x43fe6ed9

    const v6, 0x446b349c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44002cdd

    const v3, 0x446b444a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc71aa0

    const/4 v4, 0x0

    const v5, -0x3f4c49ba

    const v6, 0x3f2a7efa

    const v7, -0x3efef1aa

    const v8, 0x3fe95810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40d6872b

    const v4, 0x3d6d9168

    const v5, -0x404ba5e3

    const v6, 0x3def9db2

    const v7, -0x3fee45a2

    const v8, 0x3e3851ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee2a3d7

    const v4, 0x3f370a3d

    const v5, -0x3f6c28f6

    const v6, 0x3f1f3b64

    const v7, -0x3e3f9375

    const v8, -0x412e147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4578d5

    const v4, -0x4059ba5e

    const v5, -0x3dbce666

    const v6, -0x3efaed91

    const v7, -0x3d846873

    const v8, -0x3e9ef9db

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f

    const v4, -0x3f89999a

    const v5, -0x3eb13f7d

    const v6, -0x3f3ce560

    const v7, -0x3e5c22d1

    const v8, -0x3f3ce560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1

    const/4 v4, 0x0

    const v5, 0x415cf9db

    const/high16 v6, -0x40000000

    const v7, 0x419bed91

    const v8, -0x3f512f1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415ec49c

    const v4, -0x3f588312

    const v5, 0x421f8f5c

    const v6, -0x3ec70e56

    const v7, 0x427d8419

    const v8, -0x3eb1126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41a10c4a

    const v4, -0x40710625

    const v5, 0x41666666

    const v6, -0x407872b0

    const v7, 0x41c2c28f

    const v8, -0x40a04189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4023f7cf

    const v4, 0x3d449ba6

    const v5, 0x408a45a2

    const v6, -0x425e353f

    const v7, 0x40b20c4a

    const v8, 0x3c9ba5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fcc0831

    const v4, 0x3edf3b64

    const v5, 0x4050f5c3

    const v6, 0x3f2f1aa0

    const v7, 0x409fe76d

    const v8, 0x3f2f1aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41274bc7

    const/4 v4, 0x0

    const v5, 0x419774bc

    const v6, -0x3ef85a1d

    const v7, 0x419774bc

    const v8, -0x3e688937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4404e883

    const v4, 0x446d62c1

    const v5, 0x4402c9fc

    const v6, 0x446b444a

    const v7, 0x44002cdd

    const v8, 0x446b444a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440196b8

    const v3, 0x446b5408

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc91687

    const/4 v4, 0x0

    const v5, -0x3f4e353f

    const v6, 0x3f28f5c3

    const v7, -0x3f00b439

    const v8, 0x3fe74bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4090a3d7

    const v4, 0x3dc6a7f0

    const v5, -0x3ffb53f8

    const v6, 0x3e4dd2f2

    const v7, -0x3f9ec8b4

    const v8, 0x3ea0c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ed68b44

    const v4, 0x3f553f7d

    const v5, -0x3f4c28f6

    const v6, 0x3f476c8b

    const v7, -0x3e2dc6a8

    const v8, -0x418f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e3bac08

    const v4, -0x405e76c9

    const v5, -0x3db3ba5e

    const v6, -0x3ef25a1d

    const v7, -0x3d7da873

    const v8, -0x3e966666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f43851f

    const v4, -0x3f898937

    const v5, -0x3eb13b64

    const v6, -0x3f3cd4fe

    const v7, -0x3e5c1eb8

    const v8, -0x3f3cd4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1

    const/4 v4, 0x0

    const v5, 0x415cf9db

    const/high16 v6, -0x40000000

    const v7, 0x419bed91

    const v8, -0x3f5126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415dd70a

    const v4, -0x3f592f1b

    const v5, 0x4223c083

    const v6, -0x3ebf8d50

    const v7, 0x42834ac1

    const v8, -0x3ea9e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ab9168

    const v4, -0x40710625

    const v5, 0x417df3b6

    const v6, -0x4081cac1

    const v7, 0x41d49168

    const v8, -0x40bced91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x403fbe77

    const v4, 0x3d851eb8

    const v5, 0x409ef9db

    const v6, -0x42189375

    const v7, 0x40ca6e98

    const v8, 0x3d810625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3df7ced9

    const v4, 0x3c83126f

    const v5, 0x3e916873

    const v6, 0x3d0f5c29

    const v7, 0x3ee66666

    const v8, 0x3d6147ae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc9db23

    const v4, 0x3edd2f1b

    const v5, 0x404ed917

    const v6, 0x3f2d9168

    const v7, 0x409e45a2

    const v8, 0x3f2d9168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41251eb8

    const/4 v4, 0x0

    const v5, 0x41958106

    const v6, -0x3efa1cac

    const v7, 0x41958106

    const v8, -0x3e6a7efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440642c1

    const v4, 0x446d6b64

    const v5, 0x44042b44

    const v6, 0x446b5408

    const v7, 0x440196b8

    const v8, 0x446b5408

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4402b76d

    const v3, 0x446b63a6

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc3a5e3

    const/4 v4, 0x0

    const v5, -0x3f490e56

    const v6, 0x3f347ae1

    const v7, -0x3efd0625

    const v8, 0x3ff72b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x409645a2

    const v4, 0x3dc49ba6

    const v5, -0x4000a3d7

    const v6, 0x3e4ac083

    const v7, -0x3fab851f

    const v8, 0x3e9eb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eca6e98

    const v4, 0x3f73b646

    const v5, -0x3f2c3127

    const v6, 0x3f6f9db2

    const v7, -0x3e1bf7cf

    const v8, -0x42820c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e31df3b

    const v4, -0x40633333

    const v5, -0x3daa8f5c

    const v6, -0x3ee9cac1

    const v7, -0x3d791c29

    const v8, -0x3e8dd70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee

    const v4, -0x3f898937

    const v5, -0x3eb1374c

    const v6, -0x3f3ccccd

    const v7, -0x3e5c1aa0

    const v8, -0x3f3ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1

    const/4 v4, 0x0

    const v5, 0x415cf9db

    const/high16 v6, -0x40000000

    const v7, 0x419bef9e

    const v8, -0x3f5126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415cf1aa

    const v4, -0x3f59d2f2

    const v5, 0x4227f1aa

    const v6, -0x3eb7fbe7

    const v7, 0x4287d2f2

    const v8, -0x3ea2b021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41b61893

    const v4, -0x40710625

    const v5, 0x418abe77

    const v6, -0x40922d0e

    const v7, 0x41e6645a

    const v8, -0x40d9db23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4032f1aa

    const v4, 0x3d8b4396

    const v5, 0x40980831

    const v6, -0x426872b0

    const v7, 0x40c5999a

    const v8, 0x3cac0831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe0e560

    const v4, 0x3f0e5604

    const v5, 0x4067ef9e

    const v6, 0x3f5db22d

    const v7, 0x40b20c4a

    const v8, 0x3f5db22d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4122f9db

    const/4 v4, 0x0

    const v5, 0x41938937

    const v6, -0x3efbdf3b

    const v7, 0x41938937

    const v8, -0x3e6c74bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44054354

    const v4, 0x446b63a6

    const v5, 0x4402b76d

    const v6, 0x446b63a6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44040429

    const v3, 0x446b7354

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc353f8

    const/4 v4, 0x0

    const v5, -0x3f48c49c

    const v6, 0x3f36872b

    const v7, -0x3efcf9db

    const v8, 0x3ffa9fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40781062

    const v4, 0x3df9db23

    const v5, -0x3fe8f5c3

    const v6, 0x3e818937

    const v7, -0x3f7f851f

    const v8, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ebe5604

    const v4, 0x3f891687

    const v5, -0x3f0c3958

    const v6, 0x3f8c28f6

    const v7, -0x3e0a2b02

    const v8, 0x3de76c8b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e28147b

    const v4, -0x4067ef9e

    const v5, -0x3da16560

    const v6, -0x3ee1374c

    const v7, -0x3d748fdf

    const v8, -0x3e854396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f437cee

    const v4, -0x3f8978d5

    const v5, -0x3eb13333

    const v6, -0x3f3cc49c

    const v7, -0x3e5c1687

    const v8, -0x3f3cc49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e47ae1

    const/4 v4, 0x0

    const v5, 0x415cfdf4

    const/high16 v6, -0x40000000

    const v7, 0x419bef9e

    const v8, -0x3f5126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415c0419

    const v4, -0x3f5a76c9

    const v5, 0x422c23d7

    const v6, -0x3eb06a7f

    const v7, 0x428c5b23

    const v8, -0x3e9b7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c09db2

    const v4, -0x40710625

    const v5, 0x41968312

    const v6, -0x40a3126f

    const v7, 0x41f83333

    const v8, -0x40f6872b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x404570a4

    const v4, 0x3da7ef9e

    const v5, 0x40a6353f

    const v6, -0x4251eb85

    const v7, 0x40d753f8

    const v8, 0x3d3c6a7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe66666

    const v4, 0x3f189375

    const v5, 0x406dd2f2

    const v6, 0x3f6f5c29

    const v7, 0x40b6e979

    const v8, 0x3f6f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4120cccd

    const/4 v4, 0x0

    const v5, 0x41919375

    const v6, -0x3efda1cb

    const v7, 0x41919375

    const v8, -0x3e6e6a7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4406875c

    const v4, 0x446b7354

    const v5, 0x44040429

    const v6, 0x446b7354

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4405421d

    const v3, 0x446b8302

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc16873

    const/4 v4, 0x0

    const v5, -0x3f46f1aa

    const v6, 0x3f3b22d1

    const v7, -0x3efbeb85

    const v8, 0x4000f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x406c6a7f

    const v4, 0x3e0e5604

    const v5, -0x3fdb53f8

    const v6, 0x3e947ae1

    const v7, -0x3f72b021

    const v8, 0x3eeb851f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eb24189

    const v4, 0x3f983127

    const v5, -0x3ef620c5

    const v6, 0x3fa04189

    const v7, -0x3dfc2e14

    const v8, 0x3e92f1aa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e1e49ba

    const v4, -0x406c8b44

    const v5, -0x3d983c6a

    const v6, -0x3ed8ac08

    const v7, -0x3d700419

    const v8, -0x3e7e5604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc

    const v4, -0x3f896873

    const v5, -0x3eb12f1b

    const v6, -0x3f3cbc6a

    const v7, -0x3e5c126f

    const v8, -0x3f3cbc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312

    const/4 v4, 0x0

    const v5, 0x415cfdf4

    const/high16 v6, -0x40000000

    const v7, 0x419bf1aa

    const v8, -0x3f5126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415b22d1

    const v4, -0x3f5b126f

    const v5, 0x423054fe

    const v6, -0x3ea8dd2f

    const v7, 0x4290e2d1

    const v8, -0x3e9449ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cb26e9

    const v4, -0x40710625

    const v5, 0x41a249ba

    const v6, -0x40b374bc

    const v7, 0x42050419

    const v8, -0x41266666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4049ba5e

    const v4, 0x3db851ec

    const v5, 0x40aaf1aa

    const v6, -0x42604189

    const v7, 0x40dea7f0

    const v8, 0x3d1fbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef1aa0

    const v4, 0x3f2872b0

    const v5, 0x40779db2

    const v6, 0x3f847ae1

    const v7, 0x40bec083

    const v8, 0x3f847ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411ea7f0

    const/4 v4, 0x0

    const v5, 0x418f9fbe

    const v6, -0x3eff645a

    const v7, 0x418f9fbe

    const v8, -0x3e706042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4409bf1b

    const v4, 0x446d8560

    const v5, 0x4407bcac

    const v6, 0x446b8302

    const v7, 0x4405421d

    const v8, 0x446b8302

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4406977d

    const v3, 0x446b92b0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc2e148

    const/4 v4, 0x0

    const v5, -0x3f48624e

    const v6, 0x3f3a5e35

    const v7, -0x3efcfdf4

    const v8, 0x400072b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4057ef9e

    const v4, 0x3e322d0e

    const v5, -0x3fbf0a3d

    const v6, 0x3eba5e35

    const v7, -0x3f55e354

    const v8, 0x3f15c28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ea628f6

    const v4, 0x3fa76c8b

    const v5, -0x3ee620c5

    const v6, 0x3fb47ae1

    const v7, -0x3df347ae

    const v8, 0x3eec0831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e147efa

    const v4, -0x407147ae

    const v5, -0x3d8f1375

    const v6, -0x3ed01cac

    const v7, -0x3d6b774c

    const v8, -0x3e7a0e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc

    const v4, -0x3f896873

    const v5, -0x3eb12b02

    const v6, -0x3f3cb439

    const v7, -0x3e5c0e56

    const v8, -0x3f3cb439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312

    const/4 v4, 0x0

    const v5, 0x415cfdf4

    const/high16 v6, -0x40000000

    const v7, 0x419bf1aa

    const v8, -0x3f511eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415a4189

    const v4, -0x3f5bb646

    const v5, 0x42348831

    const v6, -0x3ea153f8

    const v7, 0x42956b85

    const v8, -0x3e8d1687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d5ac08

    const v4, -0x4070e560

    const v5, 0x41ae1062

    const v6, -0x40c45a1d

    const v7, 0x420deb85

    const v8, -0x415fbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4064ac08

    const v4, 0x3ddf3b64

    const v5, 0x40bed0e5

    const v6, -0x422d0e56

    const v7, 0x40f6a7f0

    const v8, 0x3db22d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff1eb85

    const v4, 0x3f3020c5

    const v5, 0x407b126f

    const v6, 0x3f8a5e35

    const v7, 0x40c1a1cb

    const v8, 0x3f8a5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411c76c9

    const/4 v4, 0x0

    const v5, 0x418da9fc

    const v6, -0x3f0245a2

    const v7, 0x418da9fc

    const v8, -0x3e725604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440b04cd

    const v4, 0x446d8e04

    const v5, 0x44090958

    const v6, 0x446b92b0

    const v7, 0x4406977d

    const v8, 0x446b92b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44080862

    const v3, 0x446ba24e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fca5e35

    const/4 v4, 0x0

    const v5, -0x3f4fa5e3

    const v6, 0x3f3020c5

    const v7, -0x3f03d70a

    const v8, 0x3ff1cac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x403e353f

    const v4, 0x3e73b646

    const/high16 v5, -0x3f980000

    const v6, 0x3efef9db

    const v7, -0x3f23a5e3

    const v8, 0x3f526e98

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e9a1062

    const v4, 0x3fb6a7f0

    const v5, -0x3ed624dd

    const v6, 0x3fc8b439

    const v7, -0x3dea6148

    const v8, 0x3f228f5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0ab646

    const v4, -0x4075e354

    const v5, -0x3d85eb85

    const v6, -0x3ec79581

    const v7, -0x3d66eb85

    const v8, -0x3e75c6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4374bc

    const v4, -0x3f895810

    const v5, -0x3eb126e9

    const v6, -0x3f3cac08

    const v7, -0x3e5c0a3d

    const v8, -0x3f3cac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312

    const/4 v4, 0x0

    const v5, 0x415cfdf4

    const v6, -0x3fffef9e

    const v7, 0x419bf1aa

    const v8, -0x3f511eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41595c29

    const v4, -0x3f5c51ec

    const v5, 0x4238ba5e

    const v6, -0x3e99c28f

    const v7, 0x4299f3b6

    const v8, -0x3e85e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e03127

    const v4, -0x4070e560

    const v5, 0x41b9d4fe

    const v6, -0x40d4bc6a

    const v7, 0x4216d3f8

    const v8, -0x41b22d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40815810

    const v4, 0x3e0624dd

    const v5, 0x40d4c49c

    const v6, -0x41e978d5

    const v7, 0x41086e98

    const v8, 0x3e147ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e29fbe7

    const v4, 0x3cd4fdf4

    const v5, 0x3eced917

    const v6, 0x3d6d9168

    const v7, 0x3f2624dd

    const v8, 0x3db851ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fea9fbe

    const v4, 0x3f272b02

    const v5, 0x4073020c

    const v6, 0x3f8353f8

    const v7, 0x40bb53f8

    const v8, 0x3f8353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411a51ec

    const/4 v4, 0x0

    const v5, 0x418bb439

    const v6, -0x3f05cac1

    const v7, 0x418bb439

    const v8, -0x3e744bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440c6604

    const v4, 0x446d96a8

    const v5, 0x440a719a

    const v6, 0x446ba24e

    const v7, 0x44080862

    const v8, 0x446ba24e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44093906

    const v3, 0x446bb1fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc6a7f0

    const/4 v4, 0x0

    const/high16 v5, -0x3f4c0000

    const v6, 0x3f378d50

    const v7, -0x3effa9fc

    const v8, 0x3ffd70a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4036c8b4

    const v4, 0x3e7ae148

    const v5, -0x3f90b439

    const v6, 0x3f03d70a

    const v7, -0x3f1fd70a

    const v8, 0x3f595810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e8df3b6

    const v4, 0x3fc5c28f

    const v5, -0x3ec628f6

    const v6, 0x3fdced91

    const v7, -0x3de179db

    const v8, 0x3f4f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e00ef9e

    const v4, -0x407a9fbe

    const v5, -0x3d7e62d1

    const v6, -0x3ebf0e56

    const v7, -0x3d625fbe

    const v8, -0x3e717cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f436c8b

    const v4, -0x3f8947ae

    const v5, -0x3eb11eb8

    const v6, -0x3f3c9ba6

    const v7, -0x3e5c0625

    const v8, -0x3f3c9ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e48312

    const/4 v4, 0x0

    const v5, 0x415d020c

    const v6, -0x3fffef9e

    const v7, 0x419bf3b6

    const v8, -0x3f511eb8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41587efa

    const v4, -0x3f5ce560

    const v5, 0x423ced91

    const v6, -0x3e92353f

    const v7, 0x429e7be7

    const v8, -0x3e7f5810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41eab852

    const v4, -0x4070e560

    const v5, 0x41c5978d

    const v6, -0x40e56042

    const v7, 0x421fbd71

    const v8, -0x4249ba5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40880831

    const v4, 0x3e1374bc

    const v5, 0x40df851f

    const v6, -0x41e24dd3

    const v7, 0x410f78d5

    const v8, 0x3e24dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cb43958

    const v4, 0x3b83126f

    const v5, 0x3d50e560

    const v6, 0x3c03126f

    const v7, 0x3d99999a

    const v8, 0x3c449ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff83127

    const v4, 0x3f41cac1

    const v5, 0x408178d5

    const v6, 0x3f974bc7

    const v7, 0x40c820c5

    const v8, 0x3f974bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x411828f6

    const/4 v4, 0x0

    const v5, 0x4189c083

    const v6, -0x3f093f7d

    const v7, 0x4189c083

    const v8, -0x3e763f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440d86fa

    const v4, 0x446d9f4c

    const v5, 0x440b999a

    const v6, 0x446bb1fc

    const v7, 0x44093906

    const v8, 0x446bb1fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440a8ccd

    const v3, 0x446bc1aa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fce978d

    const/4 v4, 0x0

    const v5, -0x3f53b646

    const v6, 0x3f2c8b44

    const v7, -0x3f09c28f

    const v8, 0x3fed0e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff020c5

    const v4, 0x3ebef9db

    const v5, -0x3f45374c

    const v6, 0x3f4978d5

    const v7, -0x3ecf78d5

    const v8, 0x3fa18937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e7b8312

    const v4, 0x3fad0e56

    const v5, -0x3eab0625

    const v6, 0x3fbeb852

    const v7, -0x3ddb9581

    const v8, 0x3f010625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e015e35

    const v4, -0x406ccccd

    const v5, -0x3d7e5168

    const v6, -0x3ebda9fc

    const v7, -0x3d6232b0

    const v8, -0x3e6fef9e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4322d1

    const v4, -0x3f881062

    const v5, -0x3eb0b439

    const v6, -0x3f3ba5e3

    const v7, -0x3e5ba7f0

    const v8, -0x3f3ba5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e4ed91

    const/4 v4, 0x0

    const v5, 0x415d6042

    const v6, -0x3fff7cee

    const v7, 0x419c2f1b

    const v8, -0x3f508312

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415a353f

    const v4, -0x3f57ced9

    const v5, 0x423d6c8b

    const v6, -0x3e8eb852

    const v7, 0x429ecb44

    const v8, -0x3e7c0a3d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e75604

    const v4, -0x40618937

    const v5, 0x41c5e148

    const v6, -0x40b91687

    const v7, 0x42256c8b

    const v8, -0x41591687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a3126f

    const v4, 0x3e7ced91

    const v5, 0x4113be77

    const v6, 0x3dae147b

    const v7, 0x4139e354

    const v8, 0x3ee8f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ec39581

    const v4, 0x3d71a9fc

    const v5, 0x3f72f1aa

    const v6, 0x3e158106

    const v7, 0x3fb22d0e

    const v8, 0x3e6353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fee978d

    const v4, 0x3f343958

    const v5, 0x40784189

    const v6, 0x3f8d2f1b

    const v7, 0x40bfa5e3

    const v8, 0x3f8d2f1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4115fbe7

    const/4 v4, 0x0

    const v5, 0x4187c8b4

    const v6, -0x3f0ccccd

    const v7, 0x4187c8b4

    const v8, -0x3e78374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440ecb12

    const v4, 0x446da800

    const v5, 0x440ce4ac

    const v6, 0x446bc1aa

    const v7, 0x440a8ccd

    const v8, 0x446bc1aa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440b9b33

    const v3, 0x446bd158

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc79db2

    const/4 v4, 0x0

    const v5, -0x3f4d2f1b

    const v6, 0x3f3ba5e3

    const v7, -0x3f0170a4

    const v8, 0x40010625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc91687

    const v4, 0x3ed60419

    const v5, -0x3f0cb439

    const v6, 0x3f66a7f0

    const v7, -0x3ea9ba5e

    const v8, 0x3fb10625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e700e56

    const v4, 0x3f945a1d

    const v5, -0x3e8fe76d

    const v6, 0x3fa08312

    const v7, -0x3dd5b22d

    const v8, 0x3e4bc6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e01d2f2

    const v4, -0x405f1aa0

    const v5, -0x3d7e420c

    const v6, -0x3ebc49ba

    const v7, -0x3d6206a8

    const v8, -0x3e6e645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42d0e5

    const v4, -0x3f86d917

    const v5, -0x3eb045a2

    const v6, -0x3f3aa7f0

    const v7, -0x3e5b45a2

    const v8, -0x3f3aa7f0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e54fdf

    const/4 v4, 0x0

    const v5, 0x415db646

    const v6, -0x3fff0a3d

    const v7, 0x419c6873

    const v8, -0x3f4ff7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415be354

    const v4, -0x3f52b852

    const v5, 0x423deb85

    const v6, -0x3e8b3333

    const v7, 0x429f1ba6

    const v8, -0x3e78ba5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e3f1aa

    const v4, -0x40520c4a

    const v5, 0x41c62b02

    const v6, -0x408c8b44

    const v7, 0x422b1db2

    const v8, -0x40ef5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40be147b

    const v4, 0x3eb43958

    const v5, 0x4137b646

    const v6, 0x3ea66666

    const v7, 0x41644dd3

    const/high16 v8, 0x3f400000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e8624dd

    const v4, 0x3d23d70a

    const v5, 0x3f11a9fc

    const v6, 0x3dba5e35

    const v7, 0x3f5f7cee

    const v8, 0x3e158106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fff1aa0

    const v4, 0x3f56872b

    const v5, 0x4085b22d

    const v6, 0x3fa78d50

    const v7, 0x40cf3333

    const v8, 0x3fa78d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4113d2f2

    const/4 v4, 0x0

    const v5, 0x4185d4fe

    const v6, -0x3f1049ba

    const v7, 0x4185d4fe

    const v8, -0x3e7a2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x440fc9db

    const v4, 0x446db093

    const v5, 0x440dea7f

    const v6, 0x446bd158

    const v7, 0x440b9b33

    const v8, 0x446bd158

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440cd6fa

    const v3, 0x446be106

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc820c5

    const/4 v4, 0x0

    const v5, -0x3f4dcac1

    const v6, 0x3f3df3b6

    const v7, -0x3f02872b

    const v8, 0x40022d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fafdf3b

    const v4, 0x3efc6a7f

    const v5, -0x3ee4f1aa

    const v6, 0x3f8df3b6

    const v7, -0x3e79f7cf

    const v8, 0x3fd3126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e649581

    const v4, 0x3f774bc7

    const v5, -0x3e7a645a

    const v6, 0x3f826e98

    const v7, -0x3dcfcdd3

    const v8, -0x4224dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0249ba

    const v4, -0x405147ae

    const v5, -0x3d7e34bc

    const v6, -0x3ebaf1aa

    const v7, -0x3d61dc29

    const v8, -0x3e6cdd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f427efa

    const v4, -0x3f859168

    const v5, -0x3eafcac1

    const v6, -0x3f39999a

    const v7, -0x3e5add2f

    const v8, -0x3f39999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5c28f

    const/4 v4, 0x0

    const v5, 0x415e24dd

    const v6, -0x3ffe872b

    const v7, 0x419cac08

    const v8, -0x3f4f4bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415da1cb

    const v4, -0x3f4da9fc

    const v5, 0x423e6a7f

    const v6, -0x3e87b22d

    const v7, 0x429f68f6

    const v8, -0x3e7570a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41e08f5c

    const v4, -0x4042b021

    const v5, 0x41c676c9

    const v6, -0x407020c5

    const v7, 0x4230cdd3

    const v8, -0x40b26e98

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d91eb8

    const v4, 0x3ee978d5

    const v5, 0x415bb22d

    const v6, 0x3f10624e

    const v7, 0x41875c29

    const v8, 0x3f858106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0d4fdf

    const v4, 0x3da9fbe7

    const v5, 0x3f9851ec

    const v6, 0x3e591687

    const v7, 0x3fd9fbe7

    const v8, 0x3ea5e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff9374c

    const v4, 0x3f4f9db2

    const v5, 0x4082978d

    const v6, 0x3fa1a9fc

    const v7, 0x40ca45a2

    const v8, 0x3fa1a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4111a9fc

    const/4 v4, 0x0

    const v5, 0x4183dd2f

    const v6, -0x3f13c6a8

    const v7, 0x4183dd2f

    const v8, -0x3e7c20c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4410f5f4

    const v4, 0x446db948

    const v5, 0x440f1da2

    const v6, 0x446be106

    const v7, 0x440cd6fa

    const v8, 0x446be106

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440df77d

    const v3, 0x446bf0a4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc47ae1

    const/4 v4, 0x0

    const v5, -0x3f4a8f5c

    const v6, 0x3f4a3d71

    const v7, -0x3eff4fdf

    const v8, 0x40096873

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9353f8

    const v4, 0x3f0b020c

    const v5, -0x3ec5e354

    const v6, 0x3fa16873

    const v7, -0x3e63bc6a

    const v8, 0x3fe9374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5920c5

    const v4, 0x3f45e354

    const v5, -0x3e6cd4fe

    const v6, 0x3f4872b0

    const v7, -0x3dc9ea7f

    const v8, -0x412c8b44

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e02c49c

    const v4, -0x4043b646

    const v5, -0x3d7e28f6

    const v6, -0x3eb9999a

    const v7, -0x3d61b333

    const v8, -0x3e6b5a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4224dd

    const v4, -0x3f8428f6

    const v5, -0x3eaf4fdf

    const v6, -0x3f387ae1

    const v7, -0x3e5a70a4

    const v8, -0x3f387ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e63d71

    const/4 v4, 0x0

    const v5, 0x415e978d

    const v6, -0x3ffdf3b6

    const v7, 0x419cf5c3

    const v8, -0x3f4e8f5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f6042

    const v4, -0x3f489375

    const v5, 0x423ee666

    const v6, -0x3e844189

    const v7, 0x429fb53f

    const v8, -0x3e7228f6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41dd2d0e

    const v4, -0x40333333

    const v5, 0x41c6c083

    const v6, -0x4059db23

    const v7, 0x42367efa

    const v8, -0x407ae148

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f420c5

    const v4, 0x3f0f5c29

    const v5, 0x417fae14

    const v6, 0x3f4dd2f2

    const v7, 0x419c8f5c

    const v8, 0x3fab22d1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f1df3b6

    const v4, 0x3dbc6a7f

    const v5, 0x3fa28f5c

    const v6, 0x3e70a3d7

    const v7, 0x3fe78d50

    const v8, 0x3eba5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffdd2f2

    const v4, 0x3f5ced91

    const v5, 0x408547ae

    const v6, 0x3fad4fdf

    const v7, 0x40cee979

    const v8, 0x3fad4fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410f8106

    const/4 v4, 0x0

    const v5, 0x4181e979

    const v6, -0x3f1753f8

    const v7, 0x4181e979

    const v8, -0x3e7e147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441206c9

    const v4, 0x446dc1db

    const v5, 0x44103581

    const v6, 0x446bf0a4

    const v7, 0x440df77d

    const v8, 0x446bf0a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x440f378d

    const v3, 0x446c0052

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc52f1b

    const/4 v4, 0x0

    const v5, -0x3f4b5c29

    const v6, 0x3f4bc6a8

    const/high16 v7, -0x3f000000

    const v8, 0x400a4dd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41926e98

    const v4, 0x3d178d50

    const v5, -0x410ed917

    const v6, 0x3d958106

    const v7, -0x40c872b0

    const v8, 0x3ddd2f1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f7b3b64

    const v4, 0x3f174bc7

    const v5, -0x3ea6f5c3

    const v6, 0x3fb41893

    const v7, -0x3e4df7cf

    const v8, 0x3ffdf3b6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e4da7f0

    const v4, 0x3f147ae1

    const v5, -0x3e5f4396

    const v6, 0x3f0c0831

    const v7, -0x3dc40625

    const v8, -0x40c83127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e034396

    const v4, -0x4035e354

    const v5, -0x3d7e2148

    const v6, -0x3eb849ba

    const v7, -0x3d618c4a

    const v8, -0x3e69db23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41cac1

    const v4, -0x3f82b021

    const v5, -0x3eaec8b4

    const v6, -0x3f374396

    const v7, -0x3e59f9db

    const v8, -0x3f374396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6c083

    const/4 v4, 0x0

    const v5, 0x415f0e56

    const v6, -0x3ffd4fdf

    const v7, 0x419d4396

    const v8, -0x3f4dcac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416126e9

    const v4, -0x3f437cee

    const v5, 0x423f6354

    const v6, -0x3e80d0e5

    const/high16 v7, 0x42a00000

    const v8, -0x3e6ee560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d9cac1

    const v4, -0x40239581

    const v5, 0x41c70a3d

    const v6, -0x40439581

    const v7, 0x423c2f1b

    const v8, -0x405c49ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41079581

    const v4, 0x3f2a3d71

    const v5, 0x4191d4fe

    const v6, 0x3f858106

    const v7, 0x41b1c49c

    const v8, 0x3fd0e560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f895810

    const v4, 0x3e21cac1

    const v5, 0x4009a9fc

    const v6, 0x3eed9168

    const v7, 0x4030d4fe

    const v8, 0x3f1f3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d851eb8

    const v4, 0x3c8b4396

    const v5, 0x3e072b02

    const v6, 0x3cbc6a7f

    const v7, 0x3e4ac083

    const v8, 0x3d178d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef3b64

    const v4, 0x3f441893

    const v5, 0x407a7efa

    const v6, 0x3f983127

    const v7, 0x40c1db23

    const v8, 0x3f983127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410d5810

    const/4 v4, 0x0

    const v5, 0x417fe76d

    const v6, -0x3f1ad0e5

    const v7, 0x417fe76d

    const v8, -0x3e80147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4413372b

    const v4, 0x446dca8f

    const v5, 0x44116cee

    const v6, 0x446c0052

    const v7, 0x440f378d

    const v8, 0x446c0052

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4410577d

    const v3, 0x446c1000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc1cac1

    const/4 v4, 0x0

    const v5, -0x3f4849ba

    const v6, 0x3f560419

    const v7, -0x3efe3127

    const v8, 0x40111687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x416f1aa0

    const v4, 0x3d4ccccd

    const v5, -0x40ebc6a8

    const v6, 0x3dc8b439

    const v7, -0x409c6a7f

    const v8, 0x3e10624e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f6b4bc7

    const v4, 0x3f23126f

    const v5, -0x3e889ba6

    const v6, 0x3fc58106

    const v7, -0x3e391aa0

    const v8, 0x400851ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e423333

    const v4, 0x3ec5a1cb

    const v5, -0x3e51b646

    const v6, 0x3e9fbe77

    const v7, -0x3dbe22d1

    const v8, -0x407d0e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e03c28f

    const v4, -0x402851ec

    const v5, -0x3d7e1917

    const v6, -0x3eb6f9db

    const v7, -0x3d6164dd

    const v8, -0x3e685e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4170a4

    const v4, -0x3f81374c

    const v5, -0x3eae4189

    const v6, -0x3f36147b

    const v7, -0x3e59851f

    const v8, -0x3f36147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e74bc7

    const/4 v4, 0x0

    const v5, 0x415f9581

    const v6, -0x3ffcac08

    const v7, 0x419d978d

    const v8, -0x3f4cf5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4162ed91

    const v4, -0x3f3e76c9

    const v5, 0x423fde35

    const v6, -0x3e7eb22d

    const v7, 0x42a049ba

    const v8, -0x3e6ba3d7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d66873

    const v4, -0x40143958

    const v5, 0x41c753f8

    const v6, -0x402d4fdf

    const v7, 0x4241e042

    const v8, -0x403dd2f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41151687

    const v4, 0x3f44dd2f

    const v5, 0x41a3d2f2

    const v6, 0x3fa41893

    const v7, 0x41c6f7cf

    const v8, 0x3ff6872b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f98d4fe

    const v4, 0x3e333333

    const v5, 0x40122d0e

    const v6, 0x3f049ba6

    const v7, 0x403dc28f

    const v8, 0x3f31eb85

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d449ba6

    const v4, 0x3c54fdf4

    const v5, 0x3dc6a7f0

    const v6, 0x3c9374bc

    const v7, 0x3e158106

    const v8, 0x3ce56042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff20c4a

    const v4, 0x3f4dd2f2

    const v5, 0x407dd2f2

    const v6, 0x3fa0e560

    const v7, 0x40c4c49c

    const v8, 0x3fa0e560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x410b26e9

    const/4 v4, 0x0

    const v5, 0x417bfbe7

    const v6, -0x3f1e4dd3

    const v7, 0x417bfbe7

    const/high16 v8, -0x3e840000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4414476d

    const v4, 0x446dd333

    const v5, 0x44128419

    const v6, 0x446c1000

    const v7, 0x4410577d

    const v8, 0x446c1000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4411821d

    const v3, 0x446c1fae

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc15810

    const/4 v4, 0x0

    const v5, -0x3f47df3b

    const v6, 0x3f5a5e35

    const v7, -0x3efe20c5

    const v8, 0x4013c6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x412c0831

    const v4, 0x3db43958

    const v5, -0x40a5e354

    const v6, 0x3e3020c5

    const v7, -0x4054fdf4

    const v8, 0x3e71a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f5b53f8

    const v4, 0x3f2ed917

    const v5, -0x3e7520c5

    const v6, 0x3fd6e979

    const v7, -0x3e243b64

    const v8, 0x4011a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e36bc6a

    const v4, 0x3e45a1cb

    const v5, -0x3e4426e9

    const v6, 0x3d9db22d

    const v7, -0x3db83f7d

    const v8, -0x4055e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0445a2

    const v4, -0x401ac083

    const v5, -0x3d7e14fe

    const v6, -0x3eb5b22d

    const v7, -0x3d614000

    const v8, -0x3e66e76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f410e56

    const v4, -0x3f7fced9

    const v5, -0x3eadb22d

    const v6, -0x3f34c49c

    const v7, -0x3e590625

    const v8, -0x3f34c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e7e76d

    const/4 v4, 0x0

    const v5, 0x416020c5

    const v6, -0x3ffbf7cf

    const v7, 0x419df1aa

    const v8, -0x3f4c1893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4164bc6a

    const v4, -0x3f396873

    const v5, 0x42405810

    const v6, -0x3e7cfbe7

    const v7, 0x42a091ec

    const v8, -0x3e686666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41d30625

    const v4, -0x4004dd2f

    const v5, 0x41c79db2

    const v6, -0x40174bc7

    const v7, 0x42479062

    const v8, -0x401f7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41229ba6

    const v4, 0x3f5f7cee

    const v5, 0x41b5d2f2

    const v6, 0x3fc2b021

    const v7, 0x41dc2d0e

    const v8, 0x400e147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fa851ec

    const v4, 0x3e439581

    const v5, 0x401ab021

    const v6, 0x3f126e98

    const v7, 0x404ac083

    const v8, 0x3f44dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e0d4fdf

    const v4, 0x3d1374bc

    const v5, 0x3e8e5604

    const v6, 0x3d851eb8

    const v7, 0x3ed6872b

    const v8, 0x3dbe76c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fef1aa0

    const v4, 0x3f4c8b44

    const v5, 0x407af1aa

    const/high16 v6, 0x3fa00000

    const v7, 0x40c2978d

    const/high16 v8, 0x3fa00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4109020c

    const/4 v4, 0x0

    const v5, 0x41781893

    const v6, -0x3f21db23

    const v7, 0x41781893

    const v8, -0x3e87eb85

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4415627f

    const v4, 0x446ddbe7

    const v5, 0x4413a635

    const v6, 0x446c1fae

    const v7, 0x4411821d

    const v8, 0x446c1fae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44127b64

    const v3, 0x446c2f4c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb71aa0

    const/4 v4, 0x0

    const v5, -0x3f3e4dd3

    const v6, 0x3f7374bc

    const v7, -0x3ef85604

    const v8, 0x4024dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41a3d70a

    const v4, 0x3d1ba5e3

    const v5, -0x4126e979

    const v6, 0x3da1cac1

    const v7, -0x40d851ec

    const v8, 0x3ddf3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4b5c29

    const v4, 0x3f3a9fbe

    const v5, -0x3e65f3b6

    const v6, 0x3fe83127

    const v7, -0x3e0f6042

    const v8, 0x401b126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e2b45a2

    const/4 v4, 0x0

    const v5, -0x3e36978d

    const v6, -0x41dd2f1b

    const v7, -0x3db25b23

    const v8, -0x402eb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e04d0e5

    const v4, -0x400d4fdf

    const v5, -0x3d7e12f2

    const v6, -0x3eb472b0

    const v7, -0x3d611d2f

    const v8, -0x3e6574bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f40a3d7

    const v4, -0x3f7ef1aa

    const v5, -0x3ead1687

    const v6, -0x3f33645a

    const v7, -0x3e588106

    const v8, -0x3f33645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e88b44

    const/4 v4, 0x0

    const v5, 0x4160b852

    const v6, -0x3ffb3333

    const v7, 0x419e53f8

    const v8, -0x3f4b22d1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41668f5c

    const v4, -0x3f34624e

    const v5, 0x4240d1ec

    const v6, -0x3e7b4dd3

    const v7, 0x42a0d810

    const v8, -0x3e652f1b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cfa1cb

    const v4, -0x3ffab021

    const v5, 0x41c7e76d

    const v6, -0x40010625

    const v7, 0x424d4083

    const v8, -0x40010625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41301cac

    const v4, 0x3f7a1cac

    const v5, 0x41c7ced9

    const v6, 0x3fe16873

    const v7, 0x41f1624e

    const v8, 0x4020e560

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f5ef9db

    const v4, 0x3e010625

    const v5, 0x3fcdf3b6

    const v6, 0x3ea76c8b

    const v7, 0x400fef9e

    const v8, 0x3f041893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40070a3d

    const v4, 0x3f8d2f1b

    const v5, 0x40905a1d

    const v6, 0x3fdd0e56

    const v7, 0x40e1cac1

    const v8, 0x3fdd0e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4106d917

    const/4 v4, 0x0

    const v5, 0x417428f6

    const v6, -0x3f255810

    const v7, 0x417428f6

    const v8, -0x3e8bd70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44164c08

    const v4, 0x446de47b

    const v5, 0x441496b8

    const v6, 0x446c2f4c

    const v7, 0x44127b64

    const v8, 0x446c2f4c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4413f76d

    const v3, 0x446c3efa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fc1eb85

    const/4 v4, 0x0

    const v5, -0x3f489375

    const v6, 0x3f5e76c9

    const v7, -0x3efefdf4

    const v8, 0x4016c8b4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40d0624e

    const v4, 0x3e395810

    const v5, -0x40439581

    const v6, 0x3ebd70a4

    const v7, -0x3fe70a3d

    const v8, 0x3ef851ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f391eb8

    const v4, 0x3f47ef9e

    const v5, -0x3e553d71

    const v6, 0x3fff9db2

    const v7, -0x3dfb70a4

    const v8, 0x4021374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e1d3b64

    const/4 v4, 0x0

    const v5, -0x3e2ca5e3

    const v6, -0x41ab020c

    const v7, -0x3dae851f

    const v8, -0x400e353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05624e

    const v4, -0x3ff5e354

    const v5, -0x3d7d3852

    const v6, -0x3eb2e148

    const v7, -0x3d600bc7

    const v8, -0x3e63d70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f403958

    const v4, -0x3f7e147b

    const v5, -0x3eac7efa

    const v6, -0x3f320419

    const v7, -0x3e57f9db

    const v8, -0x3f320419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e95810

    const/4 v4, 0x0

    const v5, 0x416178d5

    const v6, -0x3ffa3d71

    const v7, 0x419ecccd

    const v8, -0x3f49f3b6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41690625

    const v4, -0x3f2ef1aa

    const v5, 0x424329fc

    const v6, -0x3e7acac1

    const v7, 0x42a20d50

    const v8, -0x3e629168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41cd1687

    const v4, -0x3feee979

    const v5, 0x41c0e354

    const v6, -0x3ff5b22d

    const v7, 0x4250ef9e

    const v8, -0x3ff5b22d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x413fd2f2

    const v4, 0x3f56872b

    const v5, 0x41dc0a3d

    const v6, 0x3fe5c28f

    const v7, 0x4204cac1

    const v8, 0x40265604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc9ba5e

    const v4, 0x3e645a1d

    const v5, 0x4032f1aa

    const v6, 0x3f3020c5

    const v7, 0x406cac08

    const v8, 0x3f6ccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e6978d5

    const v4, 0x3d75c28f

    const v5, 0x3eed0e56

    const v6, 0x3ddd2f1b

    const v7, 0x3f326e98

    const v8, 0x3e189375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff374bc

    const v4, 0x3f5f3b64

    const v5, 0x408051ec

    const v6, 0x3faf9db2

    const v7, 0x40c79db2

    const v8, 0x3faf9db2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4104b021

    const/4 v4, 0x0

    const v5, 0x41704189

    const v6, -0x3f28d4fe

    const v7, 0x41704189

    const v8, -0x3e8fc28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4417b873

    const v4, 0x446ded2f

    const v5, 0x44160a2d

    const v6, 0x446c3efa

    const v7, 0x4413f76d

    const v8, 0x446c3efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441501ba

    const v3, 0x446c4ea8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb374bc

    const/4 v4, 0x0

    const v5, -0x3f3b53f8

    const v6, 0x3f8374bc

    const v7, -0x3ef6f9db

    const v8, 0x403020c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x411ba5e3

    const v4, 0x3dc28f5c

    const v5, -0x4095c28f

    const v6, 0x3e3b645a

    const v7, -0x40491687

    const v8, 0x3e7be76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f26e148

    const v4, 0x3f553f7d

    const v5, -0x3e448937

    const v6, 0x400b851f

    const v7, -0x3def322d

    const v8, 0x40274bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0f3127

    const/4 v4, 0x0

    const v5, -0x3e22b439

    const v6, -0x417ced91

    const v7, -0x3daaae14

    const v8, -0x3ff6d917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05f3b6

    const v4, -0x3fe52f1b

    const v5, -0x3d7c5fbe

    const v6, -0x3eb147ae

    const v7, -0x3d5efb64

    const v8, -0x3e623d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3fced9

    const v4, -0x3f7d374c

    const v5, -0x3eabe354

    const v6, -0x3f30ac08

    const v7, -0x3e5772b0

    const v8, -0x3f30ac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ea1cac

    const/4 v4, 0x0

    const v5, 0x4162353f

    const v6, -0x3ff95810

    const v7, 0x419f4396

    const v8, -0x3f48bc6a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416b7cee

    const v4, -0x3f29999a

    const v5, 0x42458106

    const v6, -0x3e7a47ae

    const v7, 0x42a3428f

    const v8, -0x3e5ff5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41ca8937

    const v4, -0x3fe33333

    const v5, 0x41b9df3b

    const v6, -0x3feaf1aa

    const v7, 0x42549fbe

    const v8, -0x3feaf1aa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414f8937

    const v4, 0x3f326e98

    const v5, 0x41f047ae

    const v6, 0x3fe9db23

    const v7, 0x4210e666

    const v8, 0x402ba5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f8a9fbe

    const v4, 0x3e19999a

    const v5, 0x3fff5c29

    const v6, 0x3ecfdf3b

    const v7, 0x4031db23

    const v8, 0x3f249ba6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400b851f

    const v4, 0x3fa24dd3

    const v5, 0x4096872b

    const v6, 0x400072b0

    const v7, 0x40ecf5c3

    const v8, 0x400072b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41028312

    const/4 v4, 0x0

    const v5, 0x416c5604

    const v6, -0x3f2c624e

    const v7, 0x416c5604

    const v8, -0x3e93a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4418b312

    const v4, 0x446df5d3

    const v5, 0x44170bd7

    const v6, 0x446c4ea8

    const v7, 0x441501ba

    const v8, 0x446c4ea8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4416622d

    const v3, 0x446c5e56

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb83127

    const/4 v4, 0x0

    const v5, -0x3f3fdf3b

    const v6, 0x3f7ef9db

    const v7, -0x3efa0c4a

    const v8, 0x402ae148

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40c49ba6

    const v4, 0x3e408312

    const v5, -0x40376c8b

    const v6, 0x3ebf7cee

    const v7, -0x3fdf7cee

    const v8, 0x3ef95810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f14ac08

    const v4, 0x3f628f5c

    const v5, -0x3e33d4fe

    const v6, 0x40172b02

    const v7, -0x3de2f2b0

    const v8, 0x402d6042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0128f6

    const/4 v4, 0x0

    const v5, -0x3e18c49c

    const v6, -0x41645a1d

    const v7, -0x3da6d810

    const v8, -0x3fe6a7f0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e06872b

    const v4, -0x3fd47ae1

    const v5, -0x3d7b8ac1

    const v6, -0x3eafb22d

    const v7, -0x3d5dec8b

    const v8, -0x3e60a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3f645a

    const v4, -0x3f7c49ba

    const v5, -0x3eab3b64

    const v6, -0x3f2f2b02

    const v7, -0x3e56e148

    const v8, -0x3f2f2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40eaf9db

    const/4 v4, 0x0

    const v5, 0x4163020c

    const v6, -0x3ff8624e

    const v7, 0x419fc49c

    const v8, -0x3f4774bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416e0419

    const v4, -0x3f2449ba

    const v5, 0x4247d604

    const v6, -0x3e79cac1

    const v7, 0x42a4753f

    const v8, -0x3e5d6042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x41c80000

    const v4, -0x3fd76c8b

    const v5, 0x41b2dd2f

    const v6, -0x3fe020c5

    const v7, 0x42584fdf

    const v8, -0x3fe020c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415f3f7d

    const v4, 0x3f0f1aa0

    const v5, 0x42024189

    const v6, 0x3fee147b

    const/high16 v7, 0x421d0000

    const v8, 0x40311687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd3d70a

    const v4, 0x3e656042

    const v5, 0x403d4fdf

    const v6, 0x3f2f5c29

    const v7, 0x407ea7f0

    const v8, 0x3f7b645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4006872b

    const v4, 0x3f976c8b

    const v5, 0x4090ac08

    const v6, 0x3fef3b64

    const v7, 0x40e353f8

    const v8, 0x3fef3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41005604

    const/4 v4, 0x0

    const v5, 0x41686666

    const v6, -0x3f2fdf3b

    const v7, 0x41686666

    const v8, -0x3e97999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441a03d7

    const v4, 0x446dfe87

    const v5, 0x44186396

    const v6, 0x446c5e56

    const v7, 0x4416622d

    const v8, 0x446c5e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4417821d

    const v3, 0x446c6e04

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fafdf3b

    const/4 v4, 0x0

    const v5, -0x3f3849ba

    const v6, 0x3f8c49ba

    const v7, -0x3ef5b646

    const v8, 0x403b4396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40da9fbe

    const v4, 0x3e1ba5e3

    const v5, -0x4054bc6a

    const v6, 0x3e970a3d

    const v7, -0x3ff89375

    const v8, 0x3ec624dd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f026666

    const v4, 0x3f7020c5

    const v5, -0x3e2320c5

    const v6, 0x4022e148

    const v7, -0x3dd6b333

    const v8, 0x40339581

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df98f5c

    const/4 v4, 0x0

    const v5, -0x3e0ed4fe

    const v6, -0x414b4396

    const v7, -0x3da30312

    const v8, -0x3fd65604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e071cac

    const v4, -0x3fc3e76d

    const v5, -0x3d7ab74c

    const v6, -0x3eae1cac

    const v7, -0x3d5cde35

    const v8, -0x3e5f1687

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3ef1aa

    const v4, -0x3f7b53f8

    const v5, -0x3eaa9375

    const v6, -0x3f2da9fc

    const v7, -0x3e564dd3

    const v8, -0x3f2da9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x40ec0000

    const/4 v4, 0x0

    const v5, 0x4163f7cf

    const v6, -0x3ff72b02

    const v7, 0x41a06042

    const v8, -0x3f45f3b6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4170ac08

    const v4, -0x3f1f020c

    const v5, 0x424a27f0

    const v6, -0x3e795604

    const v7, 0x42a5a148

    const v8, -0x3e5ad917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c574bc

    const v4, -0x3fcba5e3

    const v5, 0x41abd917

    const v6, -0x3fd54fdf

    const v7, 0x425c0106

    const v8, -0x3fd54fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416ef1aa

    const v4, 0x3ed6872b

    const v5, 0x420c6042

    const v6, 0x3ff24dd3

    const v7, 0x42291893

    const v8, 0x403676c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f9ced91

    const v4, 0x3e26e979

    const v5, 0x4010c49c

    const v6, 0x3ee76c8b

    const v7, 0x404a1cac

    const v8, 0x3f395810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fae14

    const v4, 0x3fbc6a7f

    const v5, 0x409dba5e

    const v6, 0x40153f7d

    const v7, 0x40fa0419

    const v8, 0x40153f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40fc6a7f

    const/4 v4, 0x0

    const v5, 0x41647efa

    const v6, -0x3f3353f8

    const v7, 0x41647efa

    const v8, -0x3e9b7cee

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441b1419

    const v4, 0x446e071b

    const v5, 0x44197af2

    const v6, 0x446c6e04

    const v7, 0x4417821d

    const v8, 0x446c6e04

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4418d385

    const v3, 0x446c7da2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb1999a

    const/4 v4, 0x0

    const v5, -0x3f39fbe7

    const v6, 0x3f8c49ba

    const v7, -0x3ef70e56

    const v8, 0x403b126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40a9fbe7

    const v4, 0x3e5c28f6

    const v5, -0x401bc6a8

    const v6, 0x3ed91687

    const v7, -0x3fc978d5

    const v8, 0x3f0c8b44

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ef8147b

    const v4, 0x3f7d70a4

    const v5, -0x3e126a7f

    const v6, 0x402e978d

    const v7, -0x3dca73b6

    const v8, 0x4039999a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df28a3d

    const/4 v4, 0x0

    const v5, -0x3e04e148

    const v6, -0x41333333

    const v7, -0x3d9f2d0e

    const v8, -0x3fc624dd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e07a3d7

    const v4, -0x3fb34396

    const v5, -0x3d79ddb2

    const v6, -0x3eac76c9

    const v7, -0x3d5bcb44

    const v8, -0x3e5d7ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e8f5c

    const v4, -0x3f7a7efa

    const v5, -0x3eaa0419

    const v6, -0x3f2c49ba

    const v7, -0x3e55ced9

    const v8, -0x3f2c49ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ecfdf4

    const/4 v4, 0x0

    const v5, 0x4164e148

    const v6, -0x3ff6147b

    const v7, 0x41a0f5c3

    const v8, -0x3f447ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41734bc7

    const v4, -0x3f19d2f2

    const v5, 0x424c79db

    const v6, -0x3e78dd2f

    const v7, 0x42a6cf5c

    const v8, -0x3e584fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c2e560

    const v4, -0x3fbfef9e

    const v5, 0x41a4d4fe

    const v6, -0x3fca8f5c

    const v7, 0x425fb021

    const v8, -0x3fca8f5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x417ea7f0

    const v4, 0x3e8ed917

    const v5, 0x42167df4

    const v6, 0x3ff6872b

    const v7, 0x42353333

    const v8, 0x403bc6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc6e979

    const v4, 0x3e50e560

    const v5, 0x40360419

    const v6, 0x3f1ae148

    const v7, 0x4079fbe7

    const v8, 0x3f6f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400df3b6

    const v4, 0x3fbba5e3

    const v5, 0x409bdf3b

    const v6, 0x4014cccd

    const v7, 0x40f74bc7

    const v8, 0x4014cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f81062

    const/4 v4, 0x0

    const v5, 0x41609375

    const v6, -0x3f36e148

    const v7, 0x41609375

    const v8, -0x3e9f6873

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441c55d3

    const v4, 0x446e0fcf

    const v5, 0x441ac3a6

    const v6, 0x446c7da2

    const v7, 0x4418d385

    const v8, 0x446c7da2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441a0800

    const v3, 0x446c8d50

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fada1cb

    const/4 v4, 0x0

    const v5, -0x3f364dd3

    const v6, 0x3f933333

    const v7, -0x3ef53f7d

    const v8, 0x40445a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40a20c4a

    const v4, 0x3e624dd3

    const v5, -0x40145a1d

    const v6, 0x3ede353f

    const v7, -0x3fc3f7cf

    const v8, 0x3f0f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3eeef9db

    const v4, 0x3f858106

    const v5, -0x3e01b439

    const v6, 0x403a4dd3

    const v7, -0x3dbe353f

    const v8, 0x403fdf3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3deb851f

    const/4 v4, 0x0

    const v5, -0x3dfd78d5

    const v6, -0x411a1cac

    const v7, -0x3d9b5604

    const v8, -0x3fb5d2f2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0820c5

    const v4, -0x3fa2b021

    const v5, -0x3d78fdf4

    const v6, -0x3eaab439

    const v7, -0x3d5ab4bc

    const v8, -0x3e5bd917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e3d71

    const v4, -0x3f79c28f

    const v5, -0x3ea98937

    const v6, -0x3f2b0a3d

    const v7, -0x3e555e35

    const v8, -0x3f2b0a3d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40edf3b6

    const/4 v4, 0x0

    const v5, 0x4165c28f

    const v6, -0x3ff4fdf4

    const v7, 0x41a18312

    const v8, -0x3f43126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4175df3b

    const v4, -0x3f14ac08

    const v5, 0x424ec7ae

    const v6, -0x3e78645a

    const v7, 0x42a7fefa

    const v8, -0x3e55c28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c05c29

    const v4, -0x3fb41893

    const v5, 0x419dd2f2

    const v6, -0x3fbfbe77

    const v7, 0x42636042

    const v8, -0x3fbfbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41872d0e

    const v4, 0x3e0e5604

    const v5, 0x42209ba6

    const v6, 0x3ffac083

    const v7, 0x42414ccd

    const v8, 0x4041374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fc3126f

    const v4, 0x3e4ac083

    const v5, 0x4033126f

    const v6, 0x3f133333

    const v7, 0x407820c5

    const v8, 0x3f68b439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401020c5

    const v4, 0x3fcccccd

    const v5, 0x409fd70a

    const v6, 0x402353f8

    const v7, 0x40fef9db

    const v8, 0x402353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40f3be77

    const/4 v4, 0x0

    const v5, 0x415ca7f0

    const v6, -0x3f3a5e35

    const v7, 0x415ca7f0

    const v8, -0x3ea353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441d7aa0

    const v4, 0x446e1862

    const v5, 0x441bef6d

    const v6, 0x446c8d50

    const v7, 0x441a0800

    const v8, 0x446c8d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441b376d

    const v3, 0x446c9cfe

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faa1cac

    const/4 v4, 0x0

    const v5, -0x3f33645a

    const v6, 0x3f9c0831

    const v7, -0x3ef3e354

    const v8, 0x404e76c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x409ced91

    const v4, 0x3e6353f8

    const v5, -0x40110625

    const v6, 0x3ede353f

    const v7, -0x3fc1999a

    const v8, 0x3f0f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8c28f6

    const v5, -0x3df88000

    const v6, 0x4045e354

    const v7, -0x3db1f5c3

    const v8, 0x4045e354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de48000

    const/4 v4, 0x0

    const v5, -0x3df88000

    const v6, -0x41018937

    const v7, -0x3d978000

    const v8, -0x3fa59168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e089fbe

    const v4, -0x3f920c4a

    const v5, -0x3d78224e

    const v6, -0x3ea8fdf4

    const v7, -0x3d599fbe

    const v8, -0x3e5a3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3ddb23

    const v4, -0x3f78ed91

    const v5, -0x3ea9020c

    const v6, -0x3f29a9fc

    const v7, -0x3e54e560

    const v8, -0x3f29a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ef020c

    const/4 v4, 0x0

    const v5, 0x4166c49c

    const v6, -0x3ff3c6a8

    const v7, 0x41a226e9

    const v8, -0x3f4170a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4178872b

    const v4, -0x3f0f9581

    const v5, 0x4251126f

    const v6, -0x3e77f1aa

    const v7, 0x42a928f6

    const v8, -0x3e533f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bdd0e5

    const v4, -0x3fa872b0

    const v5, 0x4196d0e5

    const v6, -0x3fb50e56

    const v7, 0x42671168

    const v8, -0x3fb50e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418f0831

    const/4 v4, 0x0

    const v5, 0x422aba5e

    const v6, 0x3ffeb852

    const v7, 0x424d6666

    const v8, 0x404676c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fb6e979

    const v4, 0x3e3c6a7f

    const v5, 0x4029374c

    const v6, 0x3f049ba6

    const v7, 0x406ced91

    const v8, 0x3f56c8b4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40127efa

    const v4, 0x3fe2b021

    const v5, 0x40a50625

    const v6, 0x4034ed91

    const v7, 0x4104624e

    const v8, 0x4034ed91

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ef645a

    const/4 v4, 0x0

    const v5, 0x4158c083

    const v6, -0x3f3de354

    const v7, 0x4158c083

    const v8, -0x3ea73f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441e9a6f

    const v4, 0x446e2117

    const v5, 0x441d1646

    const v6, 0x446c9cfe

    const v7, 0x441b376d

    const v8, 0x446c9cfe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441c622d

    const v3, 0x446cac9c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faea7f0

    const/4 v4, 0x0

    const v5, -0x3f37b646

    const v6, 0x3f983127

    const v7, -0x3ef6cccd

    const v8, 0x40495810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x405624dd

    const v4, 0x3eb33333

    const v5, -0x3fc5e354

    const v6, 0x3f374bc7

    const v7, -0x3f64624e

    const v8, 0x3f7020c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8c28f6

    const v5, -0x3df1178d

    const v6, 0x40378d50

    const v7, -0x3daa7cee

    const v8, 0x4036353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de470a4

    const v4, -0x42c39581

    const v5, -0x3df048b4

    const v6, -0x40f0a3d7

    const v7, -0x3d8f70a4

    const v8, -0x3fa645a2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e077cee

    const v4, -0x3f96b852

    const v5, -0x3d797127

    const v6, -0x3ea0e979

    const v7, -0x3d5b4a3d

    const v8, -0x3e574396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3e6e98

    const v4, -0x3f7a24dd

    const v5, -0x3ea9ced9

    const v6, -0x3f2bb646

    const v7, -0x3e559db2

    const v8, -0x3f2bb646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ed6042

    const/4 v4, 0x0

    const v5, 0x41653f7d

    const v6, -0x3ff5a1cb

    const v7, 0x41a12f1b

    const v8, -0x3f43df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41741062

    const v4, -0x3f1753f8

    const v5, 0x424d24dd

    const v6, -0x3e73b439

    const v7, 0x42a78312

    const v8, -0x3e505c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41be645a

    const v4, -0x3fb0c49c

    const v5, 0x41a73d71

    const v6, -0x3fb5d2f2

    const v7, 0x426f53f8

    const v8, -0x3fb1db23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ebe77

    const v4, -0x4322d0e5

    const v5, 0x42314396

    const v6, 0x3fd83127

    const v7, 0x4254c083

    const v8, 0x40360419

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x401353f8

    const v4, 0x3e9ba5e3

    const v5, 0x40834bc7

    const v6, 0x3f5126e9

    const v7, 0x40b245a2

    const v8, 0x3f9f3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fbe77

    const v4, 0x3fddd2f2

    const v5, 0x40a1db23

    const v6, 0x4031374c

    const v7, 0x4101d2f2

    const v8, 0x4031374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40eb126f

    const/4 v4, 0x0

    const v5, 0x4154d0e5

    const v6, -0x3f416873

    const v7, 0x4154d0e5

    const v8, -0x3eab2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x441fb571

    const v4, 0x446e29ba

    const v5, 0x441e3852

    const v6, 0x446cac9c

    const v7, 0x441c622d

    const v8, 0x446cac9c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441d719a

    const v3, 0x446cbc4a

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fae147b

    const/4 v4, 0x0

    const v5, -0x3f3753f8

    const v6, 0x3f9c6a7f

    const v7, -0x3ef6fdf4

    const v8, 0x404e147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x4030c49c

    const v4, 0x3edba5e3

    const v5, -0x3f9ba5e3

    const v6, 0x3f5eb852

    const v7, -0x3f3b126f

    const v8, 0x3f94dd2f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8c28f6

    const v5, -0x3de9ae14

    const v6, 0x40291687

    const v7, -0x3da30312

    const v8, 0x40266666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4624e

    const v4, -0x42439581

    const v5, -0x3de8126f

    const v6, -0x40e0c49c

    const v7, -0x3d87624e

    const v8, -0x3fa6f9db

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e064dd3

    const v4, -0x3f9b645a

    const v5, -0x3d7abb64

    const v6, -0x3e98b021

    const v7, -0x3d5cf0a4

    const v8, -0x3e544189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3f020c

    const v4, -0x3f7b74bc

    const v5, -0x3eaaac08

    const v6, -0x3f2de354

    const v7, -0x3e56624e

    const v8, -0x3f2de354

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ebbe77

    const/4 v4, 0x0

    const v5, 0x4163b646

    const v6, -0x3ff77cee

    const v7, 0x41a0374c

    const v8, -0x3f465604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416f9168

    const v4, -0x3f1f5c29

    const v5, 0x42493127

    const v6, -0x3e6f74bc

    const v7, 0x42a5de35

    const v8, -0x3e4d74bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bef5c3

    const v4, -0x3fb926e9

    const v5, 0x41b7ac08

    const v6, -0x3fb6a7f0

    const v7, 0x4277978d

    const v8, -0x3faeb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418e74bc

    const v4, -0x429eb852

    const v5, 0x4237cccd

    const v6, 0x3fb1cac1

    const v7, 0x425c1893

    const v8, 0x402570a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4037ae14

    const v4, 0x3ec624dd

    const v5, 0x40a00831

    const v6, 0x3f72f1aa

    const v7, 0x40d7b646

    const v8, 0x3fb78d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400fbe77

    const v4, 0x3fe9db23

    const v5, 0x40a3645a

    const v6, 0x403b74bc

    const v7, 0x4103a1cb

    const v8, 0x403b74bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6c8b4

    const/4 v4, 0x0

    const v5, 0x4150ed91

    const v6, -0x3f44e560

    const v7, 0x4150ed91

    const v8, -0x3eaf126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4420b550

    const v4, 0x446e326f

    const v5, 0x441f3f2b

    const v6, 0x446cbc4a

    const v7, 0x441d719a

    const v8, 0x446cbc4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441ea158

    const v3, 0x446ccc08

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb3f7cf

    const/4 v4, 0x0

    const v5, -0x3f3cfdf4

    const v6, 0x3f9624dd

    const v7, -0x3efa9fbe

    const v8, 0x404645a2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ffcbc6a

    const v4, 0x3f147ae1

    const v5, -0x3f6f9581

    const v6, 0x3f958106

    const v7, -0x3efd5810

    const v8, 0x3fca9fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8c0831

    const v5, -0x3de245a2

    const v6, 0x401ab021

    const v7, -0x3d9b8a3d

    const v8, 0x4016a7f0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de452f2

    const v4, -0x41f1a9fc

    const v5, -0x3ddfdb23

    const v6, -0x40d0e560

    const v7, -0x3d7fa979

    const v8, -0x3fa79db2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e05020c

    const/high16 v4, -0x3fa00000

    const v5, -0x3d7bf9db

    const v6, -0x3e9049ba

    const v7, -0x3d5e8e56

    const v8, -0x3e51353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f3fb646

    const v4, -0x3f7cf5c3

    const v5, -0x3eabb646

    const v6, -0x3f304189

    const v7, -0x3e574bc7

    const v8, -0x3f304189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ea4dd3

    const/4 v4, 0x0

    const v5, 0x41625e35

    const v6, -0x3ff9374c

    const v7, 0x419f5e35

    const v8, -0x3f487ae1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x416b2f1b

    const v4, -0x3f27b646

    const v5, 0x42453333

    const v6, -0x3e6b4396

    const v7, 0x42a430a4

    const v8, -0x3e4aa1cb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41bf8937

    const v4, -0x3fc16873

    const v5, 0x41c81aa0

    const v6, -0x3fb77cee

    const v7, 0x427fdc29

    const v8, -0x3fabb646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418e28f6

    const v4, -0x42560419

    const v5, 0x423e5604

    const v6, 0x3f8b020c

    const v7, 0x426371aa

    const v8, 0x4014cccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4078a3d7

    const v4, 0x3f07ef9e

    const v5, 0x40d08312

    const v6, 0x3f9d9168

    const v7, 0x410aa3d7

    const v8, 0x3fe95810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400d3f7d

    const v4, 0x3fe6872b

    const v5, 0x40a09ba6

    const v6, 0x4038d4fe

    const v7, 0x41016c8b

    const v8, 0x4038d4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e26e98

    const/4 v4, 0x0

    const v5, 0x414d020c

    const v6, -0x3f486a7f

    const v7, 0x414d020c

    const v8, -0x3eb2fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4421d550

    const v4, 0x446e3b12

    const v5, 0x44206625

    const v6, 0x446ccc08

    const v7, 0x441ea158

    const v8, 0x446ccc08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x441f976d

    const v3, 0x446cdbb6

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fadd2f2

    const/4 v4, 0x0

    const v5, -0x3f3774bc

    const v6, 0x3fa22d0e

    const v7, -0x3ef7eb85

    const v8, 0x40550e56

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff10625

    const v4, 0x3f1fbe77

    const v5, -0x3f638d50

    const v6, 0x3f99374c

    const v7, -0x3ef1e354

    const v8, 0x3fd33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8c0831

    const v5, -0x3ddade35

    const v6, 0x400c3958

    const v7, -0x3d941168

    const v8, 0x4006d917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de44396

    const v4, -0x41c28f5c

    const v5, -0x3dd7a3d7

    const v6, -0x40c10625

    const v7, -0x3d7ba1cb

    const v8, -0x3fa851ec

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e03bc6a

    const v4, -0x3fa49ba6

    const v5, -0x3d7d3f7d

    const v6, -0x3e87ced9

    const v7, -0x3d602f1b

    const v8, -0x3e4e2d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f40624e

    const v4, -0x3f7e5e35

    const v5, -0x3eacb021

    const v6, -0x3f327efa

    const v7, -0x3e5828f6

    const v8, -0x3f327efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e8fdf4

    const/4 v4, 0x0

    const v5, 0x416122d1

    const v6, -0x3ffab021

    const v7, 0x419e9581

    const v8, -0x3f4a76c9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4166ed91

    const v4, -0x3f30624e

    const v5, 0x4241322d

    const v6, -0x3e671cac

    const v7, 0x42a27f7d

    const v8, -0x3e47d917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c01cac

    const v4, -0x3fc9a9fc

    const v5, 0x41d8872b

    const v6, -0x3fb851ec

    const v7, 0x42840f5c

    const v8, -0x3fa89375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ddf3b

    const v4, -0x421cac08

    const v5, 0x4244e148

    const v6, 0x3f4872b0

    const v7, 0x426acbc7

    const v8, 0x40043958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x408428f6

    const v4, 0x3f11eb85

    const v5, 0x40de6666

    const v6, 0x3f9d4fdf

    const v7, 0x41145604

    const v8, 0x3feccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400e45a2

    const v4, 0x3ffeb852

    const v5, 0x40a4d4fe

    const v6, 0x404d6042

    const v7, 0x4105e76d

    const v8, 0x404d6042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40de147b

    const/4 v4, 0x0

    const v5, 0x4149126f

    const v6, -0x3f4be76d

    const v7, 0x4149126f

    const v8, -0x3eb6e979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4422bbc7

    const v4, 0x446e43b6

    const v5, 0x442153a6

    const v6, 0x446cdbb6

    const v7, 0x441f976d

    const v8, 0x446cdbb6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4420821d

    const v3, 0x446ceb54

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faa6e98

    const/4 v4, 0x0

    const v5, -0x3f345a1d

    const v6, 0x3fa9ba5e

    const v7, -0x3ef6a7f0

    const v8, 0x405eb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x42c39581

    const v4, 0x3d3851ec

    const v5, -0x424fdf3b

    const v6, 0x3dc28f5c

    const v7, -0x41f8d4fe

    const v8, 0x3e0f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe88312

    const v4, 0x3f224dd3

    const v5, -0x3f5a353f

    const v6, 0x3f972b02

    const v7, -0x3ee9fbe7

    const v8, 0x3fd41893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d2f2

    const v4, 0x3f8c0831

    const v5, -0x3dd374bc

    const v6, 0x3ffba5e3

    const v7, -0x3d8c9687

    const v8, 0x3fee353f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4353f

    const v4, -0x41947ae1

    const v5, -0x3dcf6c8b

    const v6, -0x40b126e9

    const v7, -0x3d779aa0

    const v8, -0x3fa90625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e0278d5

    const v4, -0x3fa947ae

    const v5, -0x3d7e8ac1

    const v6, -0x3e7fa3d7

    const v7, -0x3d61d1ec

    const v8, -0x3e4b2d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f410625

    const v4, -0x3f7fbe77

    const v5, -0x3eada5e3

    const v6, -0x3f34ac08

    const v7, -0x3e58fdf4

    const v8, -0x3f34ac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e7df3b

    const/4 v4, 0x0

    const v5, 0x41601893

    const v6, -0x3ffbf7cf

    const v7, 0x419ded91

    const v8, -0x3f4c20c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4162d917

    const v4, -0x3f39374c

    const v5, 0x423d2c08

    const v6, -0x3e630419

    const v7, 0x42a0c5a2

    const v8, -0x3e4524dd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c0b021

    const v4, -0x3fd20c4a

    const v5, 0x41e8f5c3

    const v6, -0x3fb9374c

    const v7, 0x428831aa

    const v8, -0x3fa570a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418d9375

    const v4, -0x41f1a9fc

    const v5, 0x424b6a7f

    const v6, 0x3ef6c8b4

    const v7, 0x427224dd

    const v8, 0x3fe78d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4088ac08

    const v4, 0x3f1851ec

    const v5, 0x40e79db2

    const v6, 0x3f9b645a

    const v7, 0x411b0a3d

    const v8, 0x3feb22d1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d851eb8

    const v4, 0x3d810625

    const v5, 0x3df9db23

    const v6, 0x3e0a3d71

    const v7, 0x3e408312

    const v8, 0x3e49ba5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400d4fdf

    const v4, 0x4005d2f2

    const v5, 0x40a60c4a

    const v6, 0x4057df3b

    const v7, 0x4107851f

    const v8, 0x4057df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d9cac1

    const/4 v4, 0x0

    const v5, 0x41452b02

    const v6, -0x3f4f6c8b

    const v7, 0x41452b02

    const v8, -0x3ebad4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442396c9

    const v4, 0x446e4c4a

    const v5, 0x442235b2

    const v6, 0x446ceb54

    const v7, 0x4420821d

    const v8, 0x446ceb54

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4421a22d

    const v3, 0x446cfb02

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3faea7f0

    const/4 v4, 0x0

    const v5, -0x3f38624e

    const v6, 0x3fa66666

    const v7, -0x3ef96042

    const v8, 0x405a5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x428e5604

    const v4, 0x3d6978d5

    const v5, -0x4220c49c

    const v6, 0x3df5c28f

    const v7, -0x41d4fdf4

    const v8, 0x3e353f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, -0x3fd00000

    const v4, 0x3f4978d5

    const v5, -0x3f41ba5e

    const v6, 0x3fb43958

    const v7, -0x3ecf2f1b

    const v8, 0x3ffe5604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8be76d

    const v5, -0x3dcc0c4a

    const v6, 0x3fded917

    const v7, -0x3d851db2

    const v8, 0x3fceb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de425e3

    const v4, -0x41722d0e

    const v5, -0x3dc73646

    const v6, -0x40a147ae

    const v7, -0x3d7392f2

    const v8, -0x3fa9a9fc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e013f7d

    const v4, -0x3fadf3b6

    const v5, -0x3d7fddb2

    const v6, -0x3e7b5c29

    const v7, -0x3d6378d5

    const v8, -0x3e48374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41a1cb

    const v4, -0x3f81fbe7

    const v5, -0x3eae872b

    const v6, -0x3f36b021

    const v7, -0x3e59c083

    const v8, -0x3f36b021

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e6e148

    const/4 v4, 0x0

    const v5, 0x415f3333

    const v6, -0x3ffd1eb8

    const v7, 0x419d5a1d

    const v8, -0x3f4d9168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415ee148

    const v4, -0x3f423d71

    const v5, 0x423921cb

    const v6, -0x3e5ef5c3

    const v7, 0x429f072b

    const v8, -0x3e427efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c14189

    const v4, -0x3fda6e98

    const v5, 0x41f9645a

    const v6, -0x3fb9fbe7

    const v7, 0x428c5375

    const v8, -0x3fa25e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418d49ba

    const v4, -0x41d60419

    const v5, 0x4251f2b0

    const v6, 0x3e3851ec

    const v7, 0x42797df4

    const v8, 0x3fc645a2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40a3020c

    const v4, 0x3f36c8b4

    const v5, 0x41077cee

    const v6, 0x3fb2d0e5

    const v7, 0x41346666

    const v8, 0x4007ced9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3dd70a3d

    const v4, 0x3ddd2f1b

    const v5, 0x3e4ed917

    const v6, 0x3e666666

    const v7, 0x3ea04189

    const v8, 0x3ea872b0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400a7efa

    const v4, 0x400322d1

    const v5, 0x40a2c083

    const v6, 0x40539581

    const v7, 0x4104d917

    const v8, 0x40539581

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d570a4

    const/4 v4, 0x0

    const v5, 0x41413b64

    const v6, -0x3f52f1aa

    const v7, 0x41413b64

    const v8, -0x3ebec083

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4424a71b

    const v4, 0x446e550e

    const v5, 0x44234d0e

    const v6, 0x446cfb02

    const v7, 0x4421a22d

    const v8, 0x446cfb02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4423021d

    const v3, 0x446d0aa0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fbbc6a8

    const/4 v4, 0x0

    const v5, -0x3f44b439

    const v6, 0x3f966666

    const v7, -0x3f0170a4

    const v8, 0x4045b22d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41958106

    const v4, 0x3d8b4396

    const v5, -0x4110624e

    const v6, 0x3e0624dd

    const v7, -0x40cf9db2

    const v8, 0x3e4ed917

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fa872b0

    const v4, 0x3f8cac08

    const v5, -0x3f20cccd

    const v6, 0x3feb851f

    const v7, -0x3ea7999a

    const v8, 0x40254fdf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d70a

    const v4, 0x3f8be76d

    const v5, -0x3dc4a3d7

    const v6, 0x3fc20c4a

    const v7, -0x3d7ed26f

    const v8, 0x3faf3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de41687

    const v4, -0x415a9fbe

    const v5, -0x3dbefefa

    const v6, -0x40916873

    const v7, -0x3d6f8b44

    const v8, -0x3faa5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e00020c

    const v4, -0x3fb2b021

    const v5, -0x3d826873

    const v6, -0x3e770c4a

    const v7, -0x3d652042

    const v8, -0x3e454396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42353f

    const v4, -0x3f846a7f

    const v5, -0x3eaf645a

    const v6, -0x3f38ac08

    const v7, -0x3e5a8312

    const v8, -0x3f38ac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e60419

    const/4 v4, 0x0

    const v5, 0x415e624e

    const v6, -0x3ffe353f

    const v7, 0x419cd4fe

    const v8, -0x3f4ee148

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x415b020c

    const v4, -0x3f4b6c8b

    const v5, 0x4235147b

    const v6, -0x3e5aef9e

    const v7, 0x429d45a2

    const v8, -0x3e3fdf3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c1d4fe

    const v4, -0x3fe2b021

    const v5, 0x4204e873

    const v6, -0x3fbad0e5

    const v7, 0x429074bc

    const v8, -0x3f9f2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/high16 v3, 0x418d0000

    const v4, -0x41ba5e35

    const v5, 0x42587cee

    const v6, -0x42083127

    const v7, 0x42806c08

    const v8, 0x3fa53f7d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d276c9

    const v4, 0x3f6d0e56

    const v5, 0x4127ced9

    const v6, 0x3fdd70a4

    const v7, 0x415e0831

    const v8, 0x402bd70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3de147ae

    const v4, 0x3cfdf3b6

    const v5, 0x3e6a7efa

    const v6, 0x3d8b4396

    const v7, 0x3eb126e9

    const v8, 0x3dd4fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3cd4fdf4

    const v4, 0x3ccccccd

    const v5, 0x3d48b439

    const v6, 0x3d5d2f1b

    const v7, 0x3d99999a

    const v8, 0x3da1cac1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4007be77

    const v4, 0x400072b0

    const v5, 0x409f6c8b

    const v6, 0x404f3b64

    const v7, 0x410220c5

    const v8, 0x404f3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d126e9

    const/4 v4, 0x0

    const v5, 0x413d5810

    const v6, -0x3f5676c9

    const v7, 0x413d5810

    const v8, -0x3ec2ac08

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4425f77d

    const v4, 0x446e5db2

    const v5, 0x4424a46a

    const v6, 0x446d0aa0

    const v7, 0x4423021d

    const v8, 0x446d0aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4424177d

    const v3, 0x446d1a4e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fbdb22d

    const/4 v4, 0x0

    const v5, -0x3f469fbe

    const v6, 0x3f9645a2

    const v7, -0x3f048b44

    const v8, 0x40456042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x414ac083

    const v4, 0x3dd4fdf4

    const v5, -0x40ca7efa

    const v6, 0x3e560419

    const v7, -0x407a3d71

    const v8, 0x3ea3d70a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f965604

    const v4, 0x3f9a9fbe

    const v5, -0x3f0ff7cf

    const v6, 0x3ffa9fbe

    const v7, -0x3e95c6a8

    const v8, 0x403126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee5d2f2

    const v4, 0x3f8be76d

    const v5, -0x3dbd3b64

    const v6, 0x3fa53f7d

    const v7, -0x3d7b1581

    const v8, 0x3f8fbe77

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40831

    const v4, -0x4143126f

    const v5, -0x3db6c7ae

    const v6, -0x40818937

    const v7, -0x3d6b8419

    const v8, -0x3fab126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dff676d

    const v4, -0x3fb77cee

    const v5, -0x3d8523d7

    const v6, -0x3e72ba5e

    const v7, -0x3d66cac1

    const v8, -0x3e425810

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42c8b4

    const v4, -0x3f86b852

    const v5, -0x3eb0353f

    const v6, -0x3f3a872b

    const v7, -0x3e5b3958

    const v8, -0x3f3a872b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e547ae

    const/4 v4, 0x0

    const v5, 0x415db22d

    const v6, -0x3fff0a3d

    const v7, 0x419c6666

    const v8, -0x3f4ff7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41573f7d

    const v4, -0x3f54ac08

    const v5, 0x42310312

    const v6, -0x3e56f1aa

    const v7, 0x429b7d71

    const v8, -0x3e3d4bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c26873

    const v4, -0x3feb22d1

    const v5, 0x420d1fbe

    const v6, -0x3fbbc6a8

    const v7, 0x4294970a

    const v8, -0x3f9c3958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cb646

    const v4, -0x419ba5e3

    const v5, 0x425f0625

    const v6, -0x4126e979

    const v7, 0x42841893

    const v8, 0x3f83f7cf

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e58106

    const v4, 0x3f81cac1

    const v5, 0x41360419

    const v6, 0x3fe9ba5e

    const v7, 0x4170d0e5

    const v8, 0x40373b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3e353f7d

    const v4, 0x3d4ccccd

    const v5, 0x3eb9db23

    const v6, 0x3ddf3b64

    const v7, 0x3f0dd2f2

    const v8, 0x3e2f1aa0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3da5e354

    const v4, 0x3da5e354

    const v5, 0x3e1cac08

    const v6, 0x3e2e147b

    const v7, 0x3e71a9fc

    const v8, 0x3e7df3b6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4004dd2f

    const v4, 0x3ffba5e3

    const v5, 0x409c20c5

    const v6, 0x404b020c

    const v7, 0x40fee148

    const v8, 0x404b020c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ccc49c

    const/4 v4, 0x0

    const v5, 0x41396873

    const v6, -0x3f59fbe7

    const v7, 0x41396873

    const v8, -0x3ec6978d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4426fd1f

    const v4, 0x446e6656

    const v5, 0x4425b117

    const v6, 0x446d1a4e

    const v7, 0x4424177d

    const v8, 0x446d1a4e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4425b560

    const v3, 0x446d29fc

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fce872b

    const/4 v4, 0x0

    const v5, -0x3f561cac

    const v6, 0x3f804189

    const v7, -0x3f17126f

    const v8, 0x4029db23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x40f81062

    const v4, 0x3e158106

    const v5, -0x4079fbe7

    const v6, 0x3e9cac08

    const v7, -0x403978d5

    const v8, 0x3ef126e9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f956042

    const v4, 0x3f98b439

    const v5, -0x3f17f7cf

    const v6, 0x40016873

    const v7, -0x3e9d3b64

    const v8, 0x403c49ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee4c8b4

    const v4, 0x3fb60419

    const v5, -0x3db89eb8

    const v6, 0x3fb8d4fe

    const v7, -0x3d78c8b4

    const v8, 0x3fb20c4a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4072b

    const v4, -0x4210624e

    const v5, -0x3d9851ec

    const v6, -0x40c6e979

    const v7, -0x3d5c23d7

    const v8, -0x3fb0d4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfe6d91

    const v4, -0x3fa6872b

    const v5, -0x3d8c0625

    const v6, -0x3e6f1893

    const v7, -0x3d6a8396

    const v8, -0x3e3e7efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f42978d

    const v4, -0x3f85f3b6

    const v5, -0x3eaff3b6

    const v6, -0x3f39eb85

    const v7, -0x3e5afdf4

    const v8, -0x3f39eb85

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e56873

    const/4 v4, 0x0

    const v5, 0x415dd70a

    const v6, -0x3ffed917

    const v7, 0x419c7ae1

    const v8, -0x3f4fc6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41560c4a

    const v4, -0x3f53e76d

    const v5, 0x4229020c

    const v6, -0x3e539168

    const v7, 0x4297aa7f

    const v8, -0x3e38ef9e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c2d0e5

    const v4, -0x3fdc9ba6

    const v5, 0x422bea7f

    const v6, -0x3fb47ae1

    const v7, 0x42a4020c

    const v8, -0x3fa820c5

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cb22d

    const v4, -0x4247ae14

    const v5, 0x4263e24e

    const v6, -0x411e353f

    const v7, 0x42868625

    const v8, 0x3fa3b646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e43127

    const v4, 0x3f96c8b4

    const v5, 0x412ec8b4

    const v6, 0x3ffc0831

    const v7, 0x4168b852

    const v8, 0x4043a5e3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3eb8d4fe

    const v4, 0x3ddf3b64

    const/high16 v5, 0x3f400000

    const v6, 0x3e77ced9

    const v7, 0x3f943958

    const v8, 0x3ec3126f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x400051ec

    const v4, 0x3fe58106

    const v5, 0x4094ac08

    const v6, 0x4038f5c3

    const v7, 0x40f18937

    const v8, 0x4038f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c87ae1

    const/4 v4, 0x0

    const v5, 0x41358106

    const v6, -0x3f5d78d5

    const v7, 0x41358106

    const v8, -0x3eca7efa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44274656

    const v4, 0x446d29fc

    const v5, 0x4425b560

    const v6, 0x446d29fc

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44270ccd

    const v3, 0x446d39aa

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fcf1aa0

    const/4 v4, 0x0

    const v5, -0x3f56e979

    const v6, 0x3f824dd3

    const v7, -0x3f18bc6a

    const v8, 0x402c1893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41d60419

    const v4, 0x3d54fdf4

    const v5, -0x41558106

    const v6, 0x3dd4fdf4

    const v7, -0x41010625

    const v8, 0x3e20c49c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f947ae1

    const v4, 0x3f96e979

    const v5, -0x3f1fef9e

    const v6, 0x40058106

    const v7, -0x3ea49ba6

    const v8, 0x40474bc7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee3c28f

    const v4, 0x3fdfbe77

    const v5, -0x3db41168

    const v6, 0x3fcc6a7f

    const v7, -0x3d76820c

    const v8, 0x3fd41893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4051f

    const v4, 0x3e083127

    const v5, -0x3d7d1604

    const v6, -0x41178d50

    const v7, -0x3d4cec08

    const v8, -0x3fb6978d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfd7cee

    const v4, -0x3f95b22d

    const v5, -0x3d92d4fe

    const v6, -0x3e6b872b

    const v7, -0x3d6e34bc

    const v8, -0x3e3ab439

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f426666

    const v4, -0x3f852f1b

    const v5, -0x3eafa9fc

    const v6, -0x3f3947ae

    const v7, -0x3e5abe77

    const v8, -0x3f3947ae

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e58937

    const/4 v4, 0x0

    const v5, 0x415df7cf

    const v6, -0x3ffeb852

    const v7, 0x419c8f5c

    const v8, -0x3f4f8d50

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4154d917

    const v4, -0x3f533333

    const v5, 0x42211581

    const v6, -0x3e503b64

    const v7, 0x4293e1cb

    const v8, -0x3e34a1cb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c3374c

    const v4, -0x3fce45a2

    const v5, 0x424a6354

    const v6, -0x3fad8106

    const v7, 0x42b3449c

    const v8, -0x3fb3c6a8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cae14

    const v4, 0x3d3851ec

    const v5, 0x4268b127

    const v6, -0x41170a3d

    const v7, 0x4288ed0e

    const v8, 0x3fc33333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e2d917

    const v4, 0x3fabc6a8

    const v5, 0x41279db2

    const v6, 0x4006f9db

    const v7, 0x4160b439

    const v8, 0x404fdf3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d4ccccd

    const v4, 0x3c8b4396

    const v5, 0x3dd4fdf4

    const v6, 0x3d0f5c29

    const v7, 0x3e1db22d

    const v8, 0x3d54fdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ffc8b44

    const v4, 0x3fe624dd

    const v5, 0x4092e979

    const v6, 0x40398937

    const v7, 0x40ef0a3d

    const v8, 0x40398937

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c428f6

    const/4 v4, 0x0

    const v5, 0x41319581

    const v6, -0x3f60fdf4

    const v7, 0x41319581

    const v8, -0x3ece6a7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x4428951f

    const v4, 0x446d39aa

    const v5, 0x44270ccd

    const v6, 0x446d39aa

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x44288958

    const v3, 0x446d4958

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fda0c4a

    const/4 v4, 0x0

    const v5, -0x3f60dd2f

    const v6, 0x3f69374c

    const v7, -0x3f2526e9

    const v8, 0x401b74bc

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x41e76c8b

    const v4, 0x3d3c6a7f

    const v5, -0x4166e979

    const v6, 0x3dbc6a7f

    const v7, -0x411a1cac

    const v8, 0x3e0f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f939581

    const v4, 0x3f951eb8

    const v5, -0x3f27c6a8

    const v6, 0x40098937

    const v7, -0x3eabe354

    const v8, 0x40522d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee2bc6a

    const v4, 0x40046a7f

    const v5, -0x3daf9168

    const v6, 0x3fdfbe77

    const v7, -0x3d74428f

    const v8, 0x3ff5c28f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4051f

    const v4, 0x3ec18937

    const v5, -0x3d6e3958

    const v6, -0x41be76c9

    const v7, -0x3d3deb02

    const v8, -0x3fbc3958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfc926f

    const v4, -0x3f853f7d

    const v5, -0x3d998831

    const v6, -0x3e680a3d

    const v7, -0x3d71d99a

    const v8, -0x3e36fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f422d0e

    const v4, -0x3f8449ba

    const v5, -0x3eaf5810

    const v6, -0x3f389375

    const v7, -0x3e5a7ae1

    const v8, -0x3f389375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5b22d

    const/4 v4, 0x0

    const v5, 0x415e1893

    const v6, -0x3ffe978d

    const v7, 0x419ca5e3

    const v8, -0x3f4f5c29

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41539db2

    const v4, -0x3f526666

    const v5, 0x421945a2

    const v6, -0x3e4cef9e

    const v7, 0x42902666

    const v8, -0x3e30624e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c39db2

    const/high16 v4, -0x3fc00000

    const v5, 0x42686e98

    const v6, -0x3fa6872b

    const v7, 0x42c25062

    const v8, -0x3fbf3b64

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418cac08

    const v4, 0x3e343958

    const v5, 0x426d6d91

    const v6, -0x410ed917

    const v7, 0x428b4b44

    const v8, 0x3fe28f5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e18937

    const v4, 0x3fc04189

    const v5, 0x41208b44

    const v6, 0x400fbe77

    const v7, 0x4158d0e5

    const v8, 0x405be76d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3d9fbe77

    const v4, 0x3cd4fdf4

    const v5, 0x3e23d70a

    const v6, 0x3d656042

    const v7, 0x3e74bc6a

    const v8, 0x3da9fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3ff18937

    const v4, 0x3fcb020c

    const v5, 0x408a0419

    const v6, 0x402322d1

    const v7, 0x40df1aa0

    const v8, 0x402322d1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40bfd70a

    const/4 v4, 0x0

    const v5, 0x412da9fc

    const v6, -0x3f648312

    const v7, 0x412da9fc

    const v8, -0x3ed25604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442b4000

    const v4, 0x446e8052

    const v5, 0x442a0906

    const v6, 0x446d4958

    const v7, 0x44288958

    const v8, 0x446d4958

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x4429d906

    const v3, 0x446d5906

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fdb74bc

    const/4 v4, 0x0

    const v5, -0x3f626666

    const v6, 0x3f6b851f

    const v7, -0x3f27a5e3

    const v8, 0x401c49ba

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fa15810

    const v4, 0x3f8be76d

    const v5, -0x3f360419

    const v6, 0x40074bc7

    const v7, -0x3ebab852

    const v8, 0x40533333

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee1be77

    const v4, 0x40189375

    const v5, -0x3dab29fc

    const v6, 0x3ff28f5c

    const v7, -0x3d720fdf

    const v8, 0x400b53f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40312

    const v4, 0x3f1eb852

    const v5, -0x3d5fa873

    const v6, 0x3d916873

    const v7, -0x3d2f35c3

    const v8, -0x3fc1ba5e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfbb127

    const v4, -0x3f7a9fbe

    const v5, -0x3da01687

    const v6, -0x3e64ac08

    const v7, -0x3d756e14

    const v8, -0x3e335a1d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41fbe7

    const v4, -0x3f83645a

    const v5, -0x3eaf0625

    const v6, -0x3f37ced9

    const v7, -0x3e5a2f1b

    const v8, -0x3f37ced9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5d2f2

    const/4 v4, 0x0

    const v5, 0x415e3958

    const v6, -0x3ffe6666

    const v7, 0x419cba5e

    const v8, -0x3f4f2b02

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41525e35

    const v4, -0x3f51a1cb

    const v5, 0x42119eb8

    const v6, -0x3e49b852

    const v7, 0x428c7d71

    const v8, -0x3e2c374c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4020c

    const v4, -0x3fb21cac

    const v5, 0x4282f0a4

    const v6, -0x3f9f9db2

    const v7, 0x42d10ed9

    const v8, -0x3fca9fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca9fc

    const v4, 0x3e9b22d1

    const v5, 0x4272147b

    const v6, -0x41072b02

    const v7, 0x428d9db2

    const v8, 0x4000624e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d20419

    const v4, 0x3fc70a3d

    const v5, 0x4114147b

    const v6, 0x40125e35

    const v7, 0x4146a7f0

    const v8, 0x40590625

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fed2f1b

    const v4, 0x3fca7efa

    const v5, 0x4087f7cf

    const v6, 0x4022f1aa

    const v7, 0x40dc1062

    const v8, 0x4022f1aa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40bb7cee

    const/4 v4, 0x0

    const v5, 0x4129be77

    const/high16 v6, -0x3f680000

    const v7, 0x4129be77

    const v8, -0x3ed64189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->S:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442b5000

    const v4, 0x446d5906

    const v5, 0x4429d906

    const v6, 0x446d5906

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442b2cdd

    const v3, 0x446d68a4

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fe0f5c3

    const/4 v4, 0x0

    const v5, -0x3f677cee

    const v6, 0x3f60c49c

    const v7, -0x3f2e5e35

    const v8, 0x40159168

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3fb27efa

    const v4, 0x3f83f7cf

    const v5, -0x3f45374c

    const v6, 0x4004cccd

    const v7, -0x3eca49ba

    const v8, 0x40529fbe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ee0c49c

    const v4, 0x402c28f6

    const v5, -0x3da6e560

    const v6, 0x40025e35

    const v7, -0x3d6fed91

    const v8, 0x401b4396

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40312

    const v4, 0x3f5a9fbe

    const v5, -0x3d518ac1

    const v6, 0x3ea4dd2f

    const v7, -0x3d20f5c3

    const v8, -0x3fc70a3d

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfadb23

    const v4, -0x3f72d917

    const v5, -0x3da66d91

    const v6, -0x3e616e98

    const v7, -0x3d78e7f0

    const v8, -0x3e2fdb23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f41ba5e

    const v4, -0x3f825e35

    const v5, -0x3eaeac08

    const v6, -0x3f37020c

    const v7, -0x3e59df3b

    const v8, -0x3f37020c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e5fbe7

    const/4 v4, 0x0

    const v5, 0x415e5a1d

    const v6, -0x3ffe353f

    const v7, 0x419cd0e5

    const v8, -0x3f4ef1aa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41511eb8

    const v4, -0x3f50dd2f

    const v5, 0x420a3439

    const v6, -0x3e46978d

    const v7, 0x4288f1aa

    const v8, -0x3e283127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4645a

    const v4, -0x3fa49ba6

    const v5, 0x4291353f

    const v6, -0x3f990625

    const v7, 0x42df5917

    const v8, -0x3fd5a1cb

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca5e3

    const v4, 0x3eda1cac

    const v5, 0x42769581

    const v6, -0x40ff7cee

    const v7, 0x428fde35

    const v8, 0x400ef9db

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40c4fdf4

    const v4, 0x3fcd2f1b

    const v5, 0x4109a5e3

    const v6, 0x4015a1cb

    const v7, 0x41371aa0

    const v8, 0x4057df3b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fe6872b

    const v4, 0x3fc16873

    const v5, 0x4083b646

    const v6, 0x401b645a

    const v7, 0x40d4d4fe

    const v8, 0x401b645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40b72b02

    const/4 v4, 0x0

    const v5, 0x4125d2f2

    const v6, -0x3f6b7cee

    const v7, 0x4125d2f2

    const v8, -0x3eda2d0e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442dc429

    const v4, 0x446e919a

    const v5, 0x442c9b33

    const v6, 0x446d68a4

    const v7, 0x442b2cdd

    const v8, 0x446d68a4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442c977d

    const v3, 0x446d7852

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3ff570a4

    const/4 v4, 0x0

    const v5, -0x3f7ac083

    const v6, 0x3f2fdf3b

    const v7, -0x3f46147b

    const v8, 0x3fec0831

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9d4fdf

    const v4, 0x3f8c28f6

    const v5, -0x3f42e148

    const v6, 0x40110625

    const v7, -0x3ec5cac1

    const v8, 0x406a5e35

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edfdb23

    const v4, 0x403e872b

    const v5, -0x3da2de35

    const v6, 0x400af1aa

    const v7, -0x3d6dea7f

    const v8, 0x402a4dd3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de4020c

    const v4, 0x3f8978d5

    const v5, -0x3d443852

    const v6, 0x3f0f9db2

    const v7, -0x3d138312

    const v8, -0x3fcc28f6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3dfa1687

    const v4, -0x3f6b9581

    const v5, -0x3dac6666

    const v6, -0x3e5e6a7f

    const v7, -0x3d7c31aa

    const v8, -0x3e2c9375

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f4170a4

    const v4, -0x3f8147ae

    const v5, -0x3eae49ba

    const v6, -0x3f3624dd

    const v7, -0x3e598b44

    const v8, -0x3f3624dd

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e61cac

    const/4 v4, 0x0

    const v5, 0x415e7ae1

    const v6, -0x3ffe147b

    const v7, 0x419ce560

    const v8, -0x3f4eb852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414fe76d

    const v4, -0x3f5028f6

    const v5, 0x42033439

    const v6, -0x3e43a7f0

    const v7, 0x42859893

    const v8, -0x3e24645a

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c4be77

    const v4, -0x3f981062

    const v5, 0x429eac8b

    const v6, -0x3f92d0e5

    const v7, 0x42ecd581

    const/high16 v8, -0x3fe00000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418ca3d7

    const v4, 0x3f0b020c

    const v5, 0x427ad4fe

    const v6, -0x40fbe76d

    const v7, 0x4291fcee

    const v8, 0x401cfdf4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40d79581

    const v4, 0x3ff353f8

    const v5, 0x410aed91

    const v6, 0x40265604

    const v7, 0x413e0831

    const v8, 0x4076e979

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3fd126e9

    const v4, 0x3f90a3d7

    const v5, 0x4066e979

    const v6, 0x3fe645a2

    const v7, 0x40b7ced9

    const v8, 0x3fe645a2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40b2d917

    const/4 v4, 0x0

    const v5, 0x4121e76d

    const v6, -0x3f6f0a3d

    const v7, 0x4121e76d

    const v8, -0x3ede1893

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x442f1f1b

    const v4, 0x446e9a3d

    const v5, 0x442dfd2f

    const v6, 0x446d7852

    const v7, 0x442c977d

    const v8, 0x446d7852

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->M:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v2, 0x442dc800

    const v3, 0x446d8a4e

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x402e147b

    const/4 v4, 0x0

    const v5, -0x3fb43958

    const v6, 0x3ece5604

    const v7, -0x3f6e978d

    const v8, 0x3f8e147b

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x414c49ba

    const v4, 0x3dd2f1aa

    const v5, -0x40cb851f

    const v6, 0x3e581062

    const v7, -0x4074fdf4

    const v8, 0x3ea66666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f9051ec

    const v4, 0x3f8e978d

    const v5, -0x3f438d50

    const v6, 0x4017be77

    const v7, -0x3ec5a9fc

    const v8, 0x4078d4fe

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3edf1eb8

    const v4, 0x404d4fdf

    const v5, -0x3d9f9fbe

    const v6, 0x4011eb85

    const v7, -0x3d6c4bc7

    const v8, 0x40366666

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3de40106

    const v4, 0x3fa020c5

    const v5, -0x3d398106

    const v6, 0x3f404189

    const v7, -0x3d08b127

    const v8, -0x3fd03127

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3df97cee

    const v4, -0x3f65c28f

    const v5, -0x3db13021

    const v6, -0x3e5c0625

    const v7, -0x3d7ed893

    const v8, -0x3e29f5c3

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3f413f7d

    const v4, -0x3f8051ec

    const v5, -0x3eadf7cf

    const v6, -0x3f356042

    const v7, -0x3e594189

    const v8, -0x3f356042

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, -0x3e5a4fdf

    const/4 v4, 0x0

    const/high16 v5, -0x3dea0000

    const v6, 0x41864fdf

    const/high16 v7, -0x3dea0000

    const/high16 v8, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41864fdf

    const/high16 v4, 0x42160000

    const/high16 v5, 0x42160000

    const/high16 v6, 0x42160000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40e63d71

    const/4 v4, 0x0

    const v5, 0x415e978d

    const v6, -0x3ffdf3b6

    const v7, 0x419cf7cf

    const v8, -0x3f4e8f5c

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x414ee979

    const v4, -0x3f4f851f

    const v5, 0x41fb24dd

    const v6, -0x3e4145a2

    const v7, 0x4282e76d

    const v8, -0x3e215604

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x41c50625

    const v4, -0x3f8db22d

    const v5, 0x42a98189

    const v6, -0x3f8db22d

    const v7, 0x42f7af1b

    const v8, -0x3fe84189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x418c9fbe

    const v4, 0x3f23126f

    const v5, 0x427e4083

    const v6, -0x40f9999a

    const v7, 0x4293b2b0

    const v8, 0x40284189

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40dce560

    const v4, 0x40049ba6

    const v5, 0x41078106

    const v6, 0x402f1aa0

    const v7, 0x413ccccd

    const v8, 0x408353f8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f0b4396

    const v4, 0x3e6978d5

    const v5, 0x3f89ba5e

    const v6, 0x3ed70a3d

    const v7, 0x3fd2b021

    const v8, 0x3f13b646

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x3f9c6a7f

    const v4, 0x3f0a7efa

    const v5, 0x40246a7f

    const v6, 0x3f59db23

    const v7, 0x407f7cee

    const v8, 0x3f59db23

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x40ae872b

    const/4 v4, 0x0

    const/high16 v5, 0x411e0000

    const v6, -0x3f727efa

    const/high16 v7, 0x411e0000

    const v8, -0x3ee1fbe7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->C:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const v3, 0x44304000

    const v4, 0x446ea550

    const v5, 0x442f250e

    const v6, 0x446d8a4e

    const v7, 0x442dc800

    const v8, 0x446d8a4e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->z:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;)V
    .locals 9
    .param p1    # Landroid/graphics/Path;
    .param p2    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FF)V
    .locals 9
    .param p1    # Landroid/graphics/Path;
    .param p2    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3    # F
    .param p4    # F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFF)V
    .locals 9
    .param p1    # Landroid/graphics/Path;
    .param p2    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V

    return-void
.end method

.method private vectorParsing(Landroid/graphics/Path;Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;FFFFFF)V
    .locals 11
    .param p1    # Landroid/graphics/Path;
    .param p2    # Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # F

    const/4 v7, 0x0

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternMorphEffectPath$SVGCommand:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-nez v7, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    :cond_0
    return-void

    :pswitch_0
    move v8, p3

    move v9, p4

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->m:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rMoveTo(FF)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :pswitch_2
    move v8, p3

    move v9, p4

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->l:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :pswitch_3
    move v8, p3

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->h:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v0, v8

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iput v8, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    goto :goto_0

    :pswitch_4
    move v9, p4

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->v:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v0, v9

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iput v9, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto :goto_0

    :pswitch_5
    const/4 v7, 0x1

    move v1, p3

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->c:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_5

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    :cond_5
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_0

    :pswitch_6
    const/4 v7, 0x1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;->s:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath$SVGCommand;

    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    add-float/2addr v5, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    add-float/2addr v6, v0

    :cond_6
    const/high16 v0, 0x40000000

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    sub-float v1, v0, v10

    const/high16 v0, 0x40000000

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    mul-float/2addr v0, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    sub-float v2, v0, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX1:F

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY1:F

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastX:F

    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->lastY:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getPath(IFF)Landroid/graphics/Path;
    .locals 2
    .param p1    # I
    .param p2    # F
    .param p3    # F

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->path:[Landroid/graphics/Path;

    aget-object v0, v1, p1

    return-object v0
.end method

.method public getPathTotal()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method
