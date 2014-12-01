.class public Lcom/android/mms/help/TwTouchPunchView;
.super Landroid/view/View;
.source "TwTouchPunchView.java"


# static fields
.field public static final CIRCLE_SHAPE:Ljava/lang/String; = "circle"

.field public static final PUNCH_EVENT_FLAG:I = 0x80

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "rectangle"


# instance fields
.field private mBrush:Landroid/graphics/Paint;

.field private mGlobalRect:Landroid/graphics/Rect;

.field private mHitRect:Landroid/graphics/Rect;

.field private mInitialized:Z

.field private mRadius:F

.field private mShape:Ljava/lang/String;

.field private mShapeShow:Z

.field private positionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/help/TwTouchPunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/help/TwTouchPunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mShapeShow:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mRadius:F

    iput-boolean v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->positionRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/mms/R$styleable;->TwTouchPunchView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mShapeShow:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    const v2, 0xffff00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-boolean v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000

    iget-boolean v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mShapeShow:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mRadius:F

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->positionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->positionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    const/4 v7, 0x1

    iget-boolean v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    :goto_0
    iput v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mRadius:F

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    aget v2, v0, v5

    aget v3, v0, v7

    aget v4, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v7, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iget-boolean v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    const-string v6, "circle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget-object v7, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iget-object v9, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mRadius:F

    float-to-double v5, v5

    cmpg-double v5, v0, v5

    if-gez v5, :cond_1

    or-int/lit16 v5, v2, 0x80

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->positionRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/mms/help/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->positionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit16 v5, v2, 0x80

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    goto :goto_1
.end method

.method public processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V
    .locals 11

    const/high16 v10, 0x40000000

    const-wide/high16 v8, 0x4000000000000000L

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mInitialized:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mShape:Ljava/lang/String;

    const-string v4, "circle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mRadius:F

    float-to-double v3, v3

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    or-int/lit16 v3, v2, 0x80

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/help/TwTouchPunchView;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit16 v3, v2, 0x80

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    goto :goto_0
.end method
