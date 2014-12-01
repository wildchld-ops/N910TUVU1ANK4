.class public Lcom/android/settings/SViewCoverEdgeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SViewCoverEdgeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentView:Landroid/view/View;

.field private final mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

.field private mWallpaperBtn1:Landroid/widget/RadioButton;

.field private mWallpaperBtn2:Landroid/widget/RadioButton;

.field private mWallpaperBtnGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/SViewCoverEdgeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SViewCoverEdgeSettings$1;-><init>(Lcom/android/settings/SViewCoverEdgeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewCoverEdgeSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private setButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_edge_wallpaper"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "SViewCoverEdgeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged() enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/settings/SViewCoverEdgeSettings;->setButtonEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_edge_wallpaper"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const v3, 0x7f04023e

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v5, 0x7f0b0583

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn1:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v5, 0x7f0b0584

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn2:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sview_edge_wallpaper_type"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getColorOfCover(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sview_edge_wallpaper_type"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    const v5, 0x7f0b0582

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtnGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtnGroup:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/settings/SViewCoverEdgeSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/SViewCoverEdgeSettings$2;-><init>(Lcom/android/settings/SViewCoverEdgeSettings;)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sview_edge_wallpaper"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/SViewCoverEdgeSettings;->setButtonEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mContentView:Landroid/view/View;

    return-object v3

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sview_edge_wallpaper_type"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mWallpaperBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_edge_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mCoverEdgeSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method
