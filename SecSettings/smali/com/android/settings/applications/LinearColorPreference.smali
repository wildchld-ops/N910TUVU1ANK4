.class public Lcom/android/settings/applications/LinearColorPreference;
.super Landroid/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field mRedRatio:F

.field mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    const v0, 0x7f0401cb

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x1010005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setShowIndicator(Z)V

    const v1, -0x55afd0

    const v2, -0x5555d0

    const v3, -0xcf55b0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    iget v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setColoredRegions(I)V

    iget-object v1, p0, Lcom/android/settings/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V

    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F

    iput p1, p0, Lcom/android/settings/applications/LinearColorPreference;->mRedRatio:F

    iput p2, p0, Lcom/android/settings/applications/LinearColorPreference;->mYellowRatio:F

    iput p3, p0, Lcom/android/settings/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method
