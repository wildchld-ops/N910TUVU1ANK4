.class public Lcom/android/settings/OneHandSideSoftKeyFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandSideSoftKeyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final ONEHAND_SIDESOFTKEYTRANSPARENCY:Ljava/lang/String;

.field private final ONEHAND_SIDESOFTKEY_EDITKEYS:Ljava/lang/String;

.field private final ONEHAND_SIDESOFTKEY_LAYOUT:Ljava/lang/String;

.field private final ONEHAND_SIDESOFTKEY_MINIMISE:Ljava/lang/String;

.field private final ONEHAND_SIDESOFTKEY_SETTINGS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

.field private mOneHandSideSoftKeyLayout:Landroid/preference/PreferenceScreen;

.field private mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

.field private mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

.field private mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

.field private mSidesoftkeyObserver:Landroid/database/ContentObserver;

.field private talkbackEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "OneHandSideSoftKeyFragment"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->TAG:Ljava/lang/String;

    const-string v0, "onehand_sidesoftkey_layout"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->ONEHAND_SIDESOFTKEY_LAYOUT:Ljava/lang/String;

    const-string v0, "onehand_sidesoftkey_settings"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->ONEHAND_SIDESOFTKEY_SETTINGS:Ljava/lang/String;

    const-string v0, "onehand_sidesoftkey_transparency"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->ONEHAND_SIDESOFTKEYTRANSPARENCY:Ljava/lang/String;

    const-string v0, "onehand_sidesoftkey_minimise"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->ONEHAND_SIDESOFTKEY_MINIMISE:Ljava/lang/String;

    const-string v0, "onehand_sidesoftkey_editkeys"

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->ONEHAND_SIDESOFTKEY_EDITKEYS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->talkbackEnabled:Z

    new-instance v0, Lcom/android/settings/OneHandSideSoftKeyFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OneHandSideSoftKeyFragment$1;-><init>(Lcom/android/settings/OneHandSideSoftKeyFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mSidesoftkeyObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0    # Lcom/android/settings/OneHandSideSoftKeyFragment;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OneHandSideSoftKeyFragment;)Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;
    .locals 1
    .param p0    # Lcom/android/settings/OneHandSideSoftKeyFragment;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/OneHandSideSoftKeyFragment;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/OneHandSideSoftKeyFragment;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/OneHandSideSoftKeyFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/OneHandSideSoftKeyFragment;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private showDisablePopup()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f091ba8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090986

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f091174

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/OneHandSideSoftKeyFragment$5;

    invoke-direct {v5, p0}, Lcom/android/settings/OneHandSideSoftKeyFragment$5;-><init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/OneHandSideSoftKeyFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings/OneHandSideSoftKeyFragment$4;-><init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/OneHandSideSoftKeyFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/OneHandSideSoftKeyFragment$3;-><init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 10

    const/16 v7, 0x10

    const/4 v4, 0x1

    const/4 v9, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v1, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f004c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->requestFocus()Z

    :cond_0
    const-string v3, "onehand_sidesoftkey_layout"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSideSoftKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyLayout:Landroid/preference/PreferenceScreen;

    const-string v3, "onehand_sidesoftkey_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSideSoftKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    const-string v3, "onehand_sidesoftkey_transparency"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSideSoftKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    const-string v3, "onehand_sidesoftkey_minimise"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSideSoftKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "sidesoftkey_minimise"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v3, "onehand_sidesoftkey_editkeys"

    invoke-virtual {p0, v3}, Lcom/android/settings/OneHandSideSoftKeyFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sidesoftkey_switch"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v4

    :goto_1
    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v3, 0x0

    const-string v1, "OneHandSideSoftKeyFragment"

    const-string v2, "onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->talkbackEnabled:Z

    iget-boolean v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->talkbackEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->showDisablePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sidesoftkey_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/OneHandSideSoftKeyFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/OneHandSideSoftKeyFragment$2;-><init>(Lcom/android/settings/OneHandSideSoftKeyFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091ba8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mSidesoftkeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OneHandSideSoftKeyFragment"

    const-string v1, "mOnehandSideSoftKeyMinimise"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_minimise"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sidesoftkey_minimise"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sidesoftkey_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeySettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyTransparency:Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/OneHandSideSoftKeyTransparencyPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOnehandSideSoftKeyMinimise:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sidesoftkey_minimise"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mOneHandSideSoftKeyEditKeys:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesoftkey_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mSidesoftkeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/OneHandSideSoftKeyFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OneHandSideSoftKeyFragment;->mSidesoftkeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
