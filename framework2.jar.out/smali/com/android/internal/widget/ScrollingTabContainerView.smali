.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_DURATION:I = 0xc8

.field private static final STYLE_ATTR:[I

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static mtwEnablePreDraw:Z

.field private static mtwEnableStartAnimation:Z

.field private static final mtwIsCapuccino:Z

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field protected mContentMaxHeight:I

.field private mIsActionBarNonExtended:Z

.field private mIsExtendActionBar:Z

.field private mIsExtendedTab:Z

.field private mIsInTouchMode:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mIsShowCocktailBar:Z

.field mMaxTabWidth:I

.field private mOldContentHeight:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field protected mStatusHeight:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field public final mTabTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mtwColor:I

.field private mtwInterpolator:Landroid/view/animation/Interpolator;

.field private mtwOutSize:Landroid/graphics/Point;

.field private mtwShadowDx:F

.field private mtwShadowDy:F

.field private mtwShadowRadius:F

.field private mtwTabLayoutMoveAniEnabled:Z

.field private mtwTypefacezSelected:Landroid/graphics/Typeface;

.field private mtwTypefacezUnseleted:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    sput-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    sput-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->STYLE_ATTR:[I

    const-string v0, "capuccino"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    return-void

    :array_0
    .array-data 4
        0x1010161
        0x1010162
        0x1010163
        0x1010164
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsShowCocktailBar:Z

    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwInterpolator:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$3;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsShowCocktailBar:Z

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101046a

    invoke-virtual {v6, v7, v3, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    :cond_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010466

    invoke-virtual {v6, v7, v4, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_1

    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    :cond_1
    invoke-virtual {p0, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "sec-roboto-light"

    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102f5

    invoke-virtual {v6, v7, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    sget-object v7, Lcom/android/internal/widget/ScrollingTabContainerView;->STYLE_ATTR:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwColor:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowDx:F

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowDy:F

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowRadius:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/ScrollingTabContainerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$2;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7

    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTabHasFocus()Z
    .locals 4

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    iget-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v3, v2, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarContainer;->setScrollingTabExtended(Z)V

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    iput-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarContainer;->setScrollingTabExtended(Z)V

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    iput-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 28

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    const/high16 v24, 0x40000000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v7, v0, :cond_e

    const/high16 v24, 0x40000000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/high16 v24, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    :cond_0
    const/16 v24, 0x2

    move/from16 v0, v24

    if-le v7, v0, :cond_d

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ecccccd

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    :cond_1
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const/16 v16, 0x0

    move-object/from16 v13, v21

    check-cast v13, Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContainer;->twGetTabsOnTop()Z

    move-result v11

    :cond_2
    :goto_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_3

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarView;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v14, v24

    check-cast v14, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v14}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_11

    const/4 v11, 0x0

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/Activity;

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    :cond_4
    :goto_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsShowCocktailBar:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getRotation()I

    move-result v20

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    move/from16 v24, v0

    if-nez v24, :cond_13

    if-nez v16, :cond_13

    if-eqz v11, :cond_13

    if-eqz v17, :cond_6

    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v24

    if-nez v24, :cond_13

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v24

    const/high16 v25, 0x40000000

    and-int v24, v24, v25

    const/high16 v25, 0x40000000

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsShowCocktailBar:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_13

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mOldContentHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    const/4 v5, 0x1

    :goto_6
    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v24

    if-eqz v24, :cond_15

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_15

    const/4 v10, 0x1

    :cond_9
    if-eqz v5, :cond_17

    if-nez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x10500d0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-super/range {p0 .. p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    if-eqz v12, :cond_b

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_b
    return-void

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_1

    :cond_e
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarView;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    const/16 v16, 0x1

    check-cast v21, Lcom/android/internal/widget/ActionBarView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v13, v21

    check-cast v13, Lcom/android/internal/widget/ActionBarContainer;

    goto/16 :goto_2

    :cond_10
    if-ne v9, v15, :cond_11

    const/4 v11, 0x1

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mOldContentHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendedTab:Z

    goto/16 :goto_5

    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto/16 :goto_8

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto/16 :goto_8
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    sput-boolean v5, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v9, :cond_7

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v4, p1, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v10, :cond_3

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v10

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    if-eqz v10, :cond_3

    if-nez v5, :cond_1

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-nez v5, :cond_3

    if-ne v8, v4, :cond_2

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_2

    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_2

    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    check-cast v3, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    if-ne p1, v4, :cond_3

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_3

    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_3

    move-object v10, v0

    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    check-cast v3, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move v6, v11

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v10, :cond_8

    if-ltz p1, :cond_8

    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    :cond_8
    return-void
.end method

.method public twGetMoveLength()I
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v2

    return v1
.end method

.method public twSetSCTabMoveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    return-void
.end method

.method public updateTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method
