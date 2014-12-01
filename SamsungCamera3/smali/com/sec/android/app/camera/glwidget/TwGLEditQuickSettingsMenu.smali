.class public Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEditQuickSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox$OnShortcutBoxCancelListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

.field private static final HELPTEXT_TIMEOUT:I = 0x1388

.field private static final HELP_TEXT_HEIGHT:I

.field private static final HELP_TEXT_HEIGHT_VERITCAL:I

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_COLOR:I

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:I

.field private static final HELP_TEXT_WIDTH_VERITCAL:I

.field private static final LIST_HEIGHT:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_POS_X:I

.field private static final LIST_POS_Y:I

.field private static final LIST_WIDTH:I

.field private static final MENU_BACKGROUND_POS_X:I

.field private static final MENU_BACKGROUND_POS_Y:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_HORIZONTAL_LINE_HEIGHT:I

.field private static final MENU_HORIZONTAL_LINE_OFFSET:I

.field private static final MENU_HORIZONTAL_LINE_POS_X:I

.field private static final MENU_HORIZONTAL_LINE_POS_Y:I

.field private static final MENU_NUM_OF_HORIZONTAL_LINE:I

.field private static final MENU_NUM_OF_VERTICAL_LINE:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_VERTICAL_LINE_OFFSET:I

.field private static final MENU_VERTICAL_LINE_POS_X:I

.field private static final MENU_VERTICAL_LINE_POS_Y:I

.field private static final MENU_VERTICAL_LINE_WIDTH:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TOPBAR_BOUNDARY_LINE:I

.field private static final TOPBAR_HEIGHT:I

.field private static final TOPBAR_ITEM_HEIGHT:I

.field private static final TOPBAR_ITEM_MARGIN:I

.field private static final TOPBAR_ITEM_WIDTH:I

.field private static final TOPBAR_POS_X:I

.field private static final TOPBAR_POS_Y:I

.field private static final TOPBAR_WIDTH:I


# instance fields
.field private mEditSettingListBackground:Lcom/sec/android/glview/TwGLNinePatch;

.field private mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

.field private mFirstItemBG:Lcom/sec/android/glview/TwGLImage;

.field private mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mFrontResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

.field private mFrontViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIsHelpTextHidedByTimeOut:Z

.field private mIsLocatedInTopBar:Z

.field private mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSecondItemBG:Lcom/sec/android/glview/TwGLImage;

.field private mSideBarItemCount:I

.field private mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

.field private mViewList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0a0006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->SCREEN_WIDTH:I

    const v1, 0x7f0a0007

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f0a0412

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    const v1, 0x7f0a0413

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_Y:I

    const v1, 0x7f0a0416

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_BACKGROUND_POS_X:I

    const v1, 0x7f0a0417

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    const v1, 0x7f0a0414

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_WIDTH:I

    const v1, 0x7f0a0415

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HEIGHT:I

    const v1, 0x7f0a0433

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_BOUNDARY_LINE:I

    const v1, 0x7f0a042d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_X:I

    const v1, 0x7f0a042e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_Y:I

    const v1, 0x7f0a042f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_WIDTH:I

    const v1, 0x7f0a0430

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_HEIGHT:I

    const v1, 0x7f0a0438

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_WIDTH:I

    const v1, 0x7f0a0439

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_HEIGHT:I

    const v1, 0x7f0a043b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_MARGIN:I

    const v1, 0x7f0a0418

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_WIDTH:I

    const v1, 0x7f0a0419

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_HEIGHT:I

    const v1, 0x7f0a041a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_X:I

    const v1, 0x7f0a041b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    const v1, 0x7f0a041c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_WIDTH:I

    const v1, 0x7f0a041d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_HEIGHT:I

    const v1, 0x7f0a041e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_POS_X:I

    const v1, 0x7f0a041f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_POS_Y:I

    const v1, 0x7f0a0420

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    const v1, 0x7f0a0421

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_HEIGHT:I

    const v1, 0x7f0b0013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    const v1, 0x7f0a0422

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_POS_X:I

    const v1, 0x7f0a0423

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_POS_Y:I

    const v1, 0x7f0a0424

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_OFFSET:I

    const v1, 0x7f0a0425

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_WIDTH:I

    const v1, 0x7f0b0012

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    const v1, 0x7f0a0426

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH:I

    const v1, 0x7f0a042a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH_VERITCAL:I

    const v1, 0x7f0a0427

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT:I

    const v1, 0x7f0a042b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT_VERITCAL:I

    const v1, 0x7f0a042c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIDE_MARGIN:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_X:F

    const v1, 0x7f0a0429

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_Y:F

    const v1, 0x7f0a01b3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIZE:F

    const v1, 0x7f0b0027

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_STROKE_WIDTH:I

    const/high16 v1, 0x7f090000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_STROKE_COLOR:I

    const v1, 0x7f0b0029

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mViewList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontViewList:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSideBarItemCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsHelpTextHidedByTimeOut:Z

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHideDescription:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->initBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->initViewList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->initRearEditMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->initFrontEditMenu()V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v6

    const/16 v7, 0x42

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v6

    const/16 v7, 0x75

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const v0, 0x7f0c021a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT_VERITCAL:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH_VERITCAL:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    const-string v0, "GD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[270] x,y - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    const/16 v0, 0x258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsHelpTextHidedByTimeOut:Z

    return p1
.end method

.method private initBackground()V
    .locals 11

    const v7, 0x7f02027e

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    int-to-float v3, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_HEIGHT:I

    int-to-float v5, v2

    const v6, 0x7f0202e6

    move v2, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingListBackground:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingListBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_HEIGHT:I

    int-to-float v5, v3

    move v3, v9

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstItemBG:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_ITEM_HEIGHT:I

    int-to-float v5, v3

    move v3, v9

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSecondItemBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstItemBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSecondItemBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v8, 0x0

    :goto_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_HEIGHT:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x7f0203bc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_OFFSET:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_WIDTH:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0203bd

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initFrontEditMenu()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    int-to-float v3, v3

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_WIDTH:I

    int-to-float v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    if-ge v6, v1, :cond_5

    const/4 v8, 0x0

    :goto_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    if-ge v8, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v9, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontViewList:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    :goto_2
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_OFFSET:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_WIDTH:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v8

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_HEIGHT:I

    add-int/2addr v3, v5

    mul-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    :cond_0
    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;->setOnShortcutBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox$OnShortcutBoxCancelListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v9, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_3

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    goto :goto_2

    :cond_3
    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing item in mViewList, CommandId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private initRearEditMenu()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_POS_Y:I

    int-to-float v3, v3

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_WIDTH:I

    int-to-float v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_HORIZONTAL_LINE:I

    if-ge v6, v1, :cond_5

    const/4 v8, 0x0

    :goto_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_NUM_OF_VERTICAL_LINE:I

    if-ge v8, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v9, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    invoke-virtual {v4, v12}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    :goto_2
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_OFFSET:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_VERTICAL_LINE_WIDTH:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v8

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_OFFSET:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_HORIZONTAL_LINE_HEIGHT:I

    add-int/2addr v3, v5

    mul-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    :cond_0
    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;->setOnShortcutBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox$OnShortcutBoxCancelListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v9, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_3

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    goto :goto_2

    :cond_3
    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing item in mViewList, CommandId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MenuBase"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private initViewList()V
    .locals 12

    const/16 v6, 0x8

    const/4 v11, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v7

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v9, v1, :cond_0

    invoke-virtual {v7, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, v2, v3, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v9, v1, :cond_1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, v2, v3, v10, v11}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v3, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontViewList:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addTopBarItem(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->addEmptyItem(FF)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mViewList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mViewList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontViewList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontViewList:Ljava/util/HashMap;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getNumberOfEditableTopBarItem()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->getNumberOfEditableTopBarItem()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    goto :goto_0
.end method

.method public hideHelpText()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsHelpTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public indexOfTopBarItem(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    goto :goto_0
.end method

.method public onCancelDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    return-void
.end method

.method public onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->removeTopBarEmptyItem()V

    return-void
.end method

.method public onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->TOPBAR_BOUNDARY_LINE:I

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSideBarItemCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->addTopBarItem(FF)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSideBarItemCount:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->removeTopBarEmptyItem()V

    goto :goto_0
.end method

.method public onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsLocatedInTopBar:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getNumberOfEditableTopBarItem()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSideBarItemCount:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mSideBarItemCount:I

    if-nez v0, :cond_1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_BACKGROUND_POS_X:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->MENU_BACKGROUND_POS_Y:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->addTopBarItem(FF)V

    :cond_1
    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->setAlignForOrientation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method public onShortcutBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->removeSideBarEmptyItem()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mEditSettingMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->refreshTopBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->showHelpText()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mRearEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontEditingMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshTopBar()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mFrontTopBar:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeTopBarEmptyItem()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->removeEmptyItem(Z)V

    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    return-void
.end method

.method public setAlignForOrientation()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_WIDTH_VERITCAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->HELP_TEXT_HEIGHT_VERITCAL:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showHelpText()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mIsHelpTextHidedByTimeOut:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
