.class public Lcom/android/settings/RadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioPreference.java"


# instance fields
.field mIsChecked:Z

.field mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/RadioPreference;->mIsChecked:Z

    new-instance v0, Lcom/android/settings/RadioPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioPreference$1;-><init>(Lcom/android/settings/RadioPreference;)V

    iput-object v0, p0, Lcom/android/settings/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v0, 0x7f0401d6

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/RadioPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f0b00bc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const v4, 0x7f0b048b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/widget/Checkable;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v4, v2

    check-cast v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/settings/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f0b048a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/settings/RadioPreference$2;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/RadioPreference$2;-><init>(Lcom/android/settings/RadioPreference;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
