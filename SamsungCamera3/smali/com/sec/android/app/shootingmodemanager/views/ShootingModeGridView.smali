.class public Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.super Landroid/widget/GridView;
.source "ShootingModeGridView.java"

# interfaces
.implements Lcom/sec/android/app/shootingmodemanager/DragSource;
.implements Lcom/sec/android/app/shootingmodemanager/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;,
        Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;,
        Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;,
        Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_DRAG_ENDED:I = 0x4

.field private static final ACTION_DROP_COMPLETED:I = 0x1

.field private static final ACTION_MAKE_DRAGVIEW_INVISIBLE:I = 0x3

.field private static final ACTION_RESET_ANIMATION_TIME:I = 0x5

.field private static final ANIMATION_DECREASE_OFFSET:I = 0xa

.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_OFFSET:I = 0x0

.field private static final DRAGVIEW_ALPHA:I = 0xff

.field private static final SCROLL_OFFSET:I = 0xa

.field private static final SCROLL_THRESHHOLD:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ShootingModeGridView"


# instance fields
.field private isScrolling:Z

.field private lastY:F

.field private mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

.field private mAnimating:Z

.field private mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

.field private mAnimationTimeLeft:I

.field private mBusy:Z

.field private mChildcount:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

.field private mCursorView:Landroid/widget/ImageView;

.field private mDragOverPosition:I

.field private mDragPosition:I

.field private mDragView:Landroid/view/View;

.field private mDraggedScroll:I

.field private final mDraggedScrollTask:Ljava/lang/Runnable;

.field private mDropOnPosition:I

.field private mFirstVisiblePos:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mPrevDragOverposition:I

.field private mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

.field private mScrollAdjustment:Z

.field private mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    iput v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$2;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    return p1
.end method

.method static synthetic access$1220(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;FFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->scroll(FFI)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->insert(II)V

    return-void
.end method

.method static synthetic access$902(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    return p1
.end method

.method private declared-synchronized checkScrolling(FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-boolean v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    if-nez v3, :cond_3

    int-to-float v3, v0

    sub-float/2addr v3, p2

    const/high16 v4, 0x43160000

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    int-to-float v3, v0

    sub-float/2addr v3, p2

    add-int/lit16 v4, v0, -0x96

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/16 v3, -0xa

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    shr-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/16 v2, -0xa

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method private getChildPosition(II)I
    .locals 4

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lt v3, p1, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gt v3, p2, :cond_3

    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt v3, p1, :cond_4

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, p2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getChildPosition(Landroid/view/View;)I
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v2

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getDragShowView(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const v5, 0x7f0f0035

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    const v6, 0x7f0f0007

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private hideCursorView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/DragListener;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/shootingmodemanager/DragListener;-><init>(Lcom/sec/android/app/shootingmodemanager/DragSource;Lcom/sec/android/app/shootingmodemanager/DropTarget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    return-void
.end method

.method private insert(II)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v2

    const-string v3, "ShootingModeGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert dropOnPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getEffectInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getAlignedPosition(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v3, p2}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getAlignedPosition(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->insert(II)V

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->reorderDB(II)V

    return-void
.end method

.method private moveBackward(III)V
    .locals 20

    const-string v1, "ShootingModeGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveBackward fromPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  toPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    new-array v15, v10, [Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    sub-int v18, p2, p1

    const/16 v16, 0xc8

    const/16 v1, 0xc8

    div-int v11, v1, v18

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v14, v1, p1

    move/from16 v13, p1

    :goto_0
    move/from16 v0, p2

    if-gt v13, v0, :cond_4

    move/from16 v0, p3

    if-ne v13, v0, :cond_0

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    mul-int v1, v17, v11

    sub-int v8, v16, v1

    mul-int v1, v17, v11

    add-int/lit8 v9, v1, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMoved()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedBackWard()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v7, v1, v2

    sub-int v19, v13, v12

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v15, v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v3, v3, v13

    aput-object v3, v1, v2

    :goto_2
    add-int/lit8 v17, v17, 0x1

    sub-int v1, v13, v12

    aget-object v1, v15, v1

    # invokes: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->startAnimation()V
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->access$1600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMovedForward()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedinPlace()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v19, v13, v12

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v15, v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v3, v3, v13

    aput-object v3, v1, v2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMovedBackword()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedinPlace()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v19, v13, v12

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v13

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v15, v19

    goto/16 :goto_2

    :cond_3
    const-string v1, "ShootingModeGridView"

    const-string v2, "wrong position check....2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aput-object v14, v1, p2

    return-void
.end method

.method private moveForward(III)V
    .locals 16

    const-string v1, "ShootingModeGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveForward  fromPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  toPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    new-array v14, v10, [Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v13, v1, p2

    move/from16 v12, p2

    :goto_0
    move/from16 v0, p1

    if-lt v12, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    move/from16 v0, p3

    if-ne v12, v0, :cond_1

    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0xc8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMoved()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedForward()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v6, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v7, v1, v2

    sub-int v15, v12, v11

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    add-int/lit8 v2, v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v3, v3, v12

    aput-object v3, v1, v2

    :goto_3
    sub-int v1, v12, v11

    aget-object v1, v14, v1

    # invokes: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->startAnimation()V
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->access$1600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMovedBackword()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedinPlace()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v15, v12, v11

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v14, v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    add-int/lit8 v2, v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v3, v3, v12

    aput-object v3, v1, v2

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->isMovedForward()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedinPlace()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v15, v12, v11

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v2, v2, v12

    iget-object v3, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V

    aput-object v1, v14, v15

    goto/16 :goto_3

    :cond_4
    const-string v1, "ShootingModeGridView"

    const-string v2, "wrong position check....1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aput-object v13, v1, p1

    goto/16 :goto_1
.end method

.method private performDragEnd()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->hideCursorView()V

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    :goto_0
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized scroll(FFI)V
    .locals 5

    const/4 v4, -0x1

    monitor-enter p0

    float-to-int v2, p1

    float-to-int v3, p2

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(II)I

    move-result v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->checkScrolling(FF)Z

    move-result v2

    if-nez v2, :cond_0

    if-eq v0, v4, :cond_8

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->initializeViewsForDrag()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    :cond_2
    const/16 v2, 0xa

    invoke-virtual {p0, p3, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    if-ne v0, v4, :cond_6

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    :cond_3
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->showCursorView(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    if-ge v2, v3, :cond_7

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->moveForward(III)V

    :cond_4
    :goto_1
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    if-gez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    :try_start_2
    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->moveBackward(III)V

    goto :goto_1

    :cond_8
    const-string v2, "ANUJ"

    const-string v3, "removed mDraggedScrollTask called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private showCursorView(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getScreenOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v1, v4, v5

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method


# virtual methods
.method public getItemsAdapter()Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    return-object v0
.end method

.method public initializeViewsForDrag()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    new-array v7, v1, [Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    iput-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    new-array v7, v1, [Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    iput-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v4

    move v3, v2

    :goto_0
    if-gt v3, v4, :cond_0

    sub-int v7, v3, v2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int v7, v3, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sub-int v7, v3, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    new-instance v8, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    invoke-direct {v8, p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)V

    aput-object v8, v7, v3

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iput-object v0, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->movedinPlace()V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCurrentRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    iget-object v8, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    if-ne v3, v2, :cond_2

    if-eq v3, v4, :cond_2

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v2, :cond_3

    if-ne v3, v4, :cond_3

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    if-ne v3, v2, :cond_4

    if-ne v3, v4, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mNextRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mRectInfo:[Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$MovedInfo;->mPreviousInitialRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->onDestroy()V

    return-void
.end method

.method public onDragEnded()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScroll:I

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->performDragEnd()V

    iput-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    return-void
.end method

.method public onDragOver(FF)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iput p2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->lastY:F

    :cond_0
    iput p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mX:F

    iput p2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mY:F

    iget-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mScrollAdjustment:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->checkScrolling(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->initializeViewsForDrag()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    :cond_4
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    if-eq v2, v5, :cond_7

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    if-eq v2, v3, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->hideCursorView()V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_5

    const-string v2, "ANUJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDragView visible position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    if-eqz v2, :cond_6

    iput-boolean v6, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    :cond_6
    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->insert(II)V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_7

    const-string v2, "ANUJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDragView invisible position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iput-boolean v6, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->isScrolling:Z

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->showCursorView(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    if-le v2, v3, :cond_9

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->moveForward(III)V

    :goto_1
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget v4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->moveBackward(III)V

    goto :goto_1
.end method

.method public onDragStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    return-void
.end method

.method public onDrop(FF)V
    .locals 5

    const/4 v4, 0x1

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->hideCursorView()V

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDropOnPosition:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setEnableItemsInParentView()V

    iget-boolean v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeLeft:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->refreshView()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAdapter:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only EffectAdapter is supported as adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableItemsInParentView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->setEnableItems()V

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    invoke-direct {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragOverPosition:I

    iget v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragPosition:I

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mPrevDragOverposition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mFirstVisiblePos:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mChildcount:I

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mCursorView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->showCursorView(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mBusy:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    invoke-direct {v2, v5}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$1;)V

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    invoke-direct {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getDragShowView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;->mDragShowView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;->mDragShowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;->mDragShowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mViewHolder:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$ViewHolder;->mDragShowView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mDraggedScrollTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
