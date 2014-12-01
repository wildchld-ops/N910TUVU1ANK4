.class public Lcom/sec/android/glview/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/HoverPopupWindow$Gravity;,
        Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final ITEM_HOVER_POPUP_OFFSET_X:I = 0x0

.field private static final ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x7d0


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final mAnchorGLView:Lcom/sec/android/glview/TwGLView;

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mContentHeight:I

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field protected final mContext:Landroid/content/Context;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoverView:Landroid/view/ViewGroup;

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOrientation:I

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupBottomOffsetY:I

.field protected mPopupGravity:I

.field private mPopupHeight:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPopupWidth:I

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mWindowGapX:I

.field protected mWindowGapY:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p3}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/glview/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xf0f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    const v19, 0xf0f0

    and-int v17, v18, v19

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v15, p3

    move/from16 v14, p4

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v18

    if-nez v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    :goto_1
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    return-void

    :cond_1
    move/from16 v15, p4

    move/from16 v14, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v18, v18, v15

    div-int/lit8 v4, v18, 0x2

    goto :goto_0

    :cond_2
    move v11, v15

    move v7, v14

    sparse-switch v5, :sswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    :goto_2
    sparse-switch v17, :sswitch_data_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x10e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v13

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    add-int v18, v18, v19

    sub-int v12, v2, v18

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v2, v18

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v8, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v9, v2, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v12, v2, v18

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v2, :cond_8

    move v12, v2

    goto/16 :goto_2

    :cond_8
    move v12, v8

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v2, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v13, v2, v18

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_b

    move v13, v2

    goto/16 :goto_2

    :cond_b
    move v13, v9

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    :cond_c
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    add-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v9, v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v12, v2, v18

    goto/16 :goto_2

    :cond_d
    move v12, v8

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_f

    move v13, v2

    goto/16 :goto_2

    :cond_f
    move v13, v9

    goto/16 :goto_2

    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v2, :cond_11

    move v12, v2

    goto/16 :goto_2

    :cond_11
    move v12, v8

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    add-int v8, v18, v19

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v2, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v13, v2, v18

    goto/16 :goto_2

    :cond_13
    move v13, v9

    goto/16 :goto_2

    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    :cond_14
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v6, v18, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v16, v18, v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_16

    const/16 v18, 0x301

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v18

    add-int v13, v16, v18

    goto/16 :goto_1

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    add-int v13, v16, v18

    goto/16 :goto_1

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    add-int v13, v3, v18

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v10, v18, v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v6, v18, v11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v19, v11, v4

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v3, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v16, v18

    goto/16 :goto_1

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    add-int v12, v3, v18

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0xb4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    :cond_19
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v10, v18, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v16, v18, v7

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v10, v2, :cond_1b

    const/16 v18, 0x301

    move/from16 v0, v18

    if-ne v5, v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v18

    sub-int v13, v3, v18

    goto/16 :goto_1

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    sub-int v13, v3, v18

    goto/16 :goto_1

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v18

    sub-int v13, v16, v18

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v10, v18, v11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v19, v11, v4

    sub-int v16, v18, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v3, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v10, v2, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    sub-int v12, v3, v18

    goto/16 :goto_1

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v18

    sub-int v12, v16, v18

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x301 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_5
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    :cond_2
    return-void
.end method

.method private getPopupBottomOffsetY()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    add-int/lit8 v0, v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    goto :goto_0
.end method

.method private getPopupGravity()I
    .locals 8

    const/16 v7, 0x301

    const/16 v6, 0xb4

    const/16 v5, 0x5a

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    :goto_0
    return v3

    :cond_0
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v0, v1, 0xf0f

    const v3, 0xf0f0

    and-int v2, v1, v3

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    sparse-switch v2, :sswitch_data_1

    :cond_2
    :goto_2
    or-int v3, v0, v2

    goto :goto_0

    :sswitch_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_6

    if-eq v0, v7, :cond_6

    const/16 v2, 0x5050

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    const/16 v2, 0x5050

    goto :goto_2

    :sswitch_4
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_7

    if-eq v0, v7, :cond_7

    const/16 v2, 0x3030

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    const/16 v2, 0x3030

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_3
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private getPopupOffsetX()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    goto :goto_0
.end method

.method private getPopupOffsetY()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    add-int/lit8 v0, v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    const/4 v3, 0x0

    const v4, 0x7010001

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    const v2, 0x7f040009

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Lcom/sec/android/glview/HoverPopupWindow;)Z

    :cond_1
    return-void

    :pswitch_0
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    :try_start_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 2

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz p1, :cond_7

    move-object/from16 v8, p1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    const/4 v7, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [I

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v16

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v6, v22

    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v6, v22

    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v5, v22

    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v5, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    :cond_2
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v22

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x0

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    const/16 v22, 0x1

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    new-instance v7, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    const/16 v24, 0x0

    aget v24, v5, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v5, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v21, v19

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x404

    move/from16 v22, v0

    if-nez v22, :cond_a

    const/4 v15, 0x1

    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x105000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v21, v19

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0c0250

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a0319

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a031a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a031b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    :cond_5
    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->measure(II)V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v11, v10}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    goto/16 :goto_2

    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    new-instance v7, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, 0x0

    aget v24, v6, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v6, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    if-ltz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    if-ltz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto/16 :goto_5

    :cond_c
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    goto :goto_7

    :cond_d
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x80000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto/16 :goto_5

    :cond_e
    if-le v10, v11, :cond_f

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v1, 0x1030355

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsGuideLineEnabled:Z

    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineFadeOffset:I

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x15b

    const v2, 0x1080467

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideRingDrawableId:I

    const/16 v1, 0x15a

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/16 v8, 0x9

    if-ne v0, v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x7

    if-ne v0, v8, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v2, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v8, :cond_1

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/16 v8, 0xa

    if-ne v0, v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/glview/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/HoverPopupWindow$3;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    const v0, 0x1030355

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-ne v0, v4, :cond_4

    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$1;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    :cond_4
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$2;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    goto :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    iget v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
