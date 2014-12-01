.class public Lcom/sec/orca/shop/client/library/GraphicUtils;
.super Ljava/lang/Object;
.source "GraphicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recycleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    instance-of v4, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    if-lt v2, v4, :cond_1

    :cond_0
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :cond_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/orca/shop/client/library/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v4, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/orca/shop/client/library/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static resizeImage(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v1, v5, 0x1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v0, v5, 0x1

    :goto_0
    if-le v1, p2, :cond_0

    if-gt v0, p3, :cond_1

    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t decode file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method
