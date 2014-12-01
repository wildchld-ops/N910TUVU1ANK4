.class public Lcom/android/launcher2/MenuView;
.super Landroid/widget/TabHost;
.source "MenuView.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuView$2;,
        Lcom/android/launcher2/MenuView$SavedState;,
        Lcom/android/launcher2/MenuView$ViewType;,
        Lcom/android/launcher2/MenuView$NeedsTabHost;,
        Lcom/android/launcher2/MenuView$PackageNotifications;,
        Lcom/android/launcher2/MenuView$AppModelNotifications;
    }
.end annotation


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field public static final MENU_VIEW_TYPE_KEY:Ljava/lang/String; = "MenuView.ViewType"

.field private static final TAG:Ljava/lang/String; = "MenuView"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"

.field public static mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

.field public static oldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static onShowAllAppsClicked:Z


# instance fields
.field private mAppsTabTextView:Landroid/widget/TextView;

.field mDownButton:Landroid/view/View;

.field private mDownloadedButton:Landroid/widget/TextView;

.field private mDownloadedButtonDrawablePadding:I

.field private mDownloadedContainer:Landroid/view/View;

.field private mDownloadedText:Ljava/lang/CharSequence;

.field private mMaxItemsPerScreen:I

.field public mMenuAppLoaded:Z

.field mMenuContainer:Landroid/view/View;

.field mMenuOrMarket:Landroid/view/View;

.field mMenuViewDarken:Landroid/view/View;

.field private mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field private mTabDivider:Landroid/view/View;

.field private mTabGapView:Landroid/view/View;

.field private mTabManager:Lcom/android/launcher2/tabs/TabManager;

.field private mTabTitle:Landroid/widget/TextView;

.field private mTabsView:Landroid/view/View;

.field private mTalkbackMenuTitle:Ljava/lang/String;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;

.field private mWidgetsTabTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MenuView.ViewType"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0e002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0e002b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    check-cast p1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager;

    invoke-direct {v4}, Lcom/android/launcher2/MenuTitleBarManager;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    const v5, 0x1020011

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/launcher2/MenuView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuView$1;-><init>(Lcom/android/launcher2/MenuView;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setAppNormalizer()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/MenuView$2;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/MenuAppModel;->setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupTabTitleBar()V
    .locals 11

    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0017

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const v6, 0x7f0a0016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const v6, 0x7f0c01f9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0c000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_6

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, 0x40000000

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_8

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_6
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_7
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_8
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private showNoDownloadedAppsToastMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appBadgeUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public appModelLoaded()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelLoaded()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    return-void
.end method

.method public appModelUpdated()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bindMenuSecretMode()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->refreshQuickViewMenuGrid(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->hasSecretWidget()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->updateCanUninstallApps()V

    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    return-void
.end method

.method public chooseViewType()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuView$ViewType;Landroid/app/FragmentManager;)V

    return-void
.end method

.method public closeFolders()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10b0001

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10b0000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;)V

    return-void
.end method

.method public enterAllStates()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    :cond_1
    return-void
.end method

.method public exitAllStates()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    :cond_1
    return-void
.end method

.method public getCurrentFragment()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDownButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    return-object v0
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuOrMarketButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    return-object v0
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const v1, 0x7f0900ba

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewMainMenu;

    iput-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    return-object v1
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public getTabManager()Lcom/android/launcher2/tabs/TabManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    return-object v0
.end method

.method public getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0
.end method

.method public hasSecretWidget()V
    .locals 8

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v6, :cond_0

    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v6, :cond_0

    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuAppModel;->setHasPreSecretWidget(Z)V

    :cond_1
    return-void
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabAppsTab()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMenuExiting()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onBackPressed()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    const v10, 0x7f0c008f

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v10, 0x7f0c01f7

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v10, 0x7f0c01f8

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v10, 0x7f0c01fa

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v10, 0x7f0c01fb

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v10, 0x7f0c0090

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v10, 0x7f0900aa

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const v10, 0x7f0900b2

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    const v10, 0x7f0900b3

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    const v10, 0x7f0900b5

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1

    const v10, 0x7f0900b4

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    const v10, 0x7f0900b7

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_3

    const v10, 0x7f0900b6

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    const v10, 0x7f0900b9

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_5

    const v10, 0x7f0900b8

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    const v10, 0x1020011

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public onExitAllApps()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->closeViewTypeDialog()V

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onExitAllApps()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onExitAllApps()V

    :cond_1
    return-void
.end method

.method public onFinishExitAllApps()V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 14

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    const v8, 0x7f0900ab

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    const v8, 0x1020013

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    const v8, 0x7f0900ad

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const v8, 0x7f0900ae

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    const v8, 0x7f0900af

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    const v8, 0x7f0900a7

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    :cond_0
    const v8, 0x7f0900ac

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    const v8, 0x7f0900b1

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView;->removeButton(Landroid/view/View;)V

    const v8, 0x7f0900b0

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v8, p0}, Lcom/android/launcher2/MenuTitleBarManager;->init(Lcom/android/launcher2/MenuView;)V

    const v8, 0x7f0900bc

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const v8, 0x7f0900a9

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    new-instance v8, Lcom/android/launcher2/tabs/TabManager;

    const v9, 0x1020011

    invoke-direct {v8, v1, p0, v9}, Lcom/android/launcher2/tabs/TabManager;-><init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const v8, 0x1020013

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabWidget;

    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    const v8, 0x7f030054

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0f0013

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f00ff

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0108

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v9, "APPS"

    invoke-virtual {p0, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const-class v10, Lcom/android/launcher2/MenuAppsGridFragment;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v8, 0x7f030054

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0f012c

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f012c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0108

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iput-object v5, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v9, "WIDGETS"

    invoke-virtual {p0, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const-class v10, Lcom/android/launcher2/MenuWidgetsFragment;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    sget-object v9, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/tabs/TabManager;->setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V

    const v8, 0x7f0900a7

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f00b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f0108

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    const v8, 0x7f0900c2

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f000c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0f00c6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iput-object v2, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    const v8, 0x7f0900b0

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onHomePressed(Z)Z
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Launcher$HardwareKeys;->onHomePressed(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeView$LayoutParams;

    iget v4, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onOptionSelectedDownload()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->showNoDownloadedAppsToastMessage()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    instance-of v4, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DONT_CHG_STATE_ON_PREDRAW"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    goto :goto_0
.end method

.method public onOptionSelectedSearch()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v2, p1, Lcom/android/launcher2/MenuView$SavedState;

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/MenuView$SavedState;

    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "APPS"

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    const-string v2, "APPS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/launcher2/MenuView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    return-object v0
.end method

.method public onShowAllApps()V
    .locals 8

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v0}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v6, Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :goto_0
    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v0}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "MENU"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->enterAllStates()V

    return-void

    :cond_1
    sput-boolean v5, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    new-instance v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v7, v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v7, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v7}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v0}, Lcom/android/launcher2/tabs/TabManager;->attachFragments()V

    goto :goto_1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public packagesChanged(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    if-eqz p1, :cond_1

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$PackageNotifications;->packagesChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    return-void
.end method

.method public releaseShadows()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->releaseShadows()V

    :cond_0
    return-void
.end method

.method public selectAppsTab()V
    .locals 1

    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    return-void
.end method

.method public selectWidgetsTab()V
    .locals 1

    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setMenuTitle(Z)V

    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mMenuOrMarket:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownButton:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v3, 0x7f0900ac

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v3, 0x7f0900c2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setDownloadIconEnabled()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_3

    const v2, 0x7f0b0038

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0b0039

    goto :goto_1
.end method

.method public setMenuTitle(Z)V
    .locals 4

    const v3, 0x7f0f0107

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mTalkbackMenuTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecretAvailableWidgets(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v7, "WIDGETS"

    invoke-virtual {v6, v7}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v0, v6}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1, p2}, Lcom/android/launcher2/MenuWidgets;->setSecretAvailableWidget(Ljava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public setSecretWidgetByFiltering()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->initSecretItemOffset()V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->updateAvailableWidget()V

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshQuickViewMenuWidget(Z)V

    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 6

    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewType. old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "MenuView.ViewType"

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sput-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuView$2;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v3, v1, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/launcher2/MenuAppsGridFragment;

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v4, "APPS"

    const-class v5, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/tabs/TabManager;->changeTabFragment(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
