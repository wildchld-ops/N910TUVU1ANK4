.class public Lcom/android/phone/AutomaticConnectionsSettings;
.super Landroid/preference/PreferenceActivity;
.source "AutomaticConnectionsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static onBoot:Z


# instance fields
.field private mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

.field private mListView:Landroid/widget/ListView;

.field private mSprintConnectionDescription:Landroid/widget/TextView;

.field private mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

.field private mSprintConnectionOptimizer:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private ConnectionsOptimizerDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09071b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09071d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09071e

    new-instance v2, Lcom/android/phone/AutomaticConnectionsSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/AutomaticConnectionsSettings$2;-><init>(Lcom/android/phone/AutomaticConnectionsSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09071f

    new-instance v2, Lcom/android/phone/AutomaticConnectionsSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/AutomaticConnectionsSettings$1;-><init>(Lcom/android/phone/AutomaticConnectionsSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutomaticConnectionsSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/phone/AutomaticConnectionsSettings;

    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/AutomaticConnectionsSettings;I)V
    .locals 0
    .param p0    # Lcom/android/phone/AutomaticConnectionsSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    return-void
.end method

.method private automaticConnectionBroadcast(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "b_es_offl_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.birdstep.android.cm.B_ES_OFFL_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "AutomaticConnectionsSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "onCreate..."

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/android/phone/AutomaticConnectionsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_sprint_automatic_connection_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_connection_optimizer"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionOptimizer:Landroid/preference/PreferenceScreen;

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/AutomaticConnectionsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0400a2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0219

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mSprintConnectionDescriptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_on_boot"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "onCreate... : on_boot"

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    sput-boolean v5, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_on_boot"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_settings"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "onCreate... : on_setting"

    invoke-static {v2}, Lcom/android/phone/AutomaticConnectionsSettings;->log(Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/phone/AutomaticConnectionsSettings;->onBoot:Z

    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "b_ds_dialog_displayed_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V

    iget-object v2, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "b_es_offl_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
