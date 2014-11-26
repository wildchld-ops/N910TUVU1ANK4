.class public Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "LanguageItemSettingFragment.java"


# instance fields
.field private mCategory:Landroid/preference/PreferenceCategory;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethodTypeValues:[Ljava/lang/String;

.field private mInputMethodTypes:[Ljava/lang/String;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field private mLanguageCode:Ljava/lang/String;

.field private mLanguageName:Ljava/lang/String;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private misTablet:Z

.field private settingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    return-void
.end method

.method private initInputMethodTypes(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1    # Landroid/content/res/Resources;

    const-string v0, "ko"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_9

    :cond_1
    const-string v0, "SamsungIME"

    const-string v1, "LanguageItemSettingActivity - initInputMethodTypes : LanguageItemSetting list create failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "tr"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f070015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "vi"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f070014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f070012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "ja"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f070018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f070017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "zh"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f07001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "de"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "bg"

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    const v0, 0x7f07001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method protected changeInputMethodType(Landroid/preference/Preference;)V
    .locals 10
    .param p1    # Landroid/preference/Preference;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v3, v7, -0x30

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_0

    const-string v7, "SamsungIME"

    const-string v8, "LanguageItemSettingActivity - changeInputMethodType : Wrong InputMethodType set!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    if-ne v3, v1, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v9}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v7, v3}, Lcom/diotek/ime/framework/common/Language;->setInputMethodSubType(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/16 v11, 0x400

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    :cond_0
    iget-boolean v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->misTablet:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "AxT9IME.inputLanguage"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    aget-object v9, v7, v2

    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v7, v2

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    aget-object v8, v7, v2

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v7

    goto :goto_0

    :cond_4
    const v8, 0x7f030069

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "ko"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "ja"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "zh"

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_5
    const-string v8, "keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_6

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v8, "floating_keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    invoke-direct {p0, v6}, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->initInputMethodTypes(Landroid/content/res/Resources;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    :cond_8
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v8, v8

    new-array v3, v8, [Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_b

    new-instance v8, Lcom/diotek/ime/implement/setting/LanguageItemPreference;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->settingActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-direct {v8, v9, v10}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;-><init>(Landroid/content/Context;Lcom/diotek/ime/framework/common/Language;)V

    aput-object v8, v3, v2

    aget-object v8, v3, v2

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypes:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    aget-object v8, v3, v2

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mInputMethodTypeValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    aget-object v8, v3, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    aget-object v8, v3, v2

    new-instance v9, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;

    invoke-direct {v9, p0}, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment$1;-><init>(Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const-string v8, "floating_keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_a

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const-string v8, "keyboard_types"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/diotek/ime/implement/setting/LanguageItemSettingFragment;->mCategory:Landroid/preference/PreferenceCategory;

    goto :goto_2

    :cond_b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
