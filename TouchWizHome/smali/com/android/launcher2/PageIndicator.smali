.class public Lcom/android/launcher2/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicator$Page;
    }
.end annotation


# static fields
.field public static final ADDPAGE_INDI:I = 0x5

.field protected static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field public static final CAMERA_INDI:I = 0x1

.field protected static final DRAW_STATE_LARGE:I = 0x3

.field protected static final DRAW_STATE_MIDDLE:I = 0x2

.field protected static final DRAW_STATE_NONE:I = 0x0

.field protected static final DRAW_STATE_SMALL:I = 0x1

.field public static final FESTIVAL_INDI:I = 0x3

.field public static final HEADLINES_INDI:I = 0x4

.field public static final HOME_INDI:I = 0x0

.field public static final INVALID_AREA:I = -0x1

.field public static final LEFT_MORE_AREA:I = -0x2

.field private static final PANEL_TEXT_PAINT:Landroid/graphics/Paint;

.field public static final RIGHT_MORE_AREA:I = -0x3

.field public static final SECRET_INDI:I = 0x2

.field private static final rate:[F


# instance fields
.field protected mAddPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentPage:I

.field protected mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field protected mDisplayPageCount:I

.field private mEnableTouch:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mFastScrollNumBgTop:I

.field private mFastScrollPaddingTop:I

.field private mFastScrollPaddingTopDelta:I

.field private mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTextIndex:I

.field private mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGap:I

.field private mGrowBy:F

.field protected mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mHotseatBarSize:I

.field mIsAnimationPrevented:Z

.field private mIsDraw:Z

.field private mIsFastScrolling:Z

.field private mIsHiding:Z

.field private mIsVisibleLeftMore:Z

.field private mIsVisibleRightMore:Z

.field protected mIsWorkspaceItem:Z

.field protected mLeft:I

.field private final mMaxVisiblePages:I

.field private mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreGap:I

.field protected mPage:[Lcom/android/launcher2/PageIndicator$Page;

.field protected mPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPageNumberBg:Landroid/graphics/drawable/Drawable;

.field private mPageindicatorPanelTopAdjust:I

.field private mPanelSize:I

.field private mScrollBarThumbWidth:I

.field private mScrollBarWidth:I

.field private mScrollPosition:F

.field protected mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mShowHeadLinesPage:Z

.field protected mTop:I

.field private mTotalPageCount:I

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v1, 0xc8

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    const/16 v0, -0x46

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    sget-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 7

    const/high16 v6, 0x40000000

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    int-to-float v4, v0

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {p2, v2, v3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-nez v1, :cond_2

    :cond_0
    const/16 v19, 0x0

    :cond_1
    :goto_0
    return v19

    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int v17, v1, v16

    move/from16 v0, v17

    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v17

    int-to-float v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    sub-int v1, v16, v14

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iput v1, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v15

    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_5

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, v15

    float-to-int v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v1, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_a

    const/4 v1, 0x0

    const/high16 v2, 0x41200000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v17

    neg-int v1, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_b

    const/4 v1, 0x0

    const/high16 v2, -0x3ee00000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    add-int v13, v1, v2

    int-to-float v1, v12

    int-to-float v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    neg-int v1, v12

    int-to-float v1, v1

    neg-int v2, v13

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v18

    move-wide/from16 v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/PageIndicator;->drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z

    move-result v19

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v6, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_8

    const/high16 v1, 0x3f800000

    cmpg-float v1, v15, v1

    if-gez v1, :cond_8

    const/16 v19, 0x1

    :cond_8
    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    const/high16 v2, -0x40800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 16

    const/4 v13, 0x0

    const/4 v2, 0x6

    new-array v10, v2, [Z

    fill-array-data v10, :array_0

    const/4 v15, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v15

    add-int p3, p3, v15

    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v2

    add-int p3, p3, v2

    :cond_0
    move v11, v15

    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getSecretPageCnt()I

    move-result v14

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    move/from16 v0, p3

    if-eq v2, v0, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-lt v14, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-le v14, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-le v11, v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-ne v14, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-ge v11, v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v11

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v11

    add-int v5, p4, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const/high16 v8, 0x3f800000

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v13, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, p5

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-ge v14, v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_6

    if-ge v11, v14, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v2, v2, 0x2

    if-lt v14, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_3

    if-gt v11, v14, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    sub-int/2addr v2, v14

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-ge v2, v3, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/PagedViewGridLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto/16 :goto_1

    :cond_a
    return v13

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method enableLeftMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    return-void
.end method

.method enableRightMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    return-void
.end method

.method public enterFastScroll()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    return-void
.end method

.method public exitFastScroll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    return-void
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method getPageTouchArea(II)I
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, -0x1

    :goto_0
    return v10

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    if-eqz v10, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    add-int/2addr v10, v0

    add-int v7, v10, v2

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    iget v6, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    div-int/lit8 v8, v1, 0x2

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/lit8 v11, v11, -0xa

    iput v11, v10, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0xa

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int v11, v5, v11

    sub-int/2addr v11, v6

    sub-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput v5, v10, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, -0x2

    goto :goto_0

    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    add-int/lit8 v12, v12, -0x2

    mul-int/2addr v12, v1

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x3

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_6

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    add-int v11, v9, v1

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    sub-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v10, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, -0x1

    goto/16 :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOrientationChange(Landroid/content/res/Resources;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method public hide(Z)V
    .locals 4

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->endAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return-void
.end method

.method public isFastScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setAnimationPrevented(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    return-void
.end method

.method public setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setCurrentPage(IZLcom/android/launcher2/PagedView;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ne v3, v1, :cond_4

    const/4 v2, 0x0

    :goto_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_2

    instance-of v3, p3, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v4, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_3

    instance-of v3, p3, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v4, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v3, v4, :cond_3

    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicator;->setFirstTextNum(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    add-int v3, v0, v2

    if-ne v3, p1, :cond_8

    if-eqz p2, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ge v3, v4, :cond_6

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    sub-int v2, v3, v4

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_9
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    goto/16 :goto_0
.end method

.method public setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    return-void
.end method

.method public setFestivalPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setFirstTextNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    return-void
.end method

.method public setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setGap(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher2/PageIndicator;->setGap(II)V

    return-void
.end method

.method setGap(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    return-void
.end method

.method public setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setOffset(II)V
    .locals 2

    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    :cond_0
    return-void
.end method

.method setPageCount(I)V
    .locals 3

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-le p1, v1, :cond_0

    iget p1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    :cond_0
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-eq v1, p1, :cond_1

    new-array v1, p1, [Lcom/android/launcher2/PageIndicator$Page;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setScrollPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    return-void
.end method

.method public setSecretPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setShowHeadLinePage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    return-void
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f020054

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020104

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const v1, 0x7f0c020b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x7f0c020c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    const v0, 0x7f0c020d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c0269

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    :goto_0
    const v0, 0x7f0c020e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    const v0, 0x7f0c0096

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    const v0, 0x7f0c0097

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0c01c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    goto :goto_1
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    return-void
.end method

.method public show(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method public updatePositions()V
    .locals 11

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v7, 0x2

    if-gt v1, v7, :cond_0

    add-int/lit8 v2, v2, 0xa

    :cond_0
    const/4 v0, 0x0

    mul-int v7, v2, v1

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/lit8 v9, v1, -0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v0, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    sub-int v6, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v6, v4

    invoke-virtual {v7, v0, v6, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v7, v3, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    sub-int v7, v5, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    return-void
.end method
