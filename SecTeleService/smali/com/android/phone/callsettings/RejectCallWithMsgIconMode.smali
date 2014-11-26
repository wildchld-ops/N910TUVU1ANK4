.class public Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;,
        Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;
    }
.end annotation


# static fields
.field private static PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

.field private mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimationOn:Z

.field private mCheckedCount:I

.field mCheckedStatus:Landroid/util/SparseBooleanArray;

.field private mCurEditPosition:I

.field private mCurrState:I

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragItemView:Landroid/view/ViewGroup;

.field private mDragPosition:I

.field private mFragmentTitleHeight:I

.field mGridView:Landroid/widget/GridView;

.field private mInitLastXY:Z

.field private mIsDragViewDropped:Z

.field private mIsHeightGet:Z

.field private mIsMotionDownTouched:Z

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLandBottomMargin:I

.field private mLandColumnWidth:I

.field private mLandHorizonSpace:I

.field private mLandLeftMargin:I

.field private mLandRightMargin:I

.field private mLandTopMargin:I

.field private mLandVerticalSpace:I

.field private mLastAnimationId:Ljava/lang/String;

.field private mLastX:I

.field private mLastY:I

.field private mLeftLayoutWidth:I

.field private mMidWayStartPosition:I

.field private mOrigStartPosition:I

.field private mPortBottomMargin:I

.field private mPortColumnWidth:I

.field private mPortHorizonSpace:I

.field private mPortLeftMargin:I

.field private mPortRightMargin:I

.field private mPortTopMargin:I

.field private mPortVerticalSpace:I

.field private mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

.field mSelectAllCheckBox:Landroid/view/View;

.field mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSinglePane:Z

.field private mStatusBarHeight:I

.field private mTitleHeight:I

.field mViewRoot:Landroid/view/View;

.field private mWinPosArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mWinPosArrayLand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMgrBitmap:Landroid/graphics/Bitmap;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "remind_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "position"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->createDragView(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;I)I
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)I
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private changeGridViewParams()V
    .locals 7

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", density: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", densityDpi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private changeStatusIcon(Landroid/view/View;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const v0, 0x7f0a01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2
.end method

.method private createDragView(Landroid/graphics/Bitmap;II)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->stopDrag()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDragView() x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private deleteAllRejectMessage()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 4
    .param p1    # I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 4
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    const-string v3, "findItem() ignore add icon!"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;
    .locals 6

    const/4 v5, -0x2

    const/4 v4, -0x1

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v5, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    :goto_1
    return-object v1

    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v4, :cond_2

    :cond_1
    const-string v2, "RejectCallWithMsgIconMode"

    const-string v3, "ERROR: drag view width is wrong!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    goto :goto_0

    :cond_3
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v4, :cond_4

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v0, "RejectCallWithMsgIconMode"

    const-string v2, "ERROR: drag view width is wrong!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    goto :goto_1
.end method

.method private getItemViewLeft(Landroid/view/ViewGroup;Z)I
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v0, v1, v2

    :cond_0
    return v0
.end method

.method private getItemViewTop(Landroid/view/ViewGroup;Z)I
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getTitleHeight()I

    move-result v3

    add-int v1, v2, v3

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarHeight()I

    move-result v0

    neg-int v1, v0

    goto :goto_0
.end method

.method private getLayoutDimens()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortColumnWidth:I

    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortHorizonSpace:I

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortVerticalSpace:I

    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortLeftMargin:I

    const v1, 0x7f0e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortRightMargin:I

    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortTopMargin:I

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mPortBottomMargin:I

    const v1, 0x7f0e0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandColumnWidth:I

    const v1, 0x7f0e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandHorizonSpace:I

    const v1, 0x7f0e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandVerticalSpace:I

    const v1, 0x7f0e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandLeftMargin:I

    const v1, 0x7f0e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandRightMargin:I

    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandTopMargin:I

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLandBottomMargin:I

    return-void
.end method

.method private getPositions()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    invoke-direct {v3, p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port Layout "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    invoke-direct {v3, p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$1;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Land Layout "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string v5, "position asc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    return v0
.end method

.method private getStatusBarTitleHeight()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTitleHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStatusBarHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsHeightGet:Z

    :cond_0
    return-void
.end method

.method private getTitleHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mTitleHeight:I

    return v0
.end method

.method private getUserDataCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private hasUserDataExceptAddIcon()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContents()V
    .locals 12

    const/4 v11, 0x6

    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v9, 0x5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", iconId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", title: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isEdited: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v9, "_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "position"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "iconId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "edit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_4

    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_6

    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_2
    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v11, :cond_3

    iget-object v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "Add \'add\' icon!"

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string v9, "title"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v9, "title"

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_5
    throw v9

    :cond_6
    :try_start_3
    const-string v9, "message"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v9, "message"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private insertRejectMessage(Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private isAddViewTouched(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLandscape()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOnDragView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarHeight()I

    move-result v5

    sub-int v3, v4, v5

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    if-lt v2, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v5, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    if-lt v3, v4, :cond_0

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v5, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "RejectCallWithMsgIconMode"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDrop()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "onDrop()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->stopDrag()V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, "onDrop() ignore add icon!"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP dropPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    const-string v1, "position"

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updatePositionsInDb()V

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-nez v0, :cond_4

    const-string v0, "onDrop() notifyDataSetChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private onMove()V
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    move-result-object v0

    iget v1, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int v5, v1, v4

    iget v1, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int v6, v1, v0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v7

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArrayLand:Ljava/util/ArrayList;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_5

    if-ge v4, v7, :cond_5

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    if-ne v4, v0, :cond_4

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWinPosArray:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v9, v10

    if-lt v5, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    iget v10, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->width:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v9, v10

    if-gt v5, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v9, v10

    if-lt v6, v9, :cond_2

    iget v9, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->height:I

    add-int/2addr v0, v9

    iget v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v0, v9

    if-gt v6, v0, :cond_2

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    if-eq v0, v4, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveCount is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-le v5, v6, :cond_7

    :goto_2
    move v6, v0

    move v0, v4

    :goto_3
    if-lez v0, :cond_0

    add-int/lit8 v7, v0, -0x1

    if-eqz v2, :cond_8

    add-int/lit8 v0, v6, -0x1

    move v5, v0

    :goto_4
    if-ltz v5, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    if-ltz v6, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v4, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->x:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v8, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    iget v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;->y:I

    sub-int v0, v8, v0

    :goto_5
    const-string v8, "RejectCallWithMsgIconMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ====> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_a

    const-string v9, "position"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getMoveAnimation(FF)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastAnimationId:Ljava/lang/String;

    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz v2, :cond_b

    add-int/lit8 v0, v6, -0x1

    :goto_7
    move v6, v0

    move v0, v7

    goto/16 :goto_3

    :cond_7
    move v2, v3

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v5, v0

    goto/16 :goto_4

    :cond_9
    const-string v0, "RejectCallWithMsgIconMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: start pos: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", drag pos: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v4, v3

    goto :goto_5

    :cond_a
    const-string v8, "RejectCallWithMsgIconMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR, item not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v6, 0x1

    goto :goto_7
.end method

.method private refreshScreen()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeGridViewParams()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "refreshScreen() notifyDataSetChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private startNewActivite(II)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, p2, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "ERROR: No Item Found!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "iconId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , iconIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "iconId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "msgBody"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p2, v3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private stopDrag()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    :cond_0
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    return-void
.end method

.method private updateItemsIndex()V
    .locals 8

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    const-string v6, "position"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "position"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessagePosition(IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePositionsInDb()V
    .locals 8

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOrigStartPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDragPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    move v2, v0

    :goto_1
    const/4 v0, 0x0

    move v7, v0

    move v0, v3

    move v3, v7

    :goto_2
    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-lt v3, v1, :cond_3

    if-gt v3, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v0, "_id"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessagePositionById(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    move v1, v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    move v2, v0

    goto :goto_1
.end method

.method private updateRejectMessage(ILandroid/content/ContentValues;)V
    .locals 4
    .param p1    # I
    .param p2    # Landroid/content/ContentValues;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateRejectMessagePosition(IILjava/lang/String;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRejectMessagePosition() newSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateRejectMessagePositionById(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRejectMessagePositionById() selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v1, "RejectCallWithMsgIconMode"

    const-string v2, "ERROR, updateRejectMessagePositionById() selection is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_ICON_MODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateViews(I)V
    .locals 4
    .param p1    # I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09091f

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "dispatchKeyEvent() ignore long press OK key, cancel OnItemLongClickListener!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCheckStatus()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getCurrState()I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoveAnimation(FF)Landroid/view/animation/Animation;
    .locals 9
    .param p1    # F
    .param p2    # F

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "Has not changed message!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "remind_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "icon_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v2, "title"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    const-string v1, "msgBody"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    const-string v2, "reject_message"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "iconId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "icon_id"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v1, "edit_checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getUserDataCount()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    const-string v1, "position"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->insertRejectMessage(Landroid/content/ContentValues;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->initContents()V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "Has not changed message!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v0, "RejectCallWithMsgIconMode"

    const-string v1, "No Item Found !!!!!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "edit"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    or-int/lit8 v0, v0, 0x1

    const-string v2, "title"

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new title:  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", edit: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    move v2, v1

    :cond_7
    const-string v6, "msgBody"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    or-int/lit8 v0, v0, 0x2

    const-string v2, "reject_message"

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new body:  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", edit: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    :goto_2
    const-string v2, "iconId"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "iconId"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "icon_id"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new iconId:  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    const-string v3, "iconId"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    const-string v1, "edit_checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "edit"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    invoke-direct {p0, v0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateRejectMessage(ILandroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfigurationChanged()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-eqz v0, :cond_1

    const-string v0, "Animation is on, wait for animation stop."

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAnimationOn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->refreshScreen()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->refreshScreen()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "onCreate()"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getLayoutDimens()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSinglePane: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v5, 0x7f020006

    const v7, 0x7f0902d4

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v3, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    const-string v4, "order_neg_pos_buttons"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_1
    const/4 v4, 0x3

    const v5, 0x7f0902d1

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v4, 0x4

    const v5, 0x7f0902d1

    invoke-interface {p1, v2, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020003

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v4, 0x5

    invoke-interface {p1, v2, v4, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2, v6, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020004

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04007f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mViewRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->initContents()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const v1, 0x7f0a01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeGridViewParams()V

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;-><init>(Landroid/app/Fragment;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$RefreshDoneListener;

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->setRefreshScreenDoneListener(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick() position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->changeStatusIcon(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startNewActivite(II)V

    goto :goto_0

    :cond_1
    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurEditPosition:I

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->startNewActivite(II)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/high16 v9, 0x3f800000

    const/4 v6, 0x1

    const v4, 0x3f8ccccd

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isAddViewTouched(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getStatusBarTitleHeight()V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSinglePane:Z

    if-eqz v0, :cond_6

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftLayoutWidth is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFragmentTitleHeight is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mMidWayStartPosition:I

    iput p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start position is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mOrigStartPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "position"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsDragViewDropped:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getPositions()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v7

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v8, v9, v4, v9, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowMgrBitmap:Landroid/graphics/Bitmap;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    move v1, v6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x10203a1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    goto/16 :goto_1

    :cond_7
    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    goto :goto_2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1    # Landroid/view/MenuItem;

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    move v5, v6

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v6, :cond_2

    iput v9, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    iput v8, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mSelectAllCheckBox:Landroid/view/View;

    check-cast v5, Landroid/widget/Checkable;

    invoke-interface {v5, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    move v5, v6

    goto :goto_0

    :sswitch_2
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v9, :cond_4

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v10, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    iput v8, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    move v5, v6

    goto :goto_0

    :sswitch_3
    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v5, v9, :cond_9

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-ne v3, v4, :cond_a

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->deleteAllRejectMessage()V

    :cond_7
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v10, :cond_8

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateItemsIndex()V

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->updateViews(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    move v5, v6

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_7

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mItems:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->deleteRejectMessage(I)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->hasUserDataExceptAddIcon()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->hasUserDataExceptAddIcon()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isLandscape()Z

    move-result v0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_5

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_e

    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_a

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_7

    move v1, v2

    :goto_7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_8

    move v1, v2

    :goto_8
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_9

    move v1, v2

    :goto_9
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_7

    :cond_8
    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v3

    goto :goto_9

    :cond_a
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_b

    move v1, v2

    :goto_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCurrState:I

    if-ne v1, v5, :cond_c

    move v1, v2

    :goto_b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mCheckedCount:I

    if-lez v1, :cond_d

    move v1, v2

    :goto_c
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_b
    move v1, v3

    goto :goto_a

    :cond_c
    move v1, v3

    goto :goto_b

    :cond_d
    move v1, v3

    goto :goto_c

    :cond_e
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x3f800000

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    if-eqz v2, :cond_0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->isTouchOnDragView(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    return v1

    :cond_1
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN mLastX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getDragViewPos()Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$WindowPosition;

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    if-nez v1, :cond_2

    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    sub-int v2, v5, v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    sub-int v2, v6, v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onMove()V

    goto :goto_1

    :pswitch_2
    const-string v2, "ACTION_UP"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    if-nez v2, :cond_3

    iput v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    iput v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mInitLastXY:Z

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastX:I

    sub-int v3, v5, v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewLeft(Landroid/view/ViewGroup;Z)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLeftLayoutWidth:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mLastY:I

    sub-int v3, v6, v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragItemView:Landroid/view/ViewGroup;

    iget-boolean v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0, v4, v5}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItemViewTop(Landroid/view/ViewGroup;Z)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mFragmentTitleHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mDragImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->mIsMotionDownTouched:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onDrop()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
