.class public abstract Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.super Landroid/widget/FrameLayout;
.source "AbsAirButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;
    }
.end annotation


# static fields
.field protected static final HOVER_DISABLE_TIME:I = 0x1f4

.field public static final INVALID_IDX:I = -0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonWidget"

.field protected static final TOUCH_PRESS_DISTANCE_LIMIT:I = 0x1e

.field protected static TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I = 0x0

.field protected static final TOUCH_PRESS_TIME_LIMIT:I = 0x12c

.field protected static mIm:Landroid/hardware/input/InputManager;

.field protected static mUspLevel:I


# instance fields
.field protected mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field protected mAddedViewIdx:I

.field protected mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field protected mDisplayAdditionalViewCnt:I

.field protected mEndViewIdx:I

.field protected mFocusedViewIdx:I

.field protected mIsHoverEventEnabled:Z

.field protected mIsKeyEventEnabled:Z

.field protected mIsReservedToFinish:Z

.field protected mIsReservedToResetPosition:Z

.field protected mIsStartUp:Z

.field protected mIsTouchAtAirButtonView:Z

.field protected mIsTouchEventEnabled:Z

.field protected mIsTouchPressEnabled:Z

.field protected mIsViewInitialized:[Z

.field protected mMaxMenuItemCnt:I

.field protected mOldStartViewIdx:I

.field protected mOnHoverListener:Landroid/view/View$OnHoverListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSelectedViewIdx:I

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field protected mStartViewIdx:I

.field protected mTotalViewCnt:I

.field protected mTouchDownStartTime:J

.field protected mTouchDownX:I

.field protected mTouchDownY:I

.field protected mTouchUpX:I

.field protected mTouchUpY:I

.field protected mViewBaseX:[I

.field protected mViewBaseY:[I

.field protected mViewList:[Landroid/view/View;

.field protected mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field protected misFlickering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mUspLevel:I

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iput-object p3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, v4}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAdapter()V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAttributes()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mUspLevel:I

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonView;ILandroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->isEventIncludedView(ILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private initWithAdapter()V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initWithAttributes()V
    .locals 2

    const/high16 v0, 0x41f00000

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    return-void
.end method

.method private isEventIncludedView(ILandroid/view/MotionEvent;)Z
    .locals 11

    const-wide v9, 0x3fb999999999999aL

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-le v5, v6, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v9

    if-gez v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v9

    if-gez v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v5, :cond_5

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    :cond_6
    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-ne v0, p1, :cond_8

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    if-ne v1, p1, :cond_9

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v5, :cond_a

    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AbsAirButtonView"

    const-string v6, "isEventIncludeView(cyy): return false4"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string v4, "AbsAirButtonView"

    const-string v5, "isEVentIncludedView(cyy): return true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected addViewIfNeeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method protected adjustViewDelta(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected finish(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;->onFinished(IZZ)V

    :cond_0
    return-void
.end method

.method protected getDistance(DDDD)D
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L

    sub-double v0, p5, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p7, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initAllViewDelta()V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishing()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    return-void
.end method

.method protected abstract onHoverEnter(I)V
.end method

.method protected abstract onHoverExit(I)V
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onStart()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onLayoutChanged()V

    goto :goto_0
.end method

.method protected onLayoutChanged()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    sub-long v10, v0, v2

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x12c

    cmp-long v0, v10, v0

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-double v1, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v0

    sget v2, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchUp(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    goto/16 :goto_1

    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public reAdjustViewYPosition(II)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-ge v1, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    :goto_1
    add-int v1, p1, p2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v1, v0

    sub-int/2addr p1, v1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput p1, v1, Lcom/samsung/android/airbutton/Attributes;->y:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    goto :goto_1

    :cond_4
    add-int/2addr p1, p2

    goto :goto_2
.end method

.method protected removeViewIfNeeded(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method public setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    return-void
.end method

.method protected setEndViewIdx()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    :cond_0
    return-void
.end method

.method protected setStartViewIdx(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setEndViewIdx()V

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-gt v1, v0, :cond_3

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->addViewIfNeeded(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->removeViewIfNeeded(I)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    goto :goto_0
.end method
