.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mChangeProgressText:Z

.field private mChangeProgressTitleText:Z

.field private mCheckIgnore:Z

.field private final mEmptyTextRes:I

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z

.field private mProgressText:I

.field private mProgressTitleText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    const v0, 0x7f0914dc

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    const v0, 0x7f0401d5

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    const v0, 0x7f0914dc

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    const v0, 0x7f0401d5

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    iput p3, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0b0489

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0488

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    const v3, 0x7f090137

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v3, p0, Lcom/android/settings/ProgressCategory;->mProgressTitleText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const v3, 0x7f090134

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public setIgnoreMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressText(ZI)V
    .locals 1
    .param p1    # Z
    .param p2    # I

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090137

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    goto :goto_0
.end method

.method public setProgressTitleText(ZI)V
    .locals 1
    .param p1    # Z
    .param p2    # I

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    const v0, 0x7f090398

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/android/settings/ProgressCategory;->mProgressTitleText:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressTitleText:Z

    goto :goto_0
.end method
