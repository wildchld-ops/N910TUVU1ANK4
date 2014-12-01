.class public Lcom/android/internal/policy/impl/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# instance fields
.field private mBorderPaintInner:Landroid/graphics/Paint;

.field private mBorderPaintOutter:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mFocusLineColor:I

.field private mFocusOutLineColor:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private final mThicknessForUnFocused:I

.field private mUnFocusLineColor:I

.field private mUnFocusOutLineColor:I

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108067c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080679

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/Border;->createBorderPaint()V

    return-void
.end method

.method private createBorderPaint()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintInner:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessBorderPaintOuter:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 14

    if-nez p4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v13, v1

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-lez v13, :cond_0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_2

    int-to-float v2, v11

    add-int v1, v9, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v9, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v11

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v11, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_0

    add-int v1, v9, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int v1, v9, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public drawBorderBitmap(Landroid/graphics/Canvas;III)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v2, 0x3

    if-ne p4, v2, :cond_2

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v4, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mThicknessForUnFocused:I

    invoke-virtual {v1, v4, v4, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBorderLine(Landroid/graphics/Canvas;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintInner:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mBorderPaintOutter:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Border;->mUnFocusOutLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
