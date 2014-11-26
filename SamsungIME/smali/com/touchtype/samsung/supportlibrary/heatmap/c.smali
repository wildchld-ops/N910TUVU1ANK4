.class final Lcom/touchtype/samsung/supportlibrary/heatmap/c;
.super Lcom/touchtype/samsung/supportlibrary/heatmap/Key;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method constructor <init>(Ljava/lang/String;FFFFFFFF)V
    .locals 4

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;-><init>()V

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabel:Ljava/lang/String;

    iput p4, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a:F

    iput p5, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->b:F

    iput p2, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c:F

    iput p3, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d:F

    iput p6, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->g:F

    iput p9, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->i:F

    add-float v0, p7, p8

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->h:F

    const/high16 v0, 0x3f800000

    mul-float v1, p6, p9

    mul-float v2, p7, p8

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, p9

    neg-float v2, p7

    mul-float/2addr v2, v0

    neg-float v3, p8

    mul-float/2addr v3, v0

    mul-float/2addr v0, p6

    mul-float/2addr v0, v1

    mul-float v1, v2, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e:F

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e:F

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e:F

    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a:F

    return v0
.end method

.method final a(FF)F
    .locals 5

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d:F

    sub-float v1, p2, v1

    const/high16 v2, -0x41400000

    iget v3, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->g:F

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->h:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iget v3, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->i:F

    mul-float/2addr v3, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->f:F

    mul-float/2addr v0, v1

    return v0
.end method

.method final a(F)V
    .locals 0

    iput p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabelX:F

    return-void
.end method

.method final b()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->b:F

    return v0
.end method

.method final b(F)V
    .locals 0

    iput p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabelY:F

    return-void
.end method

.method final c()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c:F

    return v0
.end method

.method final c(F)V
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a:F

    return-void
.end method

.method final d()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d:F

    return v0
.end method

.method final d(F)V
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->b:F

    return-void
.end method

.method final e()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e:F

    return v0
.end method

.method final e(F)V
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c:F

    return-void
.end method

.method final f(F)V
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d:F

    return-void
.end method

.method final g(F)V
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->f:F

    return-void
.end method
