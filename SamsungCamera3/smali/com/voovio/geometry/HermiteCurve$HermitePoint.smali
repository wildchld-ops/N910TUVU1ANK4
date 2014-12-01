.class public Lcom/voovio/geometry/HermiteCurve$HermitePoint;
.super Ljava/lang/Object;
.source "HermiteCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voovio/geometry/HermiteCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermitePoint"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field final synthetic this$0:Lcom/voovio/geometry/HermiteCurve;


# direct methods
.method public constructor <init>(Lcom/voovio/geometry/HermiteCurve;F)V
    .locals 6

    const/high16 v5, 0x40400000

    const/high16 v4, 0x40000000

    iput-object p1, p0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->this$0:Lcom/voovio/geometry/HermiteCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-float v0, p2, p2

    mul-float v1, v0, p2

    mul-float v2, v4, v1

    mul-float v3, v5, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000

    add-float/2addr v2, v3

    iput v2, p0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->a:F

    mul-float v2, v4, v0

    sub-float v2, v1, v2

    add-float/2addr v2, p2

    iput v2, p0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->b:F

    const/high16 v2, -0x40000000

    mul-float/2addr v2, v1

    mul-float v3, v5, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->c:F

    sub-float v2, v1, v0

    iput v2, p0, Lcom/voovio/geometry/HermiteCurve$HermitePoint;->d:F

    return-void
.end method
