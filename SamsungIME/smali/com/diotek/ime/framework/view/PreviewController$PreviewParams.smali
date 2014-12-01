.class public Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;
.super Ljava/lang/Object;
.source "PreviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewParams"
.end annotation


# instance fields
.field public mAdjVerticalGap:I

.field public mAdjVerticalGapForBalloonDrawable:I

.field public mPreviewPaddingBottom:I

.field public mPreviewPaddingRight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingBottom:I

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingRight:I

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mAdjVerticalGap:I

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mAdjVerticalGapForBalloonDrawable:I

    return-void
.end method

.method private getAdjPreviewVertialGap(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getQwertyPreviewAdjVerticalGap()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getPhonepadPreviewAdjVerticalGap()I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getSplitPreviewAdjVerticalGap()I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getFloatingPreviewAdjVerticalGap()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFloatingPreviewAdjVerticalGap()I
    .locals 2

    :try_start_0
    const-string v1, "floating_key_preview_extra_adj_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhonepadPreviewAdjVerticalGap()I
    .locals 2

    :try_start_0
    const-string v1, "phonepad_key_preview_extra_adj_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getQwertyPreviewAdjVerticalGap()I
    .locals 2

    :try_start_0
    const-string v1, "qwerty_key_preview_extra_adj_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSplitPreviewAdjVerticalGap()I
    .locals 2

    :try_start_0
    const-string v1, "split_key_preview_extra_adj_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreviewPaddingBottom()V
    .locals 1

    :try_start_0
    const-string v0, "preview_key_bottom_padding"

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingBottom:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadPreviewPaddingRight()V
    .locals 1

    :try_start_0
    const-string v0, "preview_key_right_padding"

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingRight:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAdjVerticalGap()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mAdjVerticalGap:I

    return v0
.end method

.method public getAdjVerticalGapForBalloonDrawable()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mAdjVerticalGapForBalloonDrawable:I

    return v0
.end method

.method public getPreviewPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingBottom:I

    return v0
.end method

.method getPreviewPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mPreviewPaddingRight:I

    return v0
.end method

.method public initParams(I)V
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->loadPreviewPaddingBottom()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->loadPreviewPaddingRight()V

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->getAdjPreviewVertialGap(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PreviewController$PreviewParams;->mAdjVerticalGap:I

    return-void
.end method
