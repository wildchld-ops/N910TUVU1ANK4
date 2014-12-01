.class public Landroid/webkitsec/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final DEBUG:Z

.field final DRAW_HIGHLIGHT:Z

.field private HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mHandleCrossing:Z

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sput v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sput v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "WebSelectionControls"

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->LOGV:Z

    sget v3, Landroid/webkitsec/DebugFlags;->DEBUG_SETTING:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->DRAW_HIGHLIGHT:Z

    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    const v3, 0x3e0f5c29

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807c7

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807cb

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x280

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x1e0

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xd5

    if-eq v3, v4, :cond_0

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_1

    :cond_0
    const v3, 0x3ca3d70a

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    :cond_3
    return-void

    :cond_4
    move v3, v4

    goto/16 :goto_0
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, p2, v7, v8}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->isSelectionInEditField()Z

    move-result v3

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x5

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    if-eqz v3, :cond_0

    if-nez p4, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, -0x5

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    if-eqz v3, :cond_1

    if-nez p4, :cond_1

    if-eqz v4, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v7, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    if-gez v1, :cond_3

    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    :cond_1
    :goto_2
    if-gez v2, :cond_4

    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    :cond_2
    :goto_3
    if-eqz v0, :cond_0

    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10807c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_1

    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_0

    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 12

    const v11, 0x10807c7

    const v10, 0x10807c6

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000

    const/4 v5, 0x1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    if-ne v5, p2, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :goto_0
    if-eqz p3, :cond_2

    if-ne v5, p2, :cond_9

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, -0x4

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    iput v10, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    if-gez v4, :cond_0

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_1

    const/16 v0, 0x24

    :cond_1
    iget v4, v3, Landroid/graphics/Point;->y:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-le v4, v7, :cond_2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v7

    if-ltz v4, :cond_8

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    :cond_2
    :goto_1
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_d

    move v4, v5

    :goto_2
    iget v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_3

    move v6, v5

    :cond_3
    xor-int v1, v4, v6

    const/4 v2, 0x0

    iget-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    const-string v4, "WebSelectionControls"

    const-string v6, "getCharHandlePos: forceUpsideDown is set"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne v5, p2, :cond_11

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_f

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_5

    if-eqz v2, :cond_e

    :cond_5
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_6

    const v4, 0x10807cd

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    :cond_6
    :goto_3
    return-object v3

    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_8
    const-string v4, "WebSelectionControls"

    const-string v7, "WebViewClassic is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, -0x4

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    const v4, 0x10807cc

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_a

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    :cond_a
    const/4 v0, 0x0

    iget-object v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_b

    const/16 v0, 0x24

    :cond_b
    iget v4, v3, Landroid/graphics/Point;->y:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-le v4, v7, :cond_2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v7

    if-ltz v4, :cond_c

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto/16 :goto_1

    :cond_c
    const-string v4, "WebSelectionControls"

    const-string v7, "WebViewClassic is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    move v4, v6

    goto/16 :goto_2

    :cond_e
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_6

    const v4, 0x10807cc

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_3

    :cond_f
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_10

    if-eqz v2, :cond_6

    :cond_10
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_6

    iput v11, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_3

    :cond_11
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_14

    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v6, v9, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_6

    iput v11, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_3

    :cond_13
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v6, v9, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_6

    iput v10, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_3

    :cond_14
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_15

    if-eqz v2, :cond_6

    :cond_15
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_6

    const v4, 0x10807cd

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_3
.end method

.method private updateHandleSize(IF)V
    .locals 4

    const/high16 v3, 0x40000000

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v13, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebTextSelectionControls;->updateHandleSize(IF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4, v14}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    if-nez p6, :cond_1

    const/4 v6, 0x3

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x6

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    const/4 v6, 0x4

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x5

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    packed-switch p8, :pswitch_data_0

    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40000000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v4, -0x10000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x64

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    invoke-virtual {v12}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WebSelectionControls"

    const-string v5, "Path is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p9, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v15, v3}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    iput-object p4, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-void
.end method

.method getHandleCrossing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(IIILandroid/webkitsec/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p4, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_4

    move v6, v7

    :goto_1
    iget v9, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v9, v9, 0xa

    if-nez v9, :cond_2

    move v8, v7

    :cond_2
    xor-int v2, v6, v8

    const/4 v3, 0x0

    iget-boolean v6, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    const-string v6, "WebSelectionControls"

    const-string v8, "getHandleExtendPoint: forceUpsideDown is set"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v7, p3, :cond_8

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_6

    if-nez v3, :cond_6

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_5

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    if-lez v1, :cond_0

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_6
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_7

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_7
    if-lez v1, :cond_0

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_8
    const/4 v6, 0x2

    if-ne v6, p3, :cond_c

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_a

    if-nez v3, :cond_a

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_9

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_9
    if-lez v1, :cond_0

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    sub-int v6, p2, v1

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_a
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_b

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_b
    if-lez v1, :cond_0

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x5

    if-eq v6, p3, :cond_d

    const/4 v6, 0x6

    if-ne v6, p3, :cond_f

    :cond_d
    if-lez p1, :cond_e

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_e

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_e
    if-lez p1, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v6, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x3

    if-eq v6, p3, :cond_10

    const/4 v6, 0x4

    if-ne v6, p3, :cond_0

    :cond_10
    if-lez p2, :cond_11

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_11

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_11
    if-lez p2, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-le p2, v6, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    sget v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I
    .locals 14

    if-nez p3, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    sget v2, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_7

    div-int/lit8 v9, v2, 0x2

    div-int/lit8 v10, v1, 0x2

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x5

    goto :goto_0

    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    goto :goto_0

    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    goto :goto_0

    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    goto/16 :goto_0

    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method getHandleWidth()I
    .locals 1

    sget v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getLeftHandleState()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    return v0
.end method

.method public getRightHandleState()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    return v0
.end method

.method getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11

    move-object v7, p1

    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v2

    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentXf(I)F

    move-result v4

    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentYf(I)F

    move-result v5

    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v6, :cond_0

    invoke-virtual {v6, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-object v0
.end method

.method getSelectionBitmap(Landroid/graphics/Region;)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5, v3}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5, v4}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v5, v4, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v5, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "/sdcard/selectionBitmap.jpg"

    invoke-virtual {p0, v0, v5}, Landroid/webkitsec/WebTextSelectionControls;->saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;
    .locals 10

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7, v3}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-boolean v7, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "LOGTAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSelectionPicture: region - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    new-instance v6, Landroid/graphics/Picture;

    invoke-direct {v6}, Landroid/graphics/Picture;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget v7, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v6}, Landroid/graphics/Picture;->endRecording()V

    return-object v6
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0, p2}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    move-object v3, v4

    goto :goto_0
.end method

.method saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v2, v3

    goto :goto_1
.end method

.method setHandleCrossing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    return-void
.end method

.method public setHandleState(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method toggleHandleCrossing()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
