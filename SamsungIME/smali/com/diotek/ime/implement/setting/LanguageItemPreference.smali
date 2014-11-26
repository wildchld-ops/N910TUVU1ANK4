.class public Lcom/diotek/ime/implement/setting/LanguageItemPreference;
.super Landroid/preference/Preference;
.source "LanguageItemPreference.java"


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/diotek/ime/framework/common/Language;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/diotek/ime/framework/common/Language;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private currentSelected()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->currentSelected()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/LanguageItemPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
