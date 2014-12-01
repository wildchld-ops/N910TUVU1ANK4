.class public Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;
.super Landroid/preference/Preference;
.source "KeyboardSwipeSettingsPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SwipeSettings : key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "settings_keyboard_swipe_continuous_input"

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "settings_keyboard_swipe"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "settings_keyboard_swipe_cursor_control"

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v4, v5, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "settings_keyboard_swipe_flick_umlaut"

    goto :goto_0

    :cond_5
    const-string v3, "settings_keyboard_swipe_none"

    goto :goto_0
.end method

.method private currentSelected()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    const-string v4, "settings_keyboard_swipe"

    const-string v5, "settings_keyboard_swipe_none"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "settings_keyboard_swipe_continuous_input"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "settings_keyboard_swipe_none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "settings_keyboard_swipe_none"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "settings_keyboard_swipe"

    const-string v4, "settings_keyboard_swipe_none"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->currentSelected()V

    return-void
.end method

.method public selectOption()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings_keyboard_swipe_continuous_input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_keyboard_swipe_none"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_0
    const-string v2, "settings_keyboard_swipe"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v2, "settings_keyboard_swipe_cursor_control"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_keyboard_swipe_none"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "settings_keyboard_swipe_flick_umlaut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_keyboard_swipe_none"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v2, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "settings_keyboard_swipe_none"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
