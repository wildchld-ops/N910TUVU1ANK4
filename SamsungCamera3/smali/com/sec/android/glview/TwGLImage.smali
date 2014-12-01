.class public Lcom/sec/android/glview/TwGLImage;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLImage.java"


# instance fields
.field protected mImage:Lcom/sec/android/glview/TwGLTexture;

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p7, :cond_0

    if-eqz p6, :cond_2

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p5, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    return-void
.end method

.method public setFlip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    :cond_0
    return-void
.end method

.method public setImageResources(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_1
    return-void
.end method

.method public setImageResources(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_2
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iput p2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSampleSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLByteArrayTexture;->setSampleSize(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLFileTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    :cond_0
    return-void
.end method
