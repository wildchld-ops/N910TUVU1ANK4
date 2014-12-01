.class Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;
.super Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdSwitchPreference"
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/wfd/WfdChangedListener;

.field mSwitchPreference:Landroid/preference/SwitchPreference;


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;->mListener:Lcom/android/settings/wfd/WfdChangedListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wfd/WfdChangedListener;->onSwitchChanged(Z)Z

    const/4 v1, 0x1

    return v1
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
