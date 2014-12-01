.class public Lcom/android/settings/search/SearchMain;
.super Landroid/preference/PreferenceActivity;
.source "SearchMain.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SearchMain$UpdateListThread;
    }
.end annotation


# static fields
.field private static RESTORE_DB:Z

.field private static mArrayResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

.field private static mKeyWord:Ljava/lang/String;

.field private static mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

.field private static mSearchManger:Lcom/android/settings/search/SettingSearchManager;


# instance fields
.field private mLeftSideView:Landroid/view/View;

.field private mNoResultlayout:Landroid/view/View;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightSideView:Landroid/view/View;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

.field private misFromSettingsMainActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    sput-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mLeftSideView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mRightSideView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchMain;->misFromSettingsMainActivity:Z

    new-instance v0, Lcom/android/settings/search/SearchMain$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$1;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/search/SearchMain$2;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$2;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/settings/search/SearchMain$3;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$3;-><init>(Lcom/android/settings/search/SearchMain;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private SearchDB()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v0

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v0

    sget-object v1, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v1}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v0}, Lcom/android/settings/search/SettingSearchManager;->changed_language()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SearchMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " searchinfo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/search/SettingSearchManager;->getCount_searchinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-virtual {v2}, Lcom/android/settings/search/SettingSearchManager;->getCount_titleinfo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTORE_SEARCH_DB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/search/SettingSearchManager;
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/search/SettingSearchManager;)Lcom/android/settings/search/SettingSearchManager;
    .locals 0

    sput-object p0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/search/SearchMain;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/search/SearchMain;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->displayProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/search/SearchMain;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/search/SearchListAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    return-object v0
.end method

.method private dismisProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private displayProgressDialog()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/search/SearchMain;->RESTORE_DB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->showProgressDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->dismisProgressDialog()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    const v1, 0x7f091834

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/search/SearchMain;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private updateList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Lcom/android/settings/search/SearchItem;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SearchItem;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/android/settings/search/SearchListAdapter;

    sget-object v5, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const v6, 0x7f04021b

    invoke-direct {v4, v5, v6, v3, p2}, Lcom/android/settings/search/SearchListAdapter;-><init>(Landroid/content/Context;I[Lcom/android/settings/search/SearchItem;Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    sget-object v4, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/search/SearchListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0909fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    sget-object v5, Lcom/android/settings/search/SearchMain;->mSearchListAdapter:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private updateSideViewVisibility()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mLeftSideView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mRightSideView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mLeftSideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mRightSideView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->updateSideViewVisibility()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v9, "from_settings_main_activity"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/search/SearchMain;->misFromSettingsMainActivity:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget-object v9, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x14

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    new-instance v9, Landroid/widget/SearchView;

    sget-object v10, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    const v10, 0x7f090629

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->onActionViewExpanded()V

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v9, 0x7f040219

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0b052c

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v9, 0x7f0b052d

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sget-object v9, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v9, 0x7f04021f

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    const v9, 0x7f0b053b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mLeftSideView:Landroid/view/View;

    const v9, 0x7f0b053c

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mRightSideView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->updateSideViewVisibility()V

    :goto_1
    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/settings/search/SearchMain;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v9, 0x7f040220

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v10}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mNoResultlayout:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcom/android/settings/search/SettingSearchManager;

    sget-object v10, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    sput-object v9, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->SearchDB()V

    return-void

    :cond_1
    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchViewOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v9, 0x10203a1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v0, "SearchMain"

    const-string v1, "onDestory() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SearchMain"

    const-string v2, "onKeyDown() return true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v2, "SearchMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v1, "SearchMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress() multiWindowValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SearchMain"

    const-string v1, "onKeyUp() call onToBackMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->onToBackMenu()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/search/SearchMain;->onToBackMenu()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const-string v2, "SearchMain"

    const-string v3, "onPause() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SearchMain"

    const-string v3, "no BroadcastReceiver to be unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    sput-object p1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/search/SearchMain$UpdateListThread;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchMain$UpdateListThread;-><init>(Lcom/android/settings/search/SearchMain;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x0

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method public onResume()V
    .locals 4

    const-string v0, "SearchMain"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/search/SearchMain;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.settings.SETTING_SEARCH_DB_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/settings/search/SearchFilterMenu;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchFilterMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    sget-object v0, Lcom/android/settings/search/SearchMain;->mFilterMenu:Lcom/android/settings/search/SearchFilterMenu;

    invoke-virtual {v0}, Lcom/android/settings/search/SearchFilterMenu;->initDynamicPreferenceRemovekey()V

    sget-object v0, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/settings/search/SearchMain;->mSearchManger:Lcom/android/settings/search/SettingSearchManager;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getTitleInfoDB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/settings/search/SearchMain;->mArrayResultList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/search/SearchMain;->mKeyWord:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/search/SearchMain;->updateList(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/search/SearchMain;->displayProgressDialog()V

    return-void
.end method

.method public onToBackMenu()V
    .locals 4

    sget-object v2, Lcom/android/settings/search/SearchMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-boolean v2, p0, Lcom/android/settings/search/SearchMain;->misFromSettingsMainActivity:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
