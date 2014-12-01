.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    instance-of v8, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    const-string v9, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    :cond_0
    if-nez v1, :cond_1

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsKorMode:Z
    invoke-static {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v8, v8, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v8, v9, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    const-string v8, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v4, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iput-boolean v6, v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->SwipePopup:Z

    iget-object v7, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$24;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v7, v7, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->swipeDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return v6

    :cond_3
    move v6, v7

    goto :goto_0
.end method
