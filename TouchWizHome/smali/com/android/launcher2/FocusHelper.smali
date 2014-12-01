.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field public static final APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final CREATE_FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final CREATE_FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_SOFTKEY_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_SOFTKEY_PHONE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static sHomeView:Lcom/android/launcher2/HomeView;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    new-instance v0, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_PHONE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$10;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$10;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$11;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$11;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$12;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$12;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$13;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$13;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$14;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$14;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$15;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$15;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$16;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$16;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$17;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$17;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$18;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$18;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$19;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$19;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$20;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$20;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$21;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$21;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher2/FocusHelper$22;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$22;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleCreateFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Lcom/android/launcher2/HomeView;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleCreateFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceGoogleSearchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHomeSoftkeyPhoneIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHomeSoftkeyAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, p1, p2

    :goto_0
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewParent;

    :cond_1
    check-cast v0, Landroid/widget/TabHost;

    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$23;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$23;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21

    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int v8, v10, p3

    if-ltz v8, :cond_7

    if-ge v8, v2, :cond_7

    const v3, 0x7f7fffff

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-gez p3, :cond_1

    const/4 v5, -0x1

    :goto_0
    if-eq v6, v5, :cond_6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-gez p3, :cond_3

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_2

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v15, :cond_0

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000000000000000L

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    cmpg-float v15, v12, v3

    if-gez v15, :cond_0

    move v4, v6

    move v3, v12

    :cond_0
    if-gt v6, v5, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_6
    const/4 v15, -0x1

    if-le v4, v15, :cond_7

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    :goto_2
    return-object v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090038
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;
    .locals 3

    div-int v1, p1, p2

    rem-int v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    return-object v0
.end method

.method private static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/FocusOnlyTabWidget;

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    const v21, 0x1020011

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object/from16 v21, v17

    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v12

    move-object/from16 v21, v17

    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v2

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_1

    const/4 v8, 0x1

    :goto_0
    const/16 v20, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    return v20

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_5

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v15

    invoke-static {v11, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v21

    const-string v22, "WIDGETS"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v10

    move-object/from16 v21, v14

    check-cast v21, Lcom/android/launcher2/CellLayoutChildren;

    add-int/lit8 v22, v9, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v15

    invoke-static {v13, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_3
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_1
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_a
    const/16 v20, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_4
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    if-nez v2, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_3
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/16 v20, 0x1

    goto/16 :goto_1

    :sswitch_4
    if-eqz v8, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_f
    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x3d -> :sswitch_0
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleCreateFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v9, 0x7f090028

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f090037

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f090038

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f090039

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f09003a

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f09003b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    return v8

    :cond_0
    move v5, v10

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_1

    sget-object v9, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v1, v9, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    aget-object v6, v9, v11

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_1
    if-eqz v5, :cond_3

    sget-object v9, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v1, v9, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aget-object v7, v9, v11

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleCreateFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v8, 0x7f090023

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v8, 0x7f090029

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v8, 0x7f090026

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    :goto_0
    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return v6

    :cond_0
    move v3, v7

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v5, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v6

    const v9, 0x1020011

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v9, 0x1020013

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v6

    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v5

    move-object v9, v6

    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_1

    :goto_0
    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return v8

    :cond_1
    move v4, v10

    goto :goto_0

    :pswitch_0
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_6

    if-ne p0, v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    if-ne p0, v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    if-ne p0, v0, :cond_2

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_6
    if-eq p0, v6, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v4, :cond_7

    if-ne p0, v0, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v8, 0x1

    goto :goto_1

    :pswitch_2
    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v10}, Landroid/view/View;->playSoundEffect(I)V

    const/4 v8, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    const v11, 0x7f0900cf

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v7, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const v11, 0x7f090028

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v9, :cond_0

    move v4, v9

    :goto_0
    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v8

    :cond_0
    move v4, v10

    goto :goto_0

    :sswitch_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, -0x1

    invoke-static {v5, v1, v11, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v6, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_2
    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 15

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    const v13, 0x7f0900cf

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    const v13, 0x7f090034

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, v2, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    iget-object v5, v2, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/4 v12, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v7, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v8, v1, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_1
    if-eqz v7, :cond_4

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v4, v13, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    :goto_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    aget-object v10, v13, v14

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :pswitch_2
    if-eqz v7, :cond_6

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v4, v13, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v13, v14

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    iget-object v10, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v3, v1, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v12, 0x7f090034

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v12, 0x7f090028

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v11, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v11

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_1

    const/4 v12, -0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v5, :cond_4

    const/4 v12, 0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    :goto_3
    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_2
    if-eqz v5, :cond_6

    const/4 v12, -0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_4
    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_3
    if-eqz v5, :cond_9

    const/4 v12, 0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_1

    :sswitch_4
    if-eqz v5, :cond_a

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_1

    :sswitch_5
    if-eqz v5, :cond_b

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v6, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    move-object v9, p0

    check-cast v9, Lcom/android/launcher2/FolderEditText;

    const v11, 0x7f0900cf

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    const v11, 0x7f0900cd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v11, 0x7f090028

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    return v10

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_0

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v5, :cond_0

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    if-ne v11, v7, :cond_0

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    if-ne v11, v7, :cond_0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-static {v6, v1, v11, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v8

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_2
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_3
    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-static {v6, v1, v11, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_3
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_4
    if-eqz v5, :cond_7

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_4
        0x6f -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    const v11, 0x7f0900cf

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v9, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v4, v2, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v11, 0x7f0900cd

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v10

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_1

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v7

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    if-ne v11, v7, :cond_1

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    if-ne v11, v7, :cond_1

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-static {v6, v1, v11, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v5, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f090079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v8

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return v11

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    if-eqz v3, :cond_0

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v8

    :cond_2
    if-lez v8, :cond_5

    add-int/lit8 v10, v8, -0x1

    :goto_2
    if-eq v10, v8, :cond_4

    sget-boolean v14, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v14, :cond_3

    invoke-virtual {v13, v10}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_3
    invoke-static {v13, v10}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v2, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_6

    add-int/lit8 v10, v7, -0x1

    goto :goto_2

    :cond_6
    move v10, v8

    goto :goto_2

    :pswitch_1
    if-eqz v3, :cond_0

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_7

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v8

    :cond_7
    add-int/lit8 v14, v7, -0x1

    if-ge v8, v14, :cond_a

    add-int/lit8 v6, v8, 0x1

    :goto_3
    if-eq v6, v8, :cond_9

    sget-boolean v14, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v14, :cond_8

    invoke-virtual {v13, v6}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_8
    invoke-static {v13, v6}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_a
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_b

    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    move v6, v8

    goto :goto_3

    :pswitch_2
    const/4 v11, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeScreenOptionMenu;

    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-nez v9, :cond_0

    const v9, 0x7f09005b

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v7, :cond_1

    move v2, v7

    :goto_0
    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    return v6

    :cond_1
    move v2, v8

    goto :goto_0

    :sswitch_0
    if-eqz v2, :cond_3

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :cond_2
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v4, v7, :cond_4

    const/4 v4, -0x1

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_3
    if-eqz v2, :cond_7

    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_b

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWallpaper()V

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v5, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    if-ne v4, v7, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWidgets()V

    goto :goto_2

    :cond_9
    if-ne v4, v11, :cond_a

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    goto :goto_2

    :cond_a
    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionThemes()V

    goto :goto_2

    :cond_b
    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWallpaper()V

    goto :goto_2

    :cond_c
    if-ne v4, v7, :cond_d

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWidgets()V

    goto :goto_2

    :cond_d
    if-ne v4, v11, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleHomeSoftkeyAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 16

    if-nez p0, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f090079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_4

    const/4 v2, 0x1

    :goto_1
    const/4 v12, 0x0

    sget-object v14, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v15, 0x7f090081

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_3

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v5, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_2
    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_6

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_5
    add-int/lit8 v14, v8, -0x1

    if-ge v9, v14, :cond_7

    add-int/lit8 v7, v9, 0x1

    :goto_3
    if-eq v7, v9, :cond_6

    invoke-virtual {v13, v7}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_8

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    move v7, v9

    goto :goto_3

    :pswitch_3
    if-eqz v2, :cond_9

    sget-boolean v14, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v14, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_b

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_b
    if-lez v9, :cond_d

    add-int/lit8 v11, v9, -0x1

    :goto_5
    if-eq v11, v9, :cond_c

    invoke-virtual {v13, v11}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    :cond_c
    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_d
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_e

    add-int/lit8 v11, v8, -0x1

    goto :goto_5

    :cond_e
    move v11, v9

    goto :goto_5

    :cond_f
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static handleHomeSoftkeyPhoneIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 16

    if-nez p0, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f090079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_3

    const/4 v2, 0x1

    :goto_1
    const/4 v12, 0x0

    sget-object v14, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v15, 0x7f090082

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_2

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v5, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_4

    sget-boolean v14, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v14, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    :goto_3
    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_6
    add-int/lit8 v14, v8, -0x1

    if-ge v9, v14, :cond_7

    add-int/lit8 v7, v9, 0x1

    :goto_4
    if-eq v7, v9, :cond_4

    invoke-virtual {v13, v7}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :cond_7
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_8

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    move v7, v9

    goto :goto_4

    :pswitch_3
    if-eqz v2, :cond_b

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    :cond_9
    if-lez v9, :cond_c

    add-int/lit8 v11, v9, -0x1

    :goto_5
    if-eq v11, v9, :cond_a

    invoke-virtual {v13, v11}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_c
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_d

    add-int/lit8 v11, v8, -0x1

    goto :goto_5

    :cond_d
    move v11, v9

    goto :goto_5

    :cond_e
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    const v28, 0x7f090079

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v22

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v21

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_1

    const/4 v12, 0x1

    :goto_0
    const/16 v25, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v27, v25

    :goto_2
    return v27

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v12, :cond_3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v22

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    :cond_2
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_9

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/16 v25, 0x1

    goto :goto_1

    :cond_4
    const/16 v27, 0x1

    goto :goto_2

    :cond_5
    if-lez v22, :cond_7

    add-int/lit8 v24, v22, -0x1

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_6

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_6
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_8

    add-int/lit8 v24, v21, -0x1

    goto :goto_4

    :cond_8
    move/from16 v24, v22

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_a
    if-lez v22, :cond_c

    add-int/lit8 v24, v22, -0x1

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_b

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_b
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_3

    :cond_c
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_d

    add-int/lit8 v24, v21, -0x1

    goto :goto_5

    :cond_d
    move/from16 v24, v22

    goto :goto_5

    :sswitch_1
    if-eqz v12, :cond_10

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_e

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v22

    :cond_e
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_14

    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    add-int/lit8 v20, v22, 0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_f

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_f
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_10
    :goto_7
    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_11
    const/16 v27, 0x1

    goto/16 :goto_2

    :cond_12
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_13

    const/16 v20, 0x0

    goto :goto_6

    :cond_13
    move/from16 v20, v22

    goto :goto_6

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :cond_15
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    add-int/lit8 v20, v22, 0x1

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_16

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_16
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :cond_17
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_18

    const/16 v20, 0x0

    goto :goto_8

    :cond_18
    move/from16 v20, v22

    goto :goto_8

    :sswitch_2
    if-eqz v12, :cond_1a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_19

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v22

    :cond_19
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1a
    :goto_9
    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    const/16 v27, -0x1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v14, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_9

    :cond_1d
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->requestFocus()Z

    goto :goto_9

    :sswitch_3
    if-eqz v12, :cond_1f

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1e

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v22

    :cond_1e
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1f
    const/16 v25, 0x1

    goto/16 :goto_1

    :sswitch_4
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AllappsIcon;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const-string v27, "addapps"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_20

    const-string v27, "add_widgets"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_20

    const-string v27, "create_folder"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    :cond_20
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->launchAllAppsIcon()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v7

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v19

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v23, v0

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v24, v0

    mul-int v25, v24, v7

    add-int v11, v25, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v2, v0, :cond_1

    const/4 v10, 0x1

    :goto_0
    const/16 v16, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    return v22

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v10, :cond_2

    if-lez v11, :cond_3

    add-int/lit8 v25, v11, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    const/16 v22, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_2

    if-lez v19, :cond_4

    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_2

    add-int/lit8 v25, v19, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :cond_4
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_2

    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_2

    add-int/lit8 v25, v18, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :sswitch_1
    if-eqz v10, :cond_5

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_6

    add-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_3
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_6
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_5

    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_5

    add-int/lit8 v25, v19, 0x1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_5

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_5

    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_2
    if-eqz v10, :cond_8

    if-lez v24, :cond_9

    add-int/lit8 v25, v24, -0x1

    mul-int v25, v25, v7

    add-int v17, v25, v23

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    :goto_4
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_8

    add-int/lit8 v25, v5, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_3
    if-eqz v10, :cond_a

    add-int/lit8 v25, v8, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    add-int/lit8 v25, v12, -0x1

    add-int/lit8 v26, v24, 0x1

    mul-int v26, v26, v7

    add-int v26, v26, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    invoke-virtual {v15}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_b
    iget v0, v6, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    iget v0, v6, Landroid/content/res/Configuration;->navigation:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    :cond_c
    move-object/from16 v0, v20

    invoke-static {v0, v11, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-nez v10, :cond_e

    if-eqz v4, :cond_e

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_e
    if-eqz v10, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :sswitch_5
    if-eqz v10, :cond_f

    if-lez v19, :cond_10

    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_f

    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    :goto_6
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_10
    if-eqz v11, :cond_f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :sswitch_6
    if-eqz v10, :cond_11

    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    if-eqz v16, :cond_11

    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    move-object/from16 v25, v16

    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_11
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    if-eq v11, v13, :cond_11

    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :sswitch_7
    if-eqz v10, :cond_13

    if-eqz v11, :cond_13

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_13
    const/16 v22, 0x1

    goto/16 :goto_1

    :sswitch_8
    if-eqz v10, :cond_14

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    if-eq v11, v13, :cond_14

    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_14
    const/16 v22, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/PagedViewGridLayout;

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/MenuWidgets;

    invoke-static {v10}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v16

    const v23, 0x1020013

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TabWidget;

    move-object/from16 v23, v16

    check-cast v23, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v20

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v14

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    rem-int v21, v20, v3

    div-int v22, v20, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_2

    const/4 v7, 0x1

    :goto_1
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v7, :cond_1

    if-lez v22, :cond_9

    add-int/lit8 v23, v22, -0x1

    mul-int v23, v23, v3

    add-int v12, v23, v21

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_2
    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :sswitch_1
    if-eqz v7, :cond_3

    if-lez v20, :cond_4

    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_4
    sget-boolean v23, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v23, :cond_3

    if-lez v14, :cond_5

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_3

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_5
    sget-boolean v23, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v23, :cond_3

    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_3

    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_2
    if-eqz v7, :cond_6

    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_7
    sget-boolean v23, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v23, :cond_6

    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    if-ge v14, v0, :cond_8

    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_6

    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_8
    sget-boolean v23, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v23, :cond_6

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_6

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :cond_9
    const v23, 0x7f0900b7

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_a

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_2

    :sswitch_3
    if-eqz v7, :cond_c

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    add-int/lit8 v23, v19, -0x1

    add-int/lit8 v24, v22, 0x1

    mul-int v24, v24, v3

    add-int v24, v24, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v23

    if-nez v23, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_c
    const/16 v18, 0x1

    goto/16 :goto_0

    :sswitch_4
    if-eqz v7, :cond_d

    move-object v6, v10

    check-cast v6, Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_d
    const/16 v18, 0x1

    goto/16 :goto_0

    :sswitch_5
    if-eqz v7, :cond_f

    if-lez v14, :cond_10

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_e

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :cond_e
    :goto_5
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :sswitch_6
    if-eqz v7, :cond_12

    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    if-ge v14, v0, :cond_13

    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    if-eqz v11, :cond_11

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :cond_11
    :goto_6
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_12
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    :sswitch_7
    if-eqz v7, :cond_14

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_14
    const/16 v18, 0x1

    goto/16 :goto_0

    :sswitch_8
    if-eqz v7, :cond_15

    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    :cond_15
    const/16 v18, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 21

    if-nez p0, :cond_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v19, 0x7f090079

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v19, 0x7f090085

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/QuickLaunch;

    if-nez v16, :cond_1

    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v16

    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v14

    const/4 v4, 0x0

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v12

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v6, 0x1

    :goto_2
    const/16 v17, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v6, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v12

    :cond_2
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_b

    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :pswitch_1
    if-eqz v6, :cond_7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v12

    :cond_6
    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    add-int/lit8 v10, v12, 0x1

    :goto_4
    if-eq v10, v12, :cond_7

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    :cond_7
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_9

    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    move v10, v12

    goto :goto_4

    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 23

    if-nez p0, :cond_0

    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v21, 0x7f090079

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const v21, 0x7f090085

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/QuickLaunch;

    const v21, 0x7f090084

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/QuickLaunch;

    if-nez v18, :cond_1

    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v18

    :cond_1
    if-nez v17, :cond_2

    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v17

    :cond_2
    const/16 v16, 0x0

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v16

    :cond_3
    const/4 v3, 0x0

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_8

    const/4 v7, 0x1

    :goto_2
    const/16 v19, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v7, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v13

    :cond_5
    if-lez v13, :cond_9

    add-int/lit8 v15, v13, -0x1

    :goto_3
    if-eq v15, v13, :cond_6

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v14, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_4
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    sget-boolean v21, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v21, :cond_a

    add-int/lit8 v15, v12, -0x1

    goto :goto_3

    :cond_a
    move v15, v13

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :pswitch_1
    if-eqz v7, :cond_d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v13

    :cond_c
    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    const/16 v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_e

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    :cond_d
    :goto_5
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    const v9, 0x1020011

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v4

    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_1
    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_1

    :sswitch_1
    if-eqz v2, :cond_2

    if-lez v6, :cond_2

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    if-eqz v2, :cond_3

    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :sswitch_3
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v7, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f090099

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    return v7

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_0
    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_2

    const v8, 0x7f0900a0

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    const v8, 0x7f090076

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v8, 0x7f0900a4

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const v8, 0x7f0900a1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :pswitch_1
    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_6

    const v8, 0x7f0900a0

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_4
    const v8, 0x7f090076

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v8, 0x7f0900a4

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->playSoundEffect(I)V

    :cond_5
    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_6
    const v8, 0x7f0900a1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleWidgetFolderPagedViewWidgetKeyEvent(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v2

    div-int/lit8 v14, v10, 0x2

    rem-int/lit8 v15, v10, 0x2

    add-int v3, v14, v15

    rem-int v12, v11, v2

    div-int v13, v11, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    const/4 v6, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v9, 0x0

    sparse-switch p2, :sswitch_data_0

    :goto_1
    return v9

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v6, :cond_1

    if-lez v11, :cond_1

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_1
    if-eqz v6, :cond_2

    add-int/lit8 v14, v10, -0x1

    if-ge v11, v14, :cond_2

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    if-eqz v6, :cond_3

    if-lez v13, :cond_3

    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v14, v2

    add-int v7, v14, v12

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_3
    if-eqz v6, :cond_4

    add-int/lit8 v14, v3, -0x1

    if-ge v13, v14, :cond_4

    add-int/lit8 v14, v10, -0x1

    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v15, v2

    add-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_4
    if-eqz v6, :cond_5

    if-eqz p0, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_5
    if-eqz v6, :cond_6

    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    :sswitch_6
    if-eqz v6, :cond_7

    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_1

    :sswitch_7
    if-eqz v6, :cond_8

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    const/4 v9, 0x1

    goto/16 :goto_1

    :sswitch_8
    if-eqz v6, :cond_9

    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleWorkspaceGoogleSearchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    return v16

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v19, 0x7f090079

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    const v19, 0x7f090088

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v19, 0x7f090089

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v19, 0x7f09008a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v19, 0x7f09007b

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v5, 0x1

    :goto_1
    const/16 v16, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    :cond_4
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    if-eqz v5, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :sswitch_2
    if-eqz v5, :cond_7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    :cond_6
    if-lez v14, :cond_8

    add-int/lit8 v19, v14, -0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v17

    :goto_2
    move/from16 v0, v17

    if-eq v0, v14, :cond_7

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    :cond_7
    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_9

    move/from16 v17, v13

    goto :goto_2

    :cond_9
    move/from16 v17, v14

    goto :goto_2

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    :sswitch_3
    if-eqz v5, :cond_b

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v9, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_4
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v11, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    :sswitch_4
    if-eqz v5, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v14

    :cond_d
    if-ge v14, v13, :cond_f

    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    :goto_5
    move/from16 v0, v17

    if-eq v0, v14, :cond_e

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    :cond_e
    :goto_6
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_f
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_10

    const/16 v17, 0x0

    goto :goto_5

    :cond_10
    move/from16 v17, v14

    goto :goto_5

    :cond_11
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    :sswitch_5
    const/16 v16, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_5
        0x15 -> :sswitch_1
        0x16 -> :sswitch_3
        0x3d -> :sswitch_3
        0x5c -> :sswitch_2
        0x5d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutChildren;

    move/from16 v26, v0

    if-nez v26, :cond_2

    :cond_0
    const/16 v24, 0x1

    :cond_1
    :goto_0
    return v24

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_3

    const v26, 0x7f090087

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    if-eqz v13, :cond_c

    const v26, 0x7f090089

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    :cond_3
    :goto_1
    const v26, 0x7f09007b

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Hotseat;

    const v26, 0x7f090085

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/QuickLaunch;

    const v26, 0x7f090084

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/QuickLaunch;

    if-nez v23, :cond_4

    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v23

    :cond_4
    if-nez v22, :cond_5

    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v22

    :cond_5
    const/16 v21, 0x0

    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v21

    :cond_6
    const/4 v4, 0x0

    if-eqz v23, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    :cond_7
    :goto_2
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v27, 0x7f090081

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v27, 0x7f090082

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v8, 0x0

    :cond_8
    if-nez v9, :cond_9

    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v9

    :cond_9
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_e

    const/4 v6, 0x1

    :goto_3
    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    if-eqz v6, :cond_b

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_a

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v18

    :cond_a
    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_23

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_b
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x0

    goto :goto_3

    :sswitch_1
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/PagedView;->setAllowLongPress(Z)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz v6, :cond_10

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v18

    :cond_f
    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_11

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_10
    :goto_5
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_11
    if-eqz v23, :cond_12

    if-eqz v4, :cond_12

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    :cond_12
    if-lez v18, :cond_13

    add-int/lit8 v20, v18, -0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    const/16 v27, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_15

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_13
    sget-boolean v26, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v26, :cond_14

    add-int/lit8 v20, v17, -0x1

    goto :goto_6

    :cond_14
    move/from16 v20, v18

    goto :goto_6

    :cond_15
    sget-boolean v26, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v26, :cond_16

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_16
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_17

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :cond_17
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    :sswitch_3
    if-eqz v6, :cond_19

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_18

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v18

    :cond_18
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1a

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_19
    :goto_7
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_1a
    if-eqz v23, :cond_1b

    if-eqz v21, :cond_1b

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :cond_1b
    add-int/lit8 v26, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    add-int/lit8 v16, v18, 0x1

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v19

    const/16 v26, -0x1

    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1e

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :cond_1c
    sget-boolean v26, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v26, :cond_1d

    const/16 v16, 0x0

    goto :goto_8

    :cond_1d
    move/from16 v16, v18

    goto :goto_8

    :cond_1e
    sget-boolean v26, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v26, :cond_1f

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :cond_1f
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_20

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    :cond_20
    if-eqz v9, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_22

    iget-object v0, v9, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    iget-object v0, v9, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_21

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    :cond_21
    :goto_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_7

    :cond_22
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    goto :goto_9

    :cond_23
    if-eqz v9, :cond_b

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v26

    if-nez v26, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_4

    :sswitch_4
    if-eqz v6, :cond_25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_24

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v18

    :cond_24
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_26

    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_25
    :goto_a
    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_26
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_27

    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_27
    if-eqz v9, :cond_28

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-nez v26, :cond_28

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :cond_28
    if-eqz v14, :cond_29

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :cond_29
    if-eqz v22, :cond_2a

    if-eqz v21, :cond_2a

    const/16 v26, 0x1

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :cond_2a
    sget-boolean v26, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v26, :cond_2b

    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :cond_2b
    sget-boolean v26, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v26, :cond_25

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method static is12KEYNaviKeyFocus(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setup(Lcom/android/launcher2/HomeView;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    return-void
.end method
