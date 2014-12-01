.class public Lcom/android/settings/SettingsTextSwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SettingsTextSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mFragment:Landroid/preference/PreferenceFragment;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    invoke-direct {p0}, Lcom/android/settings/SettingsTextSwitchPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f04022b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b007f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/Switch;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    :cond_0
    const v4, 0x7f0b0561

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    const v1, 0x7f0b0561

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public setFragment(Landroid/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsTextSwitchPreference;->mFragment:Landroid/preference/PreferenceFragment;

    return-void
.end method
