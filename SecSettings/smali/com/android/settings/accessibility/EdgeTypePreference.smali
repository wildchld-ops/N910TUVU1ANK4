.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/EdgeTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    const v1, 0x7f0400d9

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    const v1, 0x7f0401e7

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6

    const v4, 0x7f0b01ba

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/EdgeTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f026c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    const v4, 0x7f0b00e2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
