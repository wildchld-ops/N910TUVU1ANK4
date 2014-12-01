.class public Lcom/android/launcher2/HomeScreenOptionMenu;
.super Landroid/widget/LinearLayout;
.source "HomeScreenOptionMenu.java"


# static fields
.field static final BOTH_WALLPAPER:I = 0x2

.field public static final HOME_OPTION_SETTINGS:I = 0x2

.field public static final HOME_OPTION_THEMES:I = 0x3

.field public static final HOME_OPTION_WALLPAPERS:I = 0x0

.field public static final HOME_OPTION_WIDGETS:I = 0x1

.field static final HOME_SCREEN_WALLPAPER:I = 0x0

.field static final LOCK_SCREEN_WALLPAPER:I = 0x1

.field static isWidgetTab:Z

.field static mIsActive:Z


# instance fields
.field c:Landroid/content/Context;

.field intent_wallpaper:Landroid/content/Intent;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOnClickListenerSettings:Landroid/view/View$OnClickListener;

.field private mOnClickListenerTheme:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWidget:Landroid/view/View$OnClickListener;

.field private mSetting:Landroid/widget/TextView;

.field private mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

.field private mTheme:Landroid/widget/TextView;

.field private mWallpaper:Landroid/widget/TextView;

.field private mWidget:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    return-void
.end method

.method private setup()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionSettings;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenOptionSettings;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    return-void
.end method


# virtual methods
.method public getHomeScreenOptionSettings()Lcom/android/launcher2/HomeScreenOptionSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    return-object v0
.end method

.method public getWidgetButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return v0
.end method

.method public isSettingVisible()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method public launchOptionSettings()V
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.launcher2.intent.action.HomeScreenOptionSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public launchOptionThemes()V
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.THEME_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public launchOptionWallpaper()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    goto :goto_0
.end method

.method public launchOptionWidgets()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickView;->isSecretQuickViewMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuWidgets$DisplayType;->SECRET:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c01b2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v8, 0x7f0c01b1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v6, v9, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const v8, 0x7f0c01ae

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f0c01af

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f0c0076

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v9, v3, v1, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setThemeOptionLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v9, v3, v1, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    sget-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setThemeOptionLayout()V

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMakeActive(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method

.method protected setThemeOptionLayout()V
    .locals 11

    const/4 v10, 0x1

    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0c0072

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v9, 0x7f0c01b1

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v9, 0x7f0c0070

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const v9, 0x7f0c01ae

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x7f0c0074

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    div-float v7, v9, v1

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method
