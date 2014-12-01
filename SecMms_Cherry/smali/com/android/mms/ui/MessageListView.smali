.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;,
        Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;,
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;,
        Lcom/android/mms/ui/MessageListView$TransDelAnim;,
        Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
    }
.end annotation


# static fields
.field public static final MSG_CHANGE_THREAD_VIEW_FONTSIZE:I = 0x1

.field static final TAG:Ljava/lang/String; = "Mms/MessageListView"


# instance fields
.field private bLongPress:Z

.field private isPinchZoom:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

.field private mCurFontlevel:I

.field public mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field private mFitstDistinct:D

.field private mFontInterval:I

.field private mHandler:Landroid/os/Handler;

.field protected mIsAvailableUp:Z

.field protected mIsDeleteMsgAnimating:Z

.field private mKeyIsLongPressed:Z

.field protected mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

.field private mPreFontlevel:I

.field private mResizeFontFactor:I

.field public mShowVerificationLog:Z

.field private mStart_x:F

.field private mStart_y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    const/high16 v0, 0x425c0000

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    const/high16 v0, 0x425c0000

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    iput-object v4, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    return-void
.end method

.method private KeyPressOnSearchTitle(Lcom/android/mms/ui/MessageListItem;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p1, :cond_0

    const v2, 0x7f0b0342

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020367

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v1, :cond_0

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageListItem;->mItemSearchThreadTitle:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/mms/ui/MessageListAdapter;->mShowingThreads:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/ui/MessageListAdapter;->collapse(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v0, v4}, Lcom/android/mms/ui/MessageListAdapter;->expand(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageListItem;->mItemSearchBubbleTitle:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/mms/ui/MessageListAdapter;->mShowingBubbles:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0, v3}, Lcom/android/mms/ui/MessageListAdapter;->collapse(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0, v3}, Lcom/android/mms/ui/MessageListAdapter;->expand(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private showContextPopup()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v5, v7

    mul-int v7, v4, v4

    mul-int v8, v5, v5

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    const/high16 v8, 0x42200000

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    :cond_1
    iget-wide v7, p0, Lcom/android/mms/ui/MessageListView;->mFitstDistinct:D

    sub-double v7, v0, v7

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mResizeFontFactor:I

    int-to-double v9, v9

    div-double v2, v7, v9

    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-ltz v7, :cond_e

    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_9

    const-wide/high16 v7, 0x4018000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_3

    const/4 v7, 0x6

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    :goto_2
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_3
    const-wide/high16 v7, 0x4014000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_4

    const/4 v7, 0x5

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_4
    const-wide/high16 v7, 0x4010000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_5

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_5
    const-wide/high16 v7, 0x4008000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_6

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_6
    const-wide/high16 v7, 0x4000000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_7

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_7
    const-wide/high16 v7, 0x3ff0000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_8

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_9
    const-wide/high16 v7, 0x4010000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_a

    const/4 v7, 0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_a
    const-wide/high16 v7, 0x4008000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_b

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_b
    const-wide/high16 v7, 0x4000000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_c

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_c
    const-wide/high16 v7, 0x3ff0000000000000L

    cmpl-double v7, v2, v7

    if-lez v7, :cond_d

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_2

    :cond_d
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto/16 :goto_2

    :cond_e
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v7

    if-eqz v7, :cond_15

    const-wide/high16 v7, -0x3fe8000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_f

    const/4 v7, -0x6

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    :goto_4
    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mFontInterval:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    :cond_f
    const-wide/high16 v7, -0x3fec000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_10

    const/4 v7, -0x5

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_10
    const-wide/high16 v7, -0x3ff0000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_11

    const/4 v7, -0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_11
    const-wide/high16 v7, -0x3ff8000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_12

    const/4 v7, -0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_12
    const-wide/high16 v7, -0x4000000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_13

    const/4 v7, -0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_13
    const-wide/high16 v7, -0x4010000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_14

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_14
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_15
    const-wide/high16 v7, -0x3ff0000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_16

    const/4 v7, -0x4

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_16
    const-wide/high16 v7, -0x3ff8000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_17

    const/4 v7, -0x3

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_17
    const-wide/high16 v7, -0x4000000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_18

    const/4 v7, -0x2

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_18
    const-wide/high16 v7, -0x4010000000000000L

    cmpg-double v7, v2, v7

    if-gez v7, :cond_19

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :cond_19
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    goto :goto_4

    :pswitch_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto/16 :goto_0

    :pswitch_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    goto/16 :goto_0

    :pswitch_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    iget v7, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mStart_x:F

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/mms/ui/MessageListView;->mStart_y:F

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/mms/ui/MessageListView;->mFitstDistinct:D

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mCurFontlevel:I

    iput v7, p0, Lcom/android/mms/ui/MessageListView;->mPreFontlevel:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected initDelAnimListView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    new-instance v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mShowVerificationLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mShowVerificationLog:Z

    const-string v0, "VerificationLog"

    const-string v1, "Executed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runDeleteMsgAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListView;->showContextPopup()V

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportQwertKeypad()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-gez v1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_3

    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->performScheduledIconClick()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->hasFailedIconFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->performDelayedIconClick()V

    goto :goto_1

    :cond_6
    iget-boolean v3, v2, Lcom/android/mms/ui/MessageListItem;->mItemSearchMode:Z

    if-eqz v3, :cond_9

    iget-boolean v3, v2, Lcom/android/mms/ui/MessageListItem;->mItemSearchThreadTitle:Z

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lcom/android/mms/ui/MessageListItem;->mItemSearchBubbleTitle:Z

    if-eqz v3, :cond_8

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListView;->KeyPressOnSearchTitle(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onSearchListItemClick()V

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClickByKeyPress()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->userRelease()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMsgThreadViewHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->isPinchZoom:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public startDeleteMsgAnimation([I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->readyDeleteMsgAnimation([I)V

    :cond_0
    return-void
.end method
