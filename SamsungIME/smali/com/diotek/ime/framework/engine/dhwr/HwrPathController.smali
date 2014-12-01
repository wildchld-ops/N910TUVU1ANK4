.class public Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
.super Ljava/lang/Object;
.source "HwrPathController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;,
        Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$DiopathHistory;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x1

.field public static final ACTION_NONE:I = 0x3

.field public static final ACTION_UP:I = 0x2

.field private static final DEBUG:Z

.field private static mInstance:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;


# instance fields
.field private mColorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupID:I

.field private mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSeqID:I

.field private mXYdata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mGroupID:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSavedMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    return-void
.end method

.method private add(Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getX()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getY()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->add(Ljava/util/List;Ljava/util/List;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private add(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
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

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clearUnused()Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mGroupID:I

    invoke-direct {v2, p1, p2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    const/4 v0, 0x1

    return v0
.end method

.method private checkBound(FFFFFFFF)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v1, p6, v1

    if-lez v1, :cond_0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v1, p8, v1

    if-gtz v1, :cond_1

    :cond_0
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v1, p6, v1

    if-gez v1, :cond_2

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v1, p8, v1

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v1, p5, v1

    if-lez v1, :cond_3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v1, p7, v1

    if-gtz v1, :cond_1

    :cond_3
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v1, p5, v1

    if-gez v1, :cond_4

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v1, p7, v1

    if-ltz v1, :cond_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearUnused()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-nez v5, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    add-int/lit8 v3, v5, -0x1

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v3, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v7}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setSelected(Z)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iput v7, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mInstance:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    return-object v0
.end method

.method private lineIntersect(FFFFFFFF)Z
    .locals 13

    invoke-direct/range {p0 .. p8}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->checkBound(FFFFFFFF)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    sub-float v2, p4, p2

    sub-float v4, p1, p3

    mul-float v11, p3, p2

    mul-float v12, p1, p4

    sub-float v6, v11, v12

    sub-float v3, p8, p6

    sub-float v5, p5, p7

    mul-float v11, p7, p6

    mul-float v12, p5, p8

    sub-float v7, v11, v12

    mul-float v11, v2, v5

    mul-float v12, v3, v4

    sub-float v8, v11, v12

    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    mul-float v11, v4, v7

    mul-float v12, v5, v6

    sub-float/2addr v11, v12

    div-float v9, v11, v8

    mul-float v11, v3, v6

    mul-float v12, v2, v7

    sub-float/2addr v11, v12

    div-float v10, v11, v8

    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_2

    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    cmpg-float v11, v9, v11

    if-ltz v11, :cond_2

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpl-float v11, v9, v11

    if-gtz v11, :cond_2

    move/from16 v0, p5

    move/from16 v1, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    cmpg-float v11, v9, v11

    if-ltz v11, :cond_2

    move/from16 v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpl-float v11, v10, v11

    if-gtz v11, :cond_2

    move/from16 v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    cmpg-float v11, v10, v11

    if-ltz v11, :cond_2

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpl-float v11, v10, v11

    if-gtz v11, :cond_2

    move/from16 v0, p6

    move/from16 v1, p8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private pnpoly(Ljava/util/List;Ljava/util/List;[[F)Z
    .locals 11
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
            ">;[[F)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_6

    const/4 v0, 0x0

    aget-object v8, p3, v4

    const/4 v9, 0x0

    aget v6, v8, v9

    aget-object v8, p3, v4

    const/4 v9, 0x1

    aget v7, v8, v9

    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_1

    const/4 v8, 0x1

    move v9, v8

    :goto_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_3
    if-eq v9, v8, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v9, v8

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float v8, v7, v8

    mul-float/2addr v9, v8

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float v8, v10, v8

    div-float/2addr v9, v8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v9

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    move v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    const/4 v8, 0x1

    :goto_5
    return v8

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private recoverErasedLines(Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    return v0
.end method

.method private search(Ljava/util/List;Ljava/util/List;)Z
    .locals 17
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

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v14, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-nez v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getTransPoint()[[F

    move-result-object v13

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v15, 0x1

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    const/16 v16, 0x1

    :goto_3
    array-length v1, v13

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v16, -0x1

    aget-object v1, v13, v1

    const/4 v2, 0x0

    aget v6, v1, v2

    add-int/lit8 v1, v16, -0x1

    aget-object v1, v13, v1

    const/4 v2, 0x1

    aget v7, v1, v2

    aget-object v1, v13, v16

    const/4 v2, 0x0

    aget v8, v1, v2

    aget-object v1, v13, v16

    const/4 v2, 0x1

    aget v9, v1, v2

    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->lineIntersect(FFFFFFFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setSelected(Z)V

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    :cond_2
    if-eqz v10, :cond_4

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    if-nez v11, :cond_6

    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_6
    const/4 v1, 0x1

    goto :goto_4
.end method

.method private setLassoGroup(IZ)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getGrouped()I

    move-result v2

    const/16 v3, 0x3e7

    if-eq v2, v3, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setGrouped(I)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addPoint(FFI)Z
    .locals 2

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v1, p1, p2, p3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->add(FFI)Z

    move-result v0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->add(Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mGroupID:I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearLassoGroup()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->setLassoGroup(IZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearPoint()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    return-void
.end method

.method public delete(ID)Landroid/graphics/Rect;
    .locals 22

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    move-wide/from16 v10, p2

    const/16 v9, 0x14

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v16

    if-eqz v16, :cond_2

    move/from16 v0, p1

    if-ge v4, v0, :cond_6

    invoke-virtual {v13}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPath()Landroid/graphics/Path;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/RectF;->right:F

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/RectF;->bottom:F

    :cond_0
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_1

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_1

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_1

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_1

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    :goto_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L

    mul-double v2, v16, v18

    add-double/2addr v2, v10

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v18

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpg-double v16, v7, v2

    if-gez v16, :cond_5

    if-eqz v6, :cond_5

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clearUnused()Z

    return-object v15
.end method

.method public eraseStroke()I
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clearUnused()Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getX()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getY()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->search(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v7}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getTransPoint()[[F

    move-result-object v0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getX()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getY()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->pnpoly(Ljava/util/List;Ljava/util/List;[[F)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v7}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-nez v4, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getTransPoint()[[F

    move-result-object v0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getX()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getY()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->pnpoly(Ljava/util/List;Ljava/util/List;[[F)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v7}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    return v2
.end method

.method public getDioPoint(I)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-lt v1, p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    goto :goto_0
.end method

.method public getFirstPoint(I)Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getFirstpoint()Landroid/graphics/Point;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLassoGroupColor(I)I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLassoGroupId(I)I
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getGrouped()I

    move-result v1

    goto :goto_0
.end method

.method public getLastPoint(I)Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getLastpoint()Landroid/graphics/Point;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getMatrix(I)Landroid/graphics/Matrix;
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    return v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getUnusedPoint()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-object v0
.end method

.method public getPathAll()Landroid/graphics/Path;
    .locals 3

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getPath(I)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPoint(I)[[F
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPoint()[[F

    move-result-object v2

    goto :goto_0
.end method

.method public getUnusedLastPoint(I)Landroid/graphics/Point;
    .locals 4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getUnusedPoint()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getLastpoint()Landroid/graphics/Point;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public isCurrentLasso(I)Z
    .locals 1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matrixTuning(Landroid/graphics/Matrix;)V
    .locals 8

    const/4 v7, 0x2

    const/high16 v6, 0x40400000

    const v5, 0x3e4ccccd

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x9

    new-array v1, v2, [F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v2, 0x9

    new-array v0, v2, [F

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    aget v2, v1, v3

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    aget v2, v1, v4

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_0

    aget v2, v1, v3

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    aget v2, v1, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    :cond_0
    aget v2, v0, v3

    aput v2, v1, v3

    aget v2, v0, v4

    aput v2, v1, v4

    aget v2, v0, v7

    aput v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v0, v3

    aput v3, v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public rectOfRecognizeStroke(IDI)Landroid/graphics/Rect;
    .locals 23

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->setEmpty()V

    move-wide/from16 v10, p2

    const/16 v9, 0x14

    move/from16 v5, p4

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    :cond_0
    if-eqz v14, :cond_8

    move/from16 v0, p1

    if-ge v4, v0, :cond_8

    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v13}, Landroid/graphics/RectF;->setEmpty()V

    :cond_1
    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPath()Landroid/graphics/Path;

    move-result-object v15

    if-eqz v15, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v13, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_2
    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Landroid/graphics/RectF;->right:F

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Landroid/graphics/RectF;->bottom:F

    :cond_3
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setUnusedPoint(Z)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v17

    int-to-float v0, v9

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_6

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v17

    int-to-float v0, v9

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_6

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v17

    int-to-float v0, v9

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_6

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v17

    int-to-float v0, v9

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_6

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    const-wide/high16 v19, 0x4000000000000000L

    mul-double v2, v17, v19

    add-double/2addr v2, v10

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpg-double v17, v7, v2

    if-gez v17, :cond_7

    if-eqz v6, :cond_7

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clearUnused()Z

    return-object v16
.end method

.method public resetLassoGroup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->setLassoGroupId(I)V

    return-void
.end method

.method public runRedo()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    add-int/lit8 v1, v5, -0x1

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->recoverErasedLines(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public runUndo()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    add-int/lit8 v1, v5, -0x1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->recoverErasedLines(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setEnable(Z)V

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public setLassoGroup()Z
    .locals 7

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getTransPoint()[[F

    move-result-object v1

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getX()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getY()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6, v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->pnpoly(Ljava/util/List;Ljava/util/List;[[F)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x3e7

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setGrouped(I)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mPoint:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->clear()V

    return v3
.end method

.method public setLassoGroupColor(II)V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mColorArray:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setLassoGroupId(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->setLassoGroup(IZ)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mSeqID:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->mXYdata:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method
