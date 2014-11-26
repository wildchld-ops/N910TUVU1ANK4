.class Landroid/webkitsec/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field private static final DISABLE_ENLARGEMENT:Z = false

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.6f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0x8

.field private static final ROUND_DIAMETER:F = 2.0f

.field private static final STROKE_WIDTH:I = 0x2

.field private static final USE_BITMAP_ENLARGEMENT:Z = true

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mBmCanvas:Landroid/graphics/Canvas;

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfFlexibleZoomScale:F

.field private static mfWebViewZoomScale:F


# instance fields
.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mMoves:Ljava/util/ArrayList;

.field private mPathBgFill:Landroid/graphics/Path;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Landroid/view/View;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWebView:Landroid/webkitsec/WebView;

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    sput-object v1, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    sput v0, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    sput v0, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    sput v0, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    sput v0, Landroid/webkitsec/WebMagnifier;->mTailHeight:I

    sput-object v1, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    const v0, 0x3f99999a

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 3
    .param p1    # Landroid/webkitsec/WebViewClassic;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mMode:I

    iput v2, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    iput-boolean v2, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    iput-object p1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    const v1, 0x1050181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget v6, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    int-to-float v6, v6

    sget v7, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    sget v6, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    int-to-float v6, v6

    sget v7, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    const/4 v6, 0x2

    new-array v3, v6, [I

    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v6, :cond_1

    const-string v6, "WebMagnifier"

    const-string/jumbo v7, "show : mWebView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    aget v7, v3, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    aget v8, v3, v10

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    aget v9, v3, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    aget v10, v3, v10

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v0, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    sget-object v7, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private setShowXY(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    iput p1, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    iput p2, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    iget v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    iget v2, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    add-int/lit8 v2, v2, 0x28

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    invoke-direct {p0}, Landroid/webkitsec/WebMagnifier;->updateDrawingPath()V

    return-void
.end method

.method private updateDrawingPath()V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x40000000

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    sget v5, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x2

    sget v5, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x2

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkitsec/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x8

    int-to-float v9, v9

    iget v10, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v11, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x8

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    add-int/lit8 v6, v6, 0x8

    iget v7, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x8

    iget v8, p0, Landroid/webkitsec/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkitsec/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x8

    iget v9, p0, Landroid/webkitsec/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    return-void
.end method

.method private updateZoomScale()V
    .locals 5

    const/high16 v4, 0x3f800000

    sget-object v0, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_0
    const v0, 0x3f99999a

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Landroid/webkitsec/WebMagnifier;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    sget v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    float-to-double v0, v0

    const-wide v2, 0x3ff999999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const v0, 0x3fcccccd

    sput v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0

    :cond_3
    sget v0, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    sput v4, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 6

    const/16 v5, 0xa5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mSrcX:I

    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mSrcY:I

    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mAdjustY:I

    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mMode:I

    iput v3, p0, Landroid/webkitsec/WebMagnifier;->mHandleHeight:I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const v1, 0x3f99999a

    sput v1, Landroid/webkitsec/WebMagnifier;->mfFlexibleZoomScale:F

    sput-object v4, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    sput-object v4, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    sput-object v4, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    iput-boolean v3, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move()V
    .locals 3

    iget-boolean v1, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "move() is called with NO data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    if-nez v0, :cond_2

    const-string v1, "WebMagnifier"

    const-string v2, "Acquired move data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebMagnifier;->setShowXY(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method move(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/16 v4, 0xa5

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v2, :cond_1

    const-string v2, "WebMagnifier"

    const-string/jumbo v3, "show : mWebView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/WebMagnifier;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, v4, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    const/4 v8, -0x1

    const/high16 v7, -0x1000000

    const/high16 v6, 0x40000000

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v5, :cond_1

    const-string v5, "WebMagnifier"

    const-string/jumbo v6, "onDraw : called after WebView is destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v5, 0x10600a6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Landroid/webkitsec/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Landroid/webkitsec/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method setWebView(Landroid/webkitsec/WebView;)V
    .locals 1
    .param p1    # Landroid/webkitsec/WebView;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebMagnifier;->hide()V

    :cond_0
    iput-object p1, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    iget-object v0, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method declared-synchronized show(II)V
    .locals 23
    .param p1    # I
    .param p2    # I

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    if-nez v3, :cond_1

    const-string v3, "WebMagnifier"

    const-string/jumbo v4, "show : mWebView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebMagnifier;->mWebView:Landroid/webkitsec/WebView;

    move-object/from16 v18, v0

    :goto_1
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    goto :goto_1

    :cond_2
    if-nez v18, :cond_3

    const-string v3, "WebMagnifier"

    const-string/jumbo v4, "show : Cannot find Decor View."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkitsec/WebMagnifier;->mSrcView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    invoke-direct/range {p0 .. p2}, Landroid/webkitsec/WebMagnifier;->setShowXY(II)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-nez v3, :cond_0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "multiwindow_facade"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v3, v13

    add-float v16, v16, v3

    move/from16 v0, v20

    int-to-float v3, v0

    add-float v17, v17, v3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    :cond_4
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    move/from16 v0, v16

    float-to-int v5, v0

    move/from16 v0, v17

    float-to-int v6, v0

    const/16 v7, 0x3e8

    const/16 v8, 0x218

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v3, Landroid/graphics/Canvas;

    sget-object v4, Landroid/webkitsec/WebMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v3, Landroid/webkitsec/WebMagnifier;->mBmCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v11

    const-string v3, "WebMagnifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: OutOfMemory. Cannot draw contens("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebMagnifier;->mViewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/WebMagnifier;->mViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;
    .param p4    # F

    sput-object p3, Landroid/webkitsec/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    sput p4, Landroid/webkitsec/WebMagnifier;->mfWebViewZoomScale:F

    invoke-direct {p0}, Landroid/webkitsec/WebMagnifier;->updateZoomScale()V

    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/WebMagnifier;->show(II)V

    return-void
.end method
