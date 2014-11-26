.class public Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SpellCheckerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->setSpellCheckerService(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/Preference;

    const/4 v0, 0x1

    return v0
.end method

.method public setSpellCheckerService(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    if-nez v2, :cond_1

    const-string v2, "textservices"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v2, :cond_0

    goto :goto_0
.end method
