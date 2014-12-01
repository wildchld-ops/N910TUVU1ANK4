.class public Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLListTypeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field public static final ANCHOR_PADDING:I

.field public static final ANCHOR_WIDTH:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field public static final LIST_SCROLL_PADDING:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_SETTING_PADDING:I

.field public static final MENU_SETTING_POS_X:I

.field public static final MENU_SETTING_POS_Y:I

.field public static final MENU_SETTING_THIRD_POS_X:I

.field public static final MENU_SETTING_THIRD_POS_Y:I

.field public static final MENU_SETTING_Y_PADDING:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TITLE_DEVIDER_LINE_OFFSET:I

.field public static final TITLE_DIVIDER_LINE_HEIGHT:I

.field public static final TITLE_DIVIDER_LINE_POS_Y:I

.field public static final TITLE_DIVIDER_LINE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field public static final TITLE_INFO_LEFT_PADDING:I

.field public static final TITLE_INFO_POS_Y:I

.field public static final TITLE_INFO_WIDTH:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F

.field private static mTranslateX:F

.field private static mTranslateY:F


# instance fields
.field private mHasInfoButton:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mInfoButton:Lcom/sec/android/glview/TwGLButton;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mOrientation:I

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSlideDirection:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mZOrder:I

.field private menuPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a00d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    const v0, 0x7f0a00da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    const v0, 0x7f0a00db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    const v0, 0x7f0a00dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    const v0, 0x7f0a00df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    const v0, 0x7f0a00e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    const v0, 0x7f0a00dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    const v0, 0x7f0a00de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    const v0, 0x7f0b004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    const v0, 0x7f09000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    const v0, 0x7f0a00e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    const v0, 0x7f0a00e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_POS_Y:I

    const v0, 0x7f0a00e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    const v0, 0x7f0a00e5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_HEIGHT:I

    const v0, 0x7f0a00e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    const v0, 0x7f0a00e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    const v0, 0x7f0a00e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    const v0, 0x7f0a00ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    const v0, 0x7f0a00eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    const v0, 0x7f0a00ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_PADDING:I

    const v0, 0x7f0a00ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    const v0, 0x7f0a00ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_Y:I

    const v0, 0x7f0a00ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    const v0, 0x7f0a0030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_WIDTH:I

    const v0, 0x7f0a0032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    const v0, 0x7f0a01ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_SCROLL_PADDING:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    iput-boolean p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private init()V
    .locals 11

    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v10, v0, v1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    sub-int v0, v10, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    sub-int v10, v0, v1

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    add-int/2addr v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020108

    const v7, 0x7f020109

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->menuPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_SCROLL_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarPadding(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
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
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBeautyMenu()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBeautyMenu()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbcd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCameraSettingMenuSelected()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->requestLastViewFocus()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public refreshMenuPosition()V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, 0xa

    const/high16 v6, 0x40000000

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_THIRD_POS_X:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_Y_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_1

    :goto_1
    sput v7, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    sput v7, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_SETTING_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_2

    :cond_2
    :goto_2
    const-string v2, "MenuBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translateX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", translateY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateX:F

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTranslateY:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchType:I

    if-eq v2, v3, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v1, v2, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_2

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchType:I

    if-eq v2, v3, :cond_5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    sub-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    goto/16 :goto_2

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchType:I

    if-eq v2, v3, :cond_6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    sub-float v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    add-float v1, v2, v3

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    mul-float v2, v1, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float v1, v2, v3

    goto/16 :goto_2

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchType:I

    if-eq v2, v3, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    int-to-float v3, v3

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto/16 :goto_2

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->ANCHOR_PADDING:I

    int-to-float v3, v3

    sub-float v0, v2, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    mul-float/2addr v3, v6

    add-float v1, v2, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public requestLastViewFocus()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->findLastSelectedView()Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_0
    return-void
.end method
