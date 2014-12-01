.class public Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGuideLineView.java"


# static fields
.field private static final GUIDELINE_BOTTOM_INTERVAL:I

.field private static final GUIDELINE_WIDTH:I

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLGuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

.field private mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b0010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    const v0, 0x7f0b003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 9

    const v8, 0x7f090006

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    int-to-float v7, v3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public handleGuidelineSettingsChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideLineSize(Lcom/sec/android/app/camera/PreviewFrameLayout;)V
    .locals 10

    const v6, 0x7f0a0006

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    if-le v4, v5, :cond_1

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLRectangle;

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLRectangle;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v9, v7}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    add-int v6, v3, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLRectangle;

    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    :cond_5
    return-void
.end method
