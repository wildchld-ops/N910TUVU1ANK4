.class public Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLProgressingPopup.java"


# static fields
.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_POS_Y:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field private static final POPUP_WIDTH:I

.field private static final PROGRESSING_BAR_HEIGHT:I

.field private static final PROGRESSING_BAR_TOP_PADDING:I

.field private static final PROGRESSING_ITEM_LEFT_PADDING:I

.field private static final PROGRESSING_TITLE_COLOR:I

.field private static final PROGRESSING_TITLE_HEIGHT:I

.field private static final PROGRESSING_TITLE_SIZE:F

.field private static final PROGRESSING_TITLE_TOP_PADDING:I


# instance fields
.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mSideMenuHidden:Z

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a02dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    const v0, 0x7f0a02dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    const v0, 0x7f0a02de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    const v0, 0x7f0a02df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    const v0, 0x7f0a02e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    const v0, 0x7f0a02e1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    const v0, 0x7f0a02e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    const v0, 0x7f0a02e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    const v0, 0x7f0a02e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    const v0, 0x7f0b0059

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    const v0, 0x7f090015

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    const v0, 0x7f0a02e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    const v0, 0x7f0a02e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->init()V

    return-void
.end method

.method private init()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020244

    const v7, 0x7f020245

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    return-void
.end method


# virtual methods
.method public getPostCaptureLayoutVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public onBack()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method
