.class public Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    const v0, 0x7f0401df

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    const v0, 0x7f0401df

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 11

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v6, 0x7f0b049a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/AnimatedImageView;

    const v6, 0x7f0b0499

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v6, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    if-eqz v0, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    move v2, v9

    :goto_2
    if-eqz v2, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_5

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f090b53

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method
