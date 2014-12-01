.class public Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private androidBeam:Landroid/preference/Preference;

.field private exportAccessibility:Landroid/preference/Preference;

.field private importAccessibility:Landroid/preference/Preference;

.field private importexportAccessibility:Landroid/preference/Preference;

.field private path:Ljava/lang/String;

.field private shareAccessibility:Landroid/preference/Preference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SharedAccessibilityFragment"

    const-string v1, "SharedAccessibilityFragment Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "shared_accessibility_menus"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    const-string v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_export"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_import"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "shared_accessibility_android_beam"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SUPPORT_ACCESSIBILITY_IN_SHARING_ACCESSIBILITY_SETTINGS_UI_2014"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->exportAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExport"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityImport"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityShareVia"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->androidBeam:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilitySettingsNFCSend"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Landroid/preference/Preference;

    if-ne p1, v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.shareaccessibilitysettings"

    const-string v4, "com.samsung.android.app.shareaccessibilitysettings.ShareAccessibilityExportImport"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
