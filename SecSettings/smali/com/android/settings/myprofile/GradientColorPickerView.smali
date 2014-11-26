.class public Lcom/android/settings/myprofile/GradientColorPickerView;
.super Landroid/view/View;
.source "GradientColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;,
        Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private final LOG_TAG:Ljava/lang/String;

.field private WIDTH:I

.field private mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

.field private mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

.field private m_bFirst:Z

.field private selector:Landroid/graphics/Bitmap;

.field private spectrum:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private makeSpectrum()V
    .locals 28

    const/4 v3, 0x7

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    const/4 v3, 0x7

    new-array v8, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v8, v3

    const/4 v3, 0x1

    const v4, 0x3e2aaaab

    aput v4, v8, v3

    const/4 v3, 0x2

    const v4, 0x3eaaaaab

    aput v4, v8, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f000000

    aput v4, v8, v3

    const/4 v3, 0x4

    const v4, 0x3f2aaaab

    aput v4, v8, v3

    const/4 v3, 0x5

    const v4, 0x3f555555

    aput v4, v8, v3

    const/4 v3, 0x6

    const/high16 v4, 0x3f800000

    aput v4, v8, v3

    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v26, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    const/4 v10, 0x1

    invoke-direct {v3, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    const/16 v24, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_0

    aget-object v3, v23, v24

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    aget-object v3, v23, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v3, v4

    aget-object v3, v23, v24

    const/4 v4, 0x2

    const/high16 v5, -0x1000000

    aput v5, v3, v4

    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v21, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    int-to-float v13, v3

    aget-object v14, v23, v24

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000
        0x3f800000
    .end array-data
.end method

.method private notifyColorChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 5

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v2, :cond_0

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_0
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v2, :cond_1

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_1
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_2
    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_3
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v4, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_4
    :goto_0
    const/high16 v2, -0x1000000

    or-int/2addr v2, v0

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x15

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_5

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x42

    if-eq p1, v1, :cond_9

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    invoke-interface {v1}, Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;->onCustomColorSubmit()V

    goto :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02060d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->spectrum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->makeSpectrum()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->m_bFirst:Z

    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    const-string v1, "AIRON"

    const-string v2, "+++++++ GradientColor Picker : ACTION DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_1
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_2

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_2
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :pswitch_1
    const-string v1, "AIRON"

    const-string v2, " ********** GradientColor Picker : ACTION MOVE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_5

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_5
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_6

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_6
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_7
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "AIRON"

    const-string v2, "------------ GradientColor Picker : ACTION UP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    if-gez v1, :cond_9

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_9
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    if-gez v1, :cond_a

    iput v3, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_a
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->HEIGHT:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->y:I

    :cond_b
    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    if-lt v1, v2, :cond_c

    iget v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->WIDTH:I

    iget-object v2, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->x:I

    :cond_c
    invoke-direct {p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->notifyColorChange()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    iput-object p1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnColorChangedListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setOnCustomColorSubmitListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;)V
    .locals 0
    .param p1    # Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    iput-object p1, p0, Lcom/android/settings/myprofile/GradientColorPickerView;->mOnCustomColorSubmitListener:Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;

    return-void
.end method
