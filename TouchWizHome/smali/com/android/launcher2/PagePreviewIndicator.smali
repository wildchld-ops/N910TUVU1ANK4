.class public Lcom/android/launcher2/PagePreviewIndicator;
.super Lcom/android/launcher2/PageIndicator;
.source "PagePreviewIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagePreviewIndicator$1;
    }
.end annotation


# static fields
.field static mTestPaint:Landroid/graphics/Paint;


# instance fields
.field private final mDragMode:Lcom/android/launcher2/ScalarAnimator;

.field private mFromRects:[Landroid/graphics/Rect;

.field private mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

.field mNewPage:Lcom/android/launcher2/PageIndicator$Page;

.field protected final mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

.field private mNormalPreviewHeight:I

.field private mNormalPreviewWidth:I

.field private mPgIndContentGap:I

.field private mPgIndContentPadding:I

.field private mPgIndPanel_AdjustTop:I

.field private mPreviewGapWidth:I

.field private mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewRects:[Landroid/graphics/Rect;

.field private mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedPreviewHeight:I

.field private mSelectedPreviewWidth:I

.field private mToRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v3, 0xe6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v2

    add-int/2addr v1, v2

    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    return-void
.end method

.method private getPreviewPageWidth(F)I
    .locals 3

    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method


# virtual methods
.method animateDragMode(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher2/PagePreviewIndicator;->setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v0

    return v0
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 32

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x6

    new-array v15, v2, [Z

    fill-array-data v15, :array_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v27

    const/16 v30, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v2

    sub-int v27, v27, v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v30

    add-int p3, p3, v30

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move/from16 v4, v30

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v4, v2, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    sub-int v3, v4, v30

    aget-object v26, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    sub-int v3, v4, v30

    aget-object v31, v2, v3

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/PagePreviewIndicator;->drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    move-object/from16 v2, p2

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    const/4 v2, 0x1

    :goto_2
    or-int v29, v29, v2

    return v29

    :cond_5
    const/16 v28, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    if-eqz v2, :cond_6

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v26, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v31, v2, v3

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v8, 0x40a00000

    mul-float/2addr v3, v8

    sub-float v13, v2, v3

    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    new-instance v7, Lcom/android/launcher2/PageIndicator$Page;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v14

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v15}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    move/from16 v4, v30

    :goto_3
    move/from16 v0, p3

    if-ge v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v4, v2, :cond_7

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    add-int v3, v4, v28

    sub-int v3, v3, v30

    aget-object v26, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    add-int v3, v4, v28

    sub-int v3, v3, v30

    aget-object v31, v2, v3

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v8, 0x40a00000

    mul-float/2addr v3, v8

    sub-float v13, v2, v3

    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v3, 0x0

    sub-int v2, v4, v30

    move/from16 v0, v27

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    aput-boolean v2, v15, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    sget-object v2, Lcom/android/launcher2/PagePreviewIndicator$1;->$SwitchMap$com$android$launcher2$PageIndicatorManager$DISPLAY_ITEM:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_6
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/launcher2/PagePreviewIndicator$1;->$SwitchMap$com$android$launcher2$PageIndicatorManager$DISPLAY_ITEM:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :cond_8
    :goto_7
    :pswitch_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    sub-int v3, v4, v30

    aget-object v16, v2, v3

    add-int v19, p4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    sub-int v3, v4, v30

    aget-object v2, v2, v3

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v23

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v22, v13

    move-object/from16 v24, v15

    invoke-virtual/range {v16 .. v24}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v29, 0x1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/CellLayout;

    if-eqz v25, :cond_b

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_6

    :pswitch_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_6

    :pswitch_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/CellLayout;

    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_7

    :cond_c
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_7

    :pswitch_5
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_7

    :pswitch_6
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto/16 :goto_7

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z
    .locals 16

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v15, 0x0

    :cond_0
    :goto_0
    return v15

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v5, v8

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v2, 0x437f0000

    mul-float v2, v2, p4

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    const v3, 0x3f333333

    sub-float v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v2, 0x3e99999a

    div-float/2addr v6, v2

    const/4 v9, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v2, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getDeltas(Ljava/util/List;)V

    :goto_2
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    check-cast v2, Lcom/android/launcher2/CellPositionerWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/CellPositionerWorkspace;->getDragDelta()Lcom/android/launcher2/PositionDelta;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PositionDelta;

    iget-object v2, v11, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v3, v9, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v2, v3, :cond_2

    invoke-interface {v7, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    if-nez v14, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v2, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    invoke-interface {v7, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PagePreviewIndicator;->drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->isPageAddedForDrag(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v12

    goto :goto_2

    :cond_9
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    if-eqz v14, :cond_5

    const/4 v2, 0x0

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v14}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v7, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Lcom/android/launcher2/Launcher;",
            "Lcom/android/launcher2/PositionDelta;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v6, v20, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v12, v20, v21

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v13, v20, v21

    int-to-float v0, v12

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v12, v0

    int-to-float v0, v13

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v13, v0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v20

    div-int v15, v12, v20

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v20

    div-int v16, v13, v20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PositionDelta;

    if-nez p7, :cond_1

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v18

    mul-int v11, v11, v16

    mul-int v18, v18, v15

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v20

    mul-int v20, v20, v15

    sub-int v8, v20, v7

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    mul-int v20, v20, v16

    sub-int v19, v20, v7

    if-eqz p7, :cond_2

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_4

    :cond_3
    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/PagePreviewIndicator;->getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/high16 v20, 0x437f0000

    mul-float v20, v20, p4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int v20, v11, v19

    add-int v21, v18, v8

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDragModeFactor()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getItemSpan(Lcom/android/launcher2/BaseItem;[I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v1, p2, v3

    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v1, p2, v2

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_1

    aput v2, p2, v3

    aput v2, p2, v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encounted item in paged indicator preview that we werent expecting!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public getPreviewPageHeight(F)I
    .locals 3

    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    const v0, 0x7f020091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f0c0217

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    const v0, 0x7f0c0218

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    const v0, 0x7f0c021b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    const v0, 0x7f0c021c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    const v0, 0x7f0c0219

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    const v0, 0x7f0c0211

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    const v0, 0x7f0c0214

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    const v0, 0x7f0c021a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    return-void
.end method

.method setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V
    .locals 15

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    mul-int/2addr v12, v5

    iget v13, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v5, -0x1

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    mul-int/2addr v13, v14

    add-int v10, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sub-int v9, v12, v13

    const/4 v4, 0x0

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    sub-int v2, v12, v9

    const/4 v11, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v3, v12, :cond_2

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    neg-int v13, v2

    add-int/2addr v13, v4

    iput v13, v12, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ge v3, v12, :cond_1

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v12, v12, v3

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    :cond_0
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v6

    invoke-direct {p0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v8

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    div-int/lit8 v13, v6, 0x2

    neg-int v13, v13

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    div-int/lit8 v13, v6, 0x2

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    move v11, v8

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    iget-object v13, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v12, v11

    add-int/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne v3, v12, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int v4, v9, v12

    const/4 v11, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v3, v12, :cond_5

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    iput v4, v12, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ge v3, v12, :cond_4

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v12, v12, v3

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    :cond_3
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v6

    invoke-direct {p0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v8

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    iget v13, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    div-int/lit8 v14, v6, 0x2

    sub-int/2addr v13, v14

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    iget v13, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    iget v14, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    move v11, v8

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    add-int v13, v4, v11

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v12, v11

    add-int/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne v3, v12, :cond_3

    iget-object v12, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    goto :goto_3

    :cond_5
    return-void
.end method

.method public updatePositions()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    iput v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
