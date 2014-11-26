.class Landroid/widget/FHoverPopupWindow$FHPopupContainer;
.super Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FHPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FHPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mLeftLimit:I

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V
    .locals 7
    .param p2    # Landroid/content/Context;

    const/high16 v6, -0x40800000

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    const/high16 v1, 0x41200000

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_PADDING:F

    const/high16 v1, 0x3fc00000

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->ani:Landroid/view/animation/Animation;

    iput-object v5, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    iput-boolean v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->misMovetoRight:Z

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    iput v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    iput v3, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    iput v4, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    iput-object p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mFHPopCContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x15c

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    const/16 v1, 0x15d

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    const/16 v1, 0x15e

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    # getter for: Landroid/widget/FHoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1100(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    # getter for: Landroid/widget/FHoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/FHoverPopupWindow;->access$1200(Landroid/widget/FHoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1    # Landroid/graphics/Canvas;

    invoke-super/range {p0 .. p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    const-string v23, "FHPopupContainer"

    const-string v24, "FHPopupContainer.draw(): mContentView is null, return"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    # setter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1302(Landroid/widget/FHoverPopupWindow;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    add-float v25, v25, v26

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050179

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x105017a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-lez v23, :cond_5

    const/4 v14, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :cond_4
    if-eqz v14, :cond_5

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    :goto_1
    const-string v23, "americano"

    const-string/jumbo v24, "ro.build.scafe"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->W:F
    invoke-static/range {v26 .. v26}, Landroid/widget/FHoverPopupWindow;->access$1300(Landroid/widget/FHoverPopupWindow;)F

    move-result v26

    div-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingBottomPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    div-int/lit8 v13, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    add-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v15, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    const-string v23, "americano"

    const-string/jumbo v24, "ro.build.scafe"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_13

    if-gtz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    const-string v23, "americano"

    const-string/jumbo v24, "ro.build.scafe"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    if-lez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_15

    if-gtz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_b

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1800(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    sub-int v11, v23, v24

    :cond_a
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$2000(Landroid/widget/FHoverPopupWindow;)I

    move-result v24

    add-int v24, v24, v11

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    :goto_b
    div-int/lit8 v6, v23, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v8, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v10, v23, v24

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_CENTER:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1d

    const/16 v23, 0x15f

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/graphics/Paint;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    sget-object v23, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v23, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    rem-int/lit8 v5, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    sub-float v7, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v9, v23, v24

    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    add-int v23, v23, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerHeightPX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mBGPaddingTopPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalLeftLimit:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_RIGHT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->POPUPSTATE_LEFT:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    const-string v23, "americano"

    const-string/jumbo v24, "ro.build.scafe"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mPickerPadding:F
    invoke-static/range {v25 .. v25}, Landroid/widget/FHoverPopupWindow;->access$1700(Landroid/widget/FHoverPopupWindow;)F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    const-string v23, "americano"

    const-string/jumbo v24, "ro.build.scafe"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v24, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v24 .. v24}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerWidthPX:F

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/PointF;->x:F

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerOutlineThicknessPX:I

    move/from16 v23, v0

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v8, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v10, v23, v24

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->this$0:Landroid/widget/FHoverPopupWindow;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static/range {v23 .. v23}, Landroid/widget/FHoverPopupWindow;->access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_c

    :cond_1d
    const/16 v23, 0x15e

    const v24, -0xa29283

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPickerLineColorOnBottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_e
.end method

.method public setFHmoveAnimation(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->isFHmoveAnimation:Z

    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .locals 3
    .param p1    # I

    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    const-string v0, "FHPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FHPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mTopPickerOffset:I

    return-void
.end method

.method public setPickerLimit(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mLeftLimit:I

    iput p2, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mRightLimit:I

    return-void
.end method

.method public setPopupState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->mPopupState:I

    return-void
.end method
