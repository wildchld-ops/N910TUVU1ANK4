.class public Lcom/sec/android/glview/TwGLList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLList$OnScrollListener;,
        Lcom/sec/android/glview/TwGLList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.1f

.field private static final BOUNCING_VELOCITY_DIP:F = 1.5f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING_DIP:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 100.0f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.1f

.field private static final VELOCITY_REVISE_THRESHOLD_DIP:F = 10.0f


# instance fields
.field private BOUNCE_EDGE_SIZE:F

.field private BOUNCE_IMAGE_SIZE:F

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private mDownEventX:F

.field private mDownEventY:F

.field private final mDragOutDistanceLimit:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastEventX:F

.field private mLastEventY:F

.field private mListHeight:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mListWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarAutoHide:Z

.field private mScrollBarOffset:F

.field private mScrollBarPadding:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrolling:Z

.field private mStackOrientation:I

.field private final mVelocityReviseThreshold:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 6
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/high16 v5, 0x42c80000

    const/high16 v4, 0x3f800000

    const/high16 v3, 0x41200000

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mDownEventX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mDownEventY:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    const/high16 v0, 0x43390000

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iput v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/glview/TwGLList;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method private checkBoundary()Z
    .locals 7

    const v6, 0x3dcccccd

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :goto_3
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .param p1    # F
    .param p2    # F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    return-void
.end method

.method public isScrollable()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    :cond_2
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F

    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F

    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->scrollToVisible()Z

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_34

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    if-nez v5, :cond_33

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    const/4 v2, 0x1

    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    invoke-virtual {v10, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    const/high16 v1, 0x3f800000

    :goto_6
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_14

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_19

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_c

    :cond_1a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3dcccccd

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1d

    const/high16 v1, 0x3f800000

    :goto_e
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_f

    :cond_1c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_e

    :cond_1e
    const-string v12, "TwGLList"

    const-string v13, "mScrollSumX -- translateAbolute1 = 0"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_21

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_22

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_10

    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_10

    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_11

    :cond_24
    const-string v12, "TwGLList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mScrollSumX -- translateAbolute2= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :cond_26
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_27

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_28

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_12

    :cond_28
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_12

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_30

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2e

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_2d
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    :cond_2e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    :goto_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_13

    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_31

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_13

    :cond_31
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    :goto_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_13

    :cond_32
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_15

    :cond_33
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_35

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_36

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    :cond_37
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TwGLList"

    const-string v8, "ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mDownEventX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mDownEventY:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_0
    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_24

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_24

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_24

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    sub-float v1, v7, v8

    move v2, v1

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v5, 0x0

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    if-nez v5, :cond_a

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_5
    const/4 v2, 0x0

    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    :cond_6
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_7

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x0

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_2

    :cond_b
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_c

    if-nez v5, :cond_11

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    :goto_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    :cond_c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    const/high16 v0, 0x3f800000

    :goto_4
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_d
    :goto_5
    if-nez v5, :cond_14

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_e
    :goto_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    :cond_f
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    sub-float v1, v7, v8

    move v2, v1

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_16

    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v5, 0x0

    :cond_10
    :goto_7
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    if-nez v5, :cond_1a

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_8

    :cond_11
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto/16 :goto_3

    :cond_12
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_4

    :cond_13
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_5

    :cond_14
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto/16 :goto_6

    :cond_15
    const/4 v2, 0x0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_7

    :cond_16
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_18

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_17

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_19

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    sub-float v2, v1, v7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    :cond_19
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    :cond_1a
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_8

    :cond_1b
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_1c

    if-nez v5, :cond_20

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    :goto_9
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    :cond_1c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_21

    const/high16 v0, 0x3f800000

    :goto_a
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_22

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_1d
    :goto_b
    if-nez v5, :cond_23

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    :cond_1e
    :goto_c
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    :cond_1f
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_20
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_9

    :cond_21
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v9, 0x3e4ccccd

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_a

    :cond_22
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_b

    :cond_23
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1e

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_c

    :cond_24
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_28

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_25

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_28

    :cond_25
    const-string v7, "TwGLList"

    const-string v8, "ACTION_UP"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_26

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mDownEventY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x447a0000

    mul-float/2addr v7, v8

    const/high16 v8, 0x42480000

    div-float/2addr v7, v8

    neg-float v7, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    :cond_26
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_27

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mDownEventX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x447a0000

    mul-float/2addr v7, v8

    const/high16 v8, 0x42480000

    div-float/2addr v7, v8

    neg-float v7, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    :cond_27
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public refreshList()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_1

    invoke-virtual {v2, v5, v1, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v1, v5, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_4

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    return-void

    :cond_4
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_3

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_1
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_0
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    const-string v7, "TwGLList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", visibility = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v7, :cond_8

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_3

    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_2
    :goto_1
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_5

    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v7, v9

    goto :goto_0

    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    :goto_2
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_2

    :cond_5
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_7

    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v10

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_6
    :goto_3
    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/glview/TwGLView;

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_4

    :cond_7
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v10

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_3

    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v7, v9, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_a

    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    :cond_9
    :goto_5
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_c

    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v7, v9

    goto/16 :goto_0

    :cond_a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    :goto_6
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_5

    :cond_b
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_6

    :cond_c
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v10

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_3

    :cond_d
    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v10

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_3

    :cond_e
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v7, v9

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .locals 13
    .param p1    # Lcom/sec/android/glview/TwGLList$Adapter;
    .param p2    # I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iput p2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    :goto_1
    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_8

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v12

    if-nez v12, :cond_4

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_6

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_5

    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_5
    const/4 v0, 0x0

    int-to-float v1, v11

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    :goto_4
    invoke-virtual {v12, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    invoke-virtual {p0, v12}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_7

    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    :cond_7
    int-to-float v0, v11

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_c

    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    int-to-float v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_d

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f02045c

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f02045a

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f02045b

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f02045b

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    :goto_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_8

    :cond_c
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_5

    :cond_d
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020458

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020459

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020457

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020457

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_6

    :cond_e
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_7

    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto/16 :goto_3
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1    # F

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLList$OnScrollListener;

    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1    # Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    :cond_7
    return-void
.end method

.method public setScroll(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    return-void
.end method

.method public setScrollBarPadding(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1    # F

    const-string v0, "TwGLList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 6
    .param p1    # F
    .param p2    # F

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    cmpl-float v3, v3, p2

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->refreshList()V

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    :cond_5
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1    # F

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->refreshList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public showScrollBar()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0
.end method

.method public translateList(FF)Z
    .locals 9
    .param p1    # F
    .param p2    # F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v2

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_8

    move v0, p2

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    cmpg-float v6, p2, v8

    if-gez v6, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v0, v5}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    cmpl-float v6, p2, v8

    if-lez v6, :cond_4

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, p2, v6

    if-lez v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, p2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, v7

    add-float/2addr v6, p2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, p2

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    :cond_8
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    move v0, p1

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    cmpg-float v6, p1, v8

    if-gez v6, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v2, 0x0

    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    if-nez v2, :cond_a

    invoke-virtual {v3, v0, v8, v5}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_3

    :cond_b
    const/4 v2, 0x1

    goto :goto_2

    :cond_c
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e

    cmpl-float v6, p1, v8

    if-lez v6, :cond_d

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    const/4 v2, 0x1

    goto :goto_2

    :cond_e
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, p1

    cmpl-float v6, v6, v8

    if-lez v6, :cond_f

    const/4 v2, 0x1

    goto :goto_2

    :cond_f
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, v7

    add-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_10
    if-nez v2, :cond_11

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, p1

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    :cond_11
    if-nez v2, :cond_12

    :goto_4
    return v4

    :cond_12
    move v4, v5

    goto :goto_4
.end method
