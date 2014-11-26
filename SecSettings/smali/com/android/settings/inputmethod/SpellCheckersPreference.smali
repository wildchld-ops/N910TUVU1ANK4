.class public Lcom/android/settings/inputmethod/SpellCheckersPreference;
.super Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.source "SpellCheckersPreference.java"


# instance fields
.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "textservices"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected onCheckBoxClicked()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    return-void
.end method
