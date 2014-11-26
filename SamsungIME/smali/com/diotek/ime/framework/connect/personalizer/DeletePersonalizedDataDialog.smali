.class public Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;
.super Landroid/preference/DialogPreference;
.source "DeletePersonalizedDataDialog.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.inputmethod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private resetUpdatedTime()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "gmail_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "facebook_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "twitter_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "messaging_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "contacts_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "connect"

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    const-string v2, "connect_gmail_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_0

    const v2, 0x7f0e0204

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    const-string v2, "connect_facebook_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_1

    const v2, 0x7f0e0203

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    const-string v2, "connect_twitter_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_2

    const v2, 0x7f0e0205

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    const-string v2, "connect_messaging_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_3

    const v2, 0x7f0e0207

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    const-string v2, "connect_contacts_enable"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_4

    const v2, 0x7f0e0208

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->resetUpdatedTime()V

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/DeletePersonalizedDataDialog;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->resetDLMData()S

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0223

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1    # Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
