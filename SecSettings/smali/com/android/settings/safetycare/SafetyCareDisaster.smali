.class public Lcom/android/settings/safetycare/SafetyCareDisaster;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareDisaster.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final REQUESTCODE_DISCLAIMER:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mDisasterObserver:Landroid/database/ContentObserver;

.field private final mDisasterReceiver:Landroid/content/BroadcastReceiver;

.field private mGeoObserver:Landroid/database/ContentObserver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mNotiPopup:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->REQUESTCODE_DISCLAIMER:I

    const-string v0, "earthquake"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpType:Ljava/lang/String;

    const-string v0, "earthquake"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpContent:Ljava/lang/String;

    const-string v0, "earthquake"

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpTitleResID:I

    iput v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpImgResID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareDisaster$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisaster$1;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisaster$2;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mGeoObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/safetycare/SafetyCareDisaster$3;

    invoke-direct {v0, p0}, Lcom/android/settings/safetycare/SafetyCareDisaster$3;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/safetycare/SafetyCareDisaster;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareDisaster;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/safetycare/SafetyCareDisaster;->sendIntent(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private displayDataChargeDialog()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091b3d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091b3e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v6, 0x7f040211

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0b0519

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/safetycare/SafetyCareDisaster$7;

    invoke-direct {v7, p0}, Lcom/android/settings/safetycare/SafetyCareDisaster$7;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09185a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/safetycare/SafetyCareDisaster$8;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/safetycare/SafetyCareDisaster$8;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/settings/safetycare/SafetyCareDisaster$9;

    invoke-direct {v6, p0}, Lcom/android/settings/safetycare/SafetyCareDisaster$9;-><init>(Lcom/android/settings/safetycare/SafetyCareDisaster;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private sendIntent(Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safetycare_geolookout_registering"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isOptionChanged"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

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

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b020f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpImgResID:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :goto_0
    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    const-string v5, "ChinaNalSecurity"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "data_charging_Setting"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "data_charging_checkbox"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisaster;->displayDataChargeDialog()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    const-string v5, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/settings/safetycare/SafetyCareDisaster;->sendIntent(Ljava/lang/String;ZZ)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "safetycare_geolookout_registering"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    const-string v5, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    invoke-direct {p0, v5, v4, v4}, Lcom/android/settings/safetycare/SafetyCareDisaster;->sendIntent(Ljava/lang/String;ZZ)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "safetycare_geolookout_registering"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v2, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "safetycare_earthquake"

    iput-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    const v1, 0x7f091a51

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpContent:Ljava/lang/String;

    const v0, 0x7f091a8d

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpTitleResID:I

    const v0, 0x7f0205f4

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpImgResID:I

    const v0, 0x7f0700be

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarLayout:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpTitleResID:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string v0, "disaster_popup"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mNotiPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_disaster_user_agree"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mGeoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mNotiPopup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safetycare_disaster_popup"

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mNotiPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safetycare_geolookout_registering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    if-nez v0, :cond_6

    move v0, v2

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mNotiPopup:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mNotiPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "safetycare_disaster_popup"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safetycare_earthquake"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safetycare_geolookout_registering"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mGeoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster;->mDisasterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.geolookout.Registered"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2
.end method
