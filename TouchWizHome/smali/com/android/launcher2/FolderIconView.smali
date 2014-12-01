.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# static fields
.field public static final FOLDER_ICON_CNT:I = 0x6

.field public static final HOVER_FOLDER_ICON_CNT:I = 0x7

.field private static final HOVER_REMAIN:J = 0x7d0L

.field private static final HOVER_START_DURATION:J = 0x12cL

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;


# instance fields
.field private Hover_Refresh_cnt:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field final mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mDimAmount:F

.field private mDraggedIconId:J

.field private mDraggingOver:Z

.field mDrawPlate:Z

.field private final mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderHoveringStartTime:J

.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field private mFromThisFolder:Z

.field public mHasBounceItem:Z

.field final mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

.field mIgnoreSetAlphaOnDragExit:Z

.field private mLastAttachedFolder:Lcom/android/launcher2/Folder;

.field private mOnEnterDelayed:Ljava/lang/Runnable;

.field protected mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

.field protected mPlateBitmap:Landroid/graphics/Bitmap;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    iput v4, p0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    const v0, 0x3f0ccccd

    iput v0, p0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0x1f4

    const/high16 v3, 0x3f800000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    new-instance v0, Lcom/android/launcher2/FolderIconView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconView$2;-><init>(Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mHasBounceItem:Z

    new-instance v0, Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    return-void
.end method

.method private drawPlate(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/FolderItem;

    invoke-interface {v12}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-interface {v12}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v9, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    const/high16 v20, 0x40000000

    div-float v6, v9, v20

    const/high16 v20, 0x40000000

    div-float v7, v8, v20

    sget-boolean v20, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v20, :cond_0

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/high16 v20, 0x44ff0000

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    float-to-int v0, v9

    move/from16 v22, v0

    float-to-int v0, v8

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move v5, v10

    const/high16 v20, 0x437f0000

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setTextAlpha(I)V

    const/high16 v20, 0x3f800000

    const v21, 0x3dcccccd

    mul-float v21, v21, v13

    add-float v18, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x0

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getFolderPlateOffsetY()F

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    const/16 v20, 0x0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_2

    mul-float v20, v5, v13

    const/high16 v21, 0x437f0000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    const/high16 v20, 0x3f800000

    cmpg-float v20, v13, v20

    if-gez v20, :cond_3

    const/high16 v20, 0x3f800000

    sub-float v20, v20, v13

    mul-float v20, v20, v5

    const/high16 v21, 0x437f0000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0
.end method

.method private draw_(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    add-float v4, v5, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private droppedInOurFolder(Lcom/android/launcher2/DragState;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static mix(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private onDragEnter()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isTransitioningRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0
.end method

.method private resetPlateIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0
.end method

.method private resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    :cond_0
    return-void
.end method

.method private setFolderItem(Lcom/android/launcher2/FolderItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    :cond_1
    return-void
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0f0104

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 7

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/FolderIconView;->setFolderItem(Lcom/android/launcher2/FolderItem;)V

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isRequiredToRedraw()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    :cond_3
    iget v4, p1, Lcom/android/launcher2/BaseItem;->mColor:I

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    new-instance v4, Lcom/android/launcher2/FolderIconView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/FolderIconView$1;-><init>(Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    return-void
.end method

.method public cancelFolderAnims()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->cleanupFolderAnims()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public cleanupFolderAnims()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    goto :goto_0
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    const v1, 0x7f03001f

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawShadow(Landroid/graphics/Canvas;)V

    instance-of v1, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->draw_(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public drawPlateWithFolderScale(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v12, 0x40000000

    const/high16 v11, 0x3f800000

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v9

    invoke-static {v9}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    cmpg-float v9, v2, v11

    if-gez v9, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float v8, v9, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v9}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const v9, 0x3dcccccd

    mul-float/2addr v9, v1

    add-float v7, v11, v9

    sub-float v9, v2, v11

    mul-float/2addr v9, v8

    mul-float v3, v9, v7

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v9, v12

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v9, v12

    invoke-virtual {p1, v2, v2, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v1, v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x437f0000

    mul-float/2addr v4, v5

    float-to-int v0, v4

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public fromThisFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    return v0
.end method

.method protected generateShadowIfNeeded()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen;->startInBackground(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconWithPlate()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFolderItem()Lcom/android/launcher2/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentDragging()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    instance-of v1, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v1, :cond_4

    :cond_2
    const/4 v8, 0x1

    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v8, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v1, v12, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_6

    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v1, v10, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v1, :cond_6

    check-cast v10, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v10, p1, p0}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_8

    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :pswitch_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_a
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    goto :goto_6

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->droppedInOurFolder(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    if-eqz v1, :cond_11

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_12
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x565f

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "finger_air_view"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v10, :cond_0

    if-nez v9, :cond_0

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v19, 0x7f0a0000

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_3

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-wide/16 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v4

    const/4 v11, 0x0

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->getFolderHoveringEndTime()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    move-wide/from16 v19, v0

    sub-long v16, v5, v19

    sub-long v13, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v19

    if-nez v19, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-nez v19, :cond_9

    const-wide/16 v19, 0x12c

    cmp-long v19, v16, v19

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->isHoverAnimating()Z

    move-result v19

    if-nez v19, :cond_9

    if-lez v4, :cond_8

    const/16 v19, 0xa

    const/16 v20, -0x1

    :try_start_0
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderAnimator;->animateHoverExpand()V

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_9
    div-int/lit8 v11, v4, 0x7

    rem-int/lit8 v19, v4, 0x7

    if-nez v19, :cond_a

    if-lez v11, :cond_a

    add-int/lit8 v11, v11, -0x1

    :cond_a
    const/16 v19, 0x7

    move/from16 v0, v19

    if-le v4, v0, :cond_5

    const-wide/16 v19, 0x7d0

    cmp-long v19, v13, v19

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v11, v0, :cond_5

    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V

    goto/16 :goto_1

    :pswitch_3
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_1
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    goto/16 :goto_1

    :catch_0
    move-exception v19

    goto/16 :goto_2

    :catch_1
    move-exception v19

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onItemsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public redrawFolderIcon()Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2, v3}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    :cond_2
    sget-object v2, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;Z)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initBadgeValue()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public restoreStateForOpenVisualize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    return-void
.end method

.method public setBounceItem(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher2/FolderIconView;->mHasBounceItem:Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDraggedIconId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    :cond_0
    return-void
.end method

.method protected shouldHaveIconShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    return-void
.end method

.method public showBadge()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    const/4 v2, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    const/16 v17, 0x0

    invoke-virtual {v13}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v14

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_2

    invoke-virtual {v13, v11}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget v0, v3, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v19

    if-eqz v19, :cond_4

    sget-boolean v19, Lcom/android/launcher2/FolderIconView;->sIsDragState:Z

    if-nez v19, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v7

    if-eqz v2, :cond_5

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/BaseItem;

    const/4 v6, 0x0

    iget-object v15, v13, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f0065

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_7
    :goto_3
    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f00b7

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-static {v13}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v19

    if-eqz v19, :cond_9

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f0101

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/launcher2/HomeFolderItem;

    const/4 v12, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    :cond_b
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v0, v10, :cond_d

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 v12, 0x0

    const/4 v4, 0x0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f005a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v0, v9, :cond_10

    sub-int v19, v16, v9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "fr"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_12
    iget v0, v13, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f00b6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    :cond_13
    move-object v6, v15

    goto/16 :goto_4
.end method
