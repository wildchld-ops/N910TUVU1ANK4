.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v8}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_6

    move-object v4, p1

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v2, :cond_5

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$500()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "settings_keyboard_swipe_none"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v5, v8, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v5, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v5, v5, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v5, v8, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const-string v5, "settings_keyboard_swipe"

    const-string v8, "settings_keyboard_swipe_continuous_input"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # setter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mChangeUseTraceByChangeListener:Z
    invoke-static {v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$502(Z)Z

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    if-nez v2, :cond_1

    move v7, v6

    :cond_1
    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->setSummaryForPredictiveText(Z)V
    invoke-static {v5, v7}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$800(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;Z)V

    :goto_3
    return v6

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v8, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v5

    const v8, 0x7f0e0056

    invoke-virtual {v5, v8}, Landroid/widget/Toast;->setText(I)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$400(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mIsSwiftKeySDK:Z
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$600(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v7, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v5, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mXt9Version:I
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$700(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v7, Lcom/diotek/ime/implement/setting/ConnectSetting;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$28;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$100(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/app/Activity;

    move-result-object v5

    const-class v7, Lcom/diotek/ime/implement/setting/Xt9AdvancedSettings;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4
.end method
