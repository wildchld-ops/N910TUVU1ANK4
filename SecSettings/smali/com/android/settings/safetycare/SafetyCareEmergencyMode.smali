.class public Lcom/android/settings/safetycare/SafetyCareEmergencyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareEmergencyMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpType:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const-string v0, "emer_help"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareEmergencyMode$1;-><init>(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareEmergencyMode;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f040215

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0210

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b020f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "emergency_mode"

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f091a4e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const v3, 0x7f0205f5

    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    :goto_0
    const v3, 0x7f091a47

    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    const v3, 0x7f0700bf

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarLayout:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f091a4c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    :goto_1
    const v3, 0x7f0205f6

    iput v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f091a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
