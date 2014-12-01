.class public Landroid/widget/FHoverPopupWindow;
.super Landroid/widget/HoverPopupWindow;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FHoverPopupWindow$FHPopupContainer;,
        Landroid/widget/FHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field static final TAG:Ljava/lang/String; = "FHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4


# instance fields
.field protected DEBUG:Z

.field private H:F

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field protected mHandler:Landroid/os/Handler;

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    iput-boolean v1, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    const/high16 v0, 0x41200000

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    const/high16 v0, 0x41700000

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    const/high16 v0, 0x42580000

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/FHoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$1;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/FHoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$2;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FHoverPopupWindow;I)I
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FHoverPopupWindow;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$802(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method private resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FHoverPopupWindow"

    const-string/jumbo v1, "resetTimeout: Call sendMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private setAnimator(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/FHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/FHoverPopupWindow$3;-><init>(Landroid/widget/FHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public computePopupPosition(Landroid/view/View;III)V
    .locals 51

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    if-eqz p1, :cond_18

    move-object/from16 v14, p1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/4 v13, 0x0

    const/4 v4, 0x2

    new-array v12, v4, [I

    const/4 v4, 0x2

    new-array v11, v4, [I

    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v40

    const/16 v34, 0x0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getWidth()I

    move-result v42

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getHeight()I

    move-result v41

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v42

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v41

    if-ne v0, v4, :cond_2

    const/16 v34, 0x1

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_19

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    new-instance v13, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_3
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_5

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    move-object/from16 v0, v48

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_5

    move-object/from16 v50, v48

    check-cast v50, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v50

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_1a

    const/16 v35, 0x1

    :goto_3
    const/16 v46, 0x0

    move-object/from16 v0, v50

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v35, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v46

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v46

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayWidthToComputeAniWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayFrameLeft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayFrameRight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_1b

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/FHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v38, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: posY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: displayFrame.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: anchorRect.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_8

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-ge v0, v4, :cond_8

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v38

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_9

    :cond_8
    const/4 v15, 0x1

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_39

    :cond_a
    if-eqz v15, :cond_39

    const/16 v33, 0x1

    const/high16 v4, 0x41000000

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v36

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_b
    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v38

    if-le v0, v4, :cond_21

    const/16 v33, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_c

    new-instance v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;-><init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_22

    :cond_d
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    if-nez v23, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    sub-int v4, v16, v37

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int v4, v37, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_25

    if-eqz v33, :cond_24

    move/from16 v17, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2c

    if-eqz v33, :cond_2b

    move/from16 v37, v16

    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v31, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v32, v4, v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointXonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointYonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v33, :cond_32

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    if-eqz v47, :cond_15

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_14

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_30

    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    :cond_15
    :goto_d
    div-int/lit8 v4, v24, 0x2

    add-int v44, v18, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v45, v22, v4

    move/from16 v27, v31

    move/from16 v28, v32

    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_16

    :cond_16
    :goto_e
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_3e

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030357

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_19
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    new-instance v13, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_1a
    const/16 v35, 0x0

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    goto :goto_10

    :cond_1d
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    add-int v4, v38, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1f

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v38

    if-lt v0, v4, :cond_9

    :cond_1f
    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v37

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v37, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_6

    :cond_21
    const/16 v33, 0x1

    goto/16 :goto_7

    :cond_22
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_8

    :cond_23
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    :cond_24
    move/from16 v20, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_25
    if-eqz v33, :cond_28

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    move/from16 v17, v36

    :cond_26
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v36

    add-int v5, v38, v22

    sub-int v17, v4, v5

    goto :goto_11

    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    move/from16 v20, v36

    :cond_29
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v36

    sub-int v20, v38, v4

    goto :goto_12

    :cond_2b
    move/from16 v37, v16

    goto/16 :goto_b

    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    if-eqz v33, :cond_2d

    move/from16 v37, v16

    goto/16 :goto_b

    :cond_2d
    move/from16 v37, v16

    sub-int v38, v38, v20

    goto/16 :goto_b

    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_c

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_33

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v47

    if-eqz v47, :cond_16

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v43

    new-instance v29, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-nez v4, :cond_34

    move-object/from16 v0, v43

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_37

    :cond_34
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_35
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, v43

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v43

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v29

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_13

    :cond_36
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    move-object/from16 v0, v29

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v29

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v31

    move/from16 v8, v32

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_e

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_3a

    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3b
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const-string v4, "FHoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_e

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_14

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_e

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030356

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_f
.end method

.method public computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "FHoverPopupWindow"

    const-string v14, "***** Start FingerHoverPopupWindow.onHoverEvent() *****"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v13, 0x7

    if-ne v1, v13, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v13

    float-to-int v9, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v13

    float-to-int v10, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v13, :cond_9

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    instance-of v13, v8, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v13, :cond_9

    move-object v3, v8

    check-cast v3, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow: kdhpoint1"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v13, v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int v7, v13, v6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent():  mContentView.getWidth() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "FHoverPopupWindow"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent():  ((FHPopupContainer)mContentContainer).getWidth() = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): infopicker_leftLimit = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): infopicker_rightLimit = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v13, v6, v7}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPickerLimit(II)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_5

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): rawX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): mPopupPosX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): mWindowGapX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): endx = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v15, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v11

    new-instance v5, Landroid/graphics/PointF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v5, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    iget v13, v11, Landroid/graphics/PointF;->x:F

    const/high16 v14, 0x3f800000

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    iget v13, v11, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3f800000

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_f

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    if-ne v13, v14, :cond_e

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    int-to-float v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v14, v14

    iget v15, v11, Landroid/graphics/PointF;->x:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iget v14, v4, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->x:F

    int-to-float v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    int-to-float v14, v14

    iget v15, v11, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iget v14, v4, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->y:F

    :goto_1
    iget v13, v5, Landroid/graphics/PointF;->x:F

    float-to-int v13, v13

    iget v14, v5, Landroid/graphics/PointF;->y:F

    float-to-int v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v13

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_8

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): not showing"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): not showing: Call containerView.updateDecoration()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_a

    const-string v13, "FHoverPopupWindow"

    const-string v14, "ACTION_HOVER_MOVE: FingerHoverPopupWindow.onHoverEvent(): Call resetTimeout()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/widget/FHoverPopupWindow;->resetTimeout()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_c

    const-string v13, "FHoverPopupWindow"

    const-string v14, "***** End FingerHoverPopupWindow.onHoverEvent(): return true *****"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v13, 0x1

    :goto_4
    return v13

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_0

    :cond_e
    int-to-float v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v14, v14

    iget v15, v11, Landroid/graphics/PointF;->x:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->x:F

    int-to-float v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    int-to-float v14, v14

    iget v15, v11, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/PointF;->y:F

    div-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v13, v9, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v14, v10, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_11

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): showing"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "FHoverPopupWindow"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FingerHoverPopupWindow.onHoverEvent(): showing: mIsFHAnimationEnabled = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_12

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): showing:  Call containerView.updateDecoration()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_3

    :cond_13
    const/16 v13, 0xa

    if-ne v1, v13, :cond_19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_14

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v13, v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_15

    const-string v13, "FHoverPopupWindow"

    const-string v14, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT: setPopupState(center)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v13, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPopupState(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_17

    const-string v13, "FHoverPopupWindow"

    const-string v14, "Popup Touchable, Parent Views exit event being consumed to not dismiss popup window"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v13, :cond_1a

    const-string v13, "FHoverPopupWindow"

    const-string v14, "***** End FingerHoverPopupWindow.onHoverEvent(): return false *****"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_4
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setOverTopPickerOffset(I)V

    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    return-void
.end method
