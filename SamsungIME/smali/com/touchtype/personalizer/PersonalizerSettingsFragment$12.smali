.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    const-string v4, "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEmojiLMLoaded()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "settings_keyboard_swipe_none"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S002"

    const-string v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    # getter for: Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S002"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
