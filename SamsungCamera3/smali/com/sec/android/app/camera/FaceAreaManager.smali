.class public Lcom/sec/android/app/camera/FaceAreaManager;
.super Ljava/lang/Object;
.source "FaceAreaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAreaManager"


# instance fields
.field mContext:Landroid/content/Context;

.field mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

.field mFaceAreaIndicatorView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    invoke-direct {v0}, Lcom/sec/android/app/camera/FaceAreaAdviceLine;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    return-void
.end method


# virtual methods
.method public DeNormalize(II)I
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x447a0000

    add-float/2addr v0, v1

    const/high16 v1, 0x44fa0000

    div-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFacePosition(III)I
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->left:I

    if-ge p1, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    if-ge p2, v5, :cond_0

    sparse-switch p3, :sswitch_data_0

    move v0, v2

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    if-le p2, v5, :cond_1

    sparse-switch p3, :sswitch_data_1

    move v0, v2

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    sparse-switch p3, :sswitch_data_2

    move v0, v2

    goto :goto_0

    :sswitch_7
    move v0, v3

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_a
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->right:I

    if-le p1, v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    if-ge p2, v5, :cond_3

    sparse-switch p3, :sswitch_data_3

    move v0, v2

    goto :goto_0

    :sswitch_b
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_c
    move v0, v1

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v5, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    if-le p2, v5, :cond_4

    sparse-switch p3, :sswitch_data_4

    move v0, v2

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_f
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_10
    move v0, v1

    goto :goto_0

    :cond_4
    sparse-switch p3, :sswitch_data_5

    move v0, v2

    goto :goto_0

    :sswitch_11
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_12
    move v0, v3

    goto :goto_0

    :sswitch_13
    move v0, v4

    goto :goto_0

    :sswitch_14
    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v0, v0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    if-ge p2, v0, :cond_6

    sparse-switch p3, :sswitch_data_6

    move v0, v2

    goto :goto_0

    :sswitch_15
    move v0, v4

    goto :goto_0

    :sswitch_16
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_17
    move v0, v3

    goto :goto_0

    :sswitch_18
    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iget v0, v0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    if-le p2, v0, :cond_7

    sparse-switch p3, :sswitch_data_7

    move v0, v2

    goto :goto_0

    :sswitch_19
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1a
    move v0, v4

    goto :goto_0

    :sswitch_1b
    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_1c
    move v0, v3

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x5a -> :sswitch_9
        0xb4 -> :sswitch_8
        0x10e -> :sswitch_a
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_c
        0x10e -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_e
        0x5a -> :sswitch_f
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_11
        0x5a -> :sswitch_13
        0xb4 -> :sswitch_12
        0x10e -> :sswitch_14
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x0 -> :sswitch_15
        0x5a -> :sswitch_17
        0xb4 -> :sswitch_16
        0x10e -> :sswitch_18
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x0 -> :sswitch_19
        0x5a -> :sswitch_1b
        0xb4 -> :sswitch_1a
        0x10e -> :sswitch_1c
    .end sparse-switch
.end method

.method public getFaceSize(IIII)Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;
    .locals 7

    sget-object v1, Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;->NOT_FACE:Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;

    sub-int v3, p2, p1

    sub-int v0, p4, p3

    const/high16 v4, 0x42b00000

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v2

    const-string v4, "FaceDetectionCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v3

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_0

    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;->BIG:Lcom/sec/android/app/camera/FaceAreaManager$FaceSize;

    :cond_1
    return-object v1
.end method

.method public setFaceAreaIndicatorView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHideFaceAreaIndicatorVisible(Z)V
    .locals 3

    const-string v0, "FaceAreaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceAreaIndicatorVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaIndicatorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAdviceFaceAreaIndicatorFromOrientation(IIII)V
    .locals 11

    const/high16 v6, 0x42e80000

    const/high16 v10, 0x43100000

    const/high16 v9, 0x42b00000

    const/high16 v8, 0x43000000

    const/high16 v7, 0x42f00000

    div-int/lit8 v5, p3, 0x10

    mul-int/lit8 v5, v5, 0x9

    if-ne p4, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iput v3, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->left:I

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    iput v4, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    add-int v6, v3, v2

    iput v6, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->right:I

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mFaceAreaAdviceLine:Lcom/sec/android/app/camera/FaceAreaAdviceLine;

    add-int v6, v4, v0

    iput v6, v5, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    return-void

    :cond_1
    div-int/lit8 v5, p3, 0x4

    mul-int/lit8 v5, v5, 0x3

    if-ne p4, v5, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    if-ne p4, p3, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_0
    const/high16 v5, 0x43520000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x435c0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto :goto_1

    :sswitch_1
    const/high16 v5, 0x43520000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x435c0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto :goto_1

    :sswitch_2
    const v5, 0x43908000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_3
    const/high16 v5, 0x435f0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_4
    const/high16 v5, 0x431c0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x43280000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_5
    const/high16 v5, 0x431c0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    const/high16 v5, 0x43280000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_6
    const/high16 v5, 0x43510000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_7
    const/high16 v5, 0x430f0000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    sparse-switch p1, :sswitch_data_2

    goto/16 :goto_1

    :sswitch_8
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    const/high16 v5, 0x43180000

    iget-object v6, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_a
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    :sswitch_b
    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/FaceAreaManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/camera/PositionGuide;->dpToPx(FLandroid/content/Context;)F

    move-result v5

    float-to-int v0, v5

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x5a -> :sswitch_a
        0xb4 -> :sswitch_9
        0x10e -> :sswitch_b
    .end sparse-switch
.end method
