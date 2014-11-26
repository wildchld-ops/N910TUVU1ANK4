.class public Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diopoint"
.end annotation


# static fields
.field public static final LASSOED:I = 0x3e7


# instance fields
.field private mEnable:Z

.field private mGrouped:I

.field private mPath:Landroid/graphics/Path;

.field private mSelected:Z

.field private mUnusedPoint:Z

.field private mX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private tmpx1:F

.field private tmpy1:F

.field private transMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;)V
    .locals 12
    .param p1    # Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    const/high16 v11, 0x40000000

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v9, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    invoke-virtual {p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPoint()[[F

    move-result-object v0

    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v7, Ljava/lang/Float;

    aget-object v8, v0, v1

    aget v8, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v7, Ljava/lang/Float;

    aget-object v8, v0, v1

    aget v8, v8, v10

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, v0, v1

    aget v2, v6, v9

    aget-object v6, v0, v1

    aget v4, v6, v10

    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v2

    move v5, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v7, v2, v3

    div-float/2addr v7, v11

    add-float v8, v4, v5

    div-float/2addr v8, v11

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v3, v2

    move v5, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 11
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x40000000

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v8, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    const/4 v5, 0x0

    move v3, v5

    move v4, v5

    move v2, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    :try_start_0
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v8, Ljava/lang/Float;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v8, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v8, Ljava/lang/Float;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v8, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v2

    move v5, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v7, v2, v3

    div-float/2addr v7, v9

    add-float v8, v4, v5

    div-float/2addr v8, v9

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v3, v2

    move v5, v4

    goto :goto_2

    :cond_5
    iput p3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    goto :goto_0
.end method

.method public constructor <init>([F[F)V
    .locals 10
    .param p1    # [F
    .param p2    # [F

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    iput v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    array-length v5, p2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v6, Ljava/lang/Float;

    aget v7, p1, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v6, Ljava/lang/Float;

    aget v7, p2, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v1, p1, v0

    aget v3, p2, v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v6, v1, v2

    div-float/2addr v6, v8

    add-float v7, v3, v4

    div-float/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public add(FFI)Z
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # I

    const/high16 v5, 0x40000000

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    packed-switch p3, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpx1:F

    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->tmpy1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public add(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    const/high16 v8, 0x40000000

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v7, Ljava/lang/Float;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v7, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v7, Ljava/lang/Float;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v7, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v6, v1, v2

    div-float/2addr v6, v8

    add-float v7, v3, v4

    div-float/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_5

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5

    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public add([F[F)Z
    .locals 9
    .param p1    # [F
    .param p2    # [F

    const/high16 v8, 0x40000000

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    array-length v5, p2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    new-instance v6, Ljava/lang/Float;

    aget v7, p1, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    new-instance v6, Ljava/lang/Float;

    aget v7, p2, v0

    invoke-direct {v6, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v1, p1, v0

    aget v3, p2, v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    array-length v5, p2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    add-float v6, v1, v2

    div-float/2addr v6, v8

    add-float v7, v3, v4

    div-float/2addr v7, v8

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v1

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    return v0
.end method

.method public getFirstpoint()Landroid/graphics/Point;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public getGrouped()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    return v0
.end method

.method public getLastpoint()Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v1
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPoint()[[F
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    aget-object v3, v0, v1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    return-object v2
.end method

.method public getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    return v0
.end method

.method public getTransPoint()[[F
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    filled-new-array {v3, v8}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/16 v3, 0x9

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aget v5, v2, v7

    mul-float/2addr v3, v5

    aget v5, v2, v8

    add-float/2addr v3, v5

    aput v3, v4, v7

    aget-object v4, v0, v1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v6, 0x4

    aget v6, v2, v6

    mul-float/2addr v3, v6

    const/4 v6, 0x5

    aget v6, v2, v6

    add-float/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    return-object v3
.end method

.method public getUnusedPoint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    return v0
.end method

.method public getX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mX:Ljava/util/List;

    return-object v0
.end method

.method public getY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mY:Ljava/util/List;

    return-object v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mEnable:Z

    return-void
.end method

.method public setGrouped(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mGrouped:I

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->transMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mSelected:Z

    return-void
.end method

.method public setUnusedPoint(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->mUnusedPoint:Z

    return-void
.end method
