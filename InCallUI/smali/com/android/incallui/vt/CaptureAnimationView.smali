.class public Lcom/android/incallui/vt/CaptureAnimationView;
.super Landroid/view/View;
.source "CaptureAnimationView.java"


# instance fields
.field private final MARGIN_GAP:I

.field private final REVERSE_THRESHOLD_RATE:I

.field private mIsReverse:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectMargin:I

.field private mTransparentRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    iput-boolean v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->REVERSE_THRESHOLD_RATE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->MARGIN_GAP:I

    invoke-direct {p0}, Lcom/android/incallui/vt/CaptureAnimationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    iput-boolean v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->REVERSE_THRESHOLD_RATE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->MARGIN_GAP:I

    invoke-direct {p0}, Lcom/android/incallui/vt/CaptureAnimationView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    iput-boolean v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->REVERSE_THRESHOLD_RATE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->MARGIN_GAP:I

    invoke-direct {p0}, Lcom/android/incallui/vt/CaptureAnimationView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    return-void
.end method

.method private refreshRect(II)V
    .locals 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    div-int/lit8 v1, p2, 0xf

    if-le v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    add-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    iget-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    add-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/vt/CaptureAnimationView;->refreshRect(II)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mTransparentRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mIsReverse:Z

    iput v2, p0, Lcom/android/incallui/vt/CaptureAnimationView;->mRectMargin:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
