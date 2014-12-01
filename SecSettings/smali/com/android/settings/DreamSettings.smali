.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$PackageReceiver;,
        Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field private mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

.field mAlertDialog:Landroid/app/AlertDialog;

.field private mBackend:Lcom/android/settings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DreamSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DreamSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DreamSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DreamSettings;)Lcom/android/settings/DreamSettings$DreamInfoAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/android/settings/DreamSettings$5;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/DreamSettings$5;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f09063a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f090639

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f090638

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09063f

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/android/settings/DreamSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$7;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v3, v2, v1, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/DreamSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/DreamSettings$6;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    return-object v3

    :cond_0
    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settings/DreamBackend;->isActivatedOnDock()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settings/DreamBackend;->isActivatedOnSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f09099d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f09063c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private refreshFromBackend()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v6, "refreshFromBackend()"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v8, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v2

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/settings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :cond_2
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    aget-object v7, v6, v8

    if-eqz v2, :cond_6

    const v6, 0x7f020254

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    iput-boolean v9, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    return-void

    :cond_6
    const v6, 0x7f020255

    goto :goto_2
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f090d39

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "onActivityCreated(%s)"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f09063d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1030044

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0357

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const-string v4, "sec-roboto-light"

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0343

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    new-instance v4, Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mAdapter:Lcom/android/settings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/android/settings/DreamSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/DreamSettings$2;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_2
    const v4, 0x7f09063e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x800015

    const/4 v9, 0x1

    const/16 v8, 0x10

    const/4 v6, 0x0

    const/4 v7, -0x2

    const-string v4, "onCreate(%s)"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lcom/android/settings/DreamBackend;

    invoke-direct {v4, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v3, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/settings/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$1;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v4, 0x7f0b013e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/settings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x1

    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v4

    const v2, 0x7f090640

    const/4 v3, 0x2

    new-instance v5, Lcom/android/settings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$3;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f09063f

    const/4 v3, 0x1

    new-instance v5, Lcom/android/settings/DreamSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$4;-><init>(Lcom/android/settings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-eqz v4, :cond_2

    const v0, 0x7f020254

    :goto_1
    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f020255

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method
