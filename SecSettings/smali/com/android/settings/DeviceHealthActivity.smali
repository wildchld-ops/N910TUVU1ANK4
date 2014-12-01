.class public Lcom/android/settings/DeviceHealthActivity;
.super Landroid/preference/PreferenceActivity;
.source "DeviceHealthActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackStackCount:I

.field private mFragmentApps:Landroid/app/Fragment;

.field private mFragmentBattery:Landroid/app/Fragment;

.field private mFragmentData:Landroid/app/Fragment;

.field private mIsHomeEnabled:Z

.field private mIsHomeEnabledInMain:Z

.field private mSelectedTab:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    const-string v0, "tag_battery"

    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    return-void
.end method

.method private findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0919dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0919dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0919de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    goto :goto_0

    :cond_2
    const-string v0, "Device Health"

    const-string v1, "Unknown tab selected! Using default tab."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    goto :goto_0
.end method

.method private hideActionTabs()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method

.method private setHomeEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method private showActionTabs()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    return-void
.end method

.method private updateActionBar()V
    .locals 1

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->showActionTabs()V

    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->hideActionTabs()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DeviceHealthActivity;->setHomeEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    const v4, 0x7f04007d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f0919db

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0919dc

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0919dd

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0919de

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    if-nez p1, :cond_0

    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    new-instance v4, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabledInMain:Z

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v2, v8}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v1, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3, v9}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_battery"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_apps"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tag_data"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentBattery:Landroid/app/Fragment;

    :cond_1
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/settings/applications/ManageApplications;

    invoke-direct {v4}, Lcom/android/settings/applications/ManageApplications;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "classname"

    const-string v5, ".RunningServices"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hidetabs"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentApps:Landroid/app/Fragment;

    invoke-virtual {v4, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;

    invoke-direct {v4}, Lcom/android/settings/DeviceHealthActivity$DeviceHealthDataUsageSummary;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mFragmentData:Landroid/app/Fragment;

    :cond_3
    const-string v4, "is_home_enabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    const-string v4, "selected_tab"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v4, "backstack_count"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_battery"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2, v8, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_apps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v1, v7, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v4, p0, Lcom/android/settings/DeviceHealthActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    const-string v6, "tag_data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v3, v9, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceHealthActivity;->onBackPressed()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_home_enabled"

    iget-boolean v1, p0, Lcom/android/settings/DeviceHealthActivity;->mIsHomeEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "selected_tab"

    iget-object v1, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backstack_count"

    iget v1, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0919dc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "tag_battery"

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0919dd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "tag_apps"

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0919de

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "tag_data"

    :cond_2
    iput-object v0, p0, Lcom/android/settings/DeviceHealthActivity;->mSelectedTab:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0b0190

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceHealthActivity;->findFragmentByTab(Landroid/app/ActionBar$Tab;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_3
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 3

    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0b0190

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    :cond_0
    :goto_0
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/DeviceHealthActivity;->mBackStackCount:I

    invoke-direct {p0}, Lcom/android/settings/DeviceHealthActivity;->updateActionBar()V

    return-void

    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method
