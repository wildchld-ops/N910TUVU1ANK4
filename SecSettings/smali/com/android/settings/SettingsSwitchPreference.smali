.class public Lcom/android/settings/SettingsSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SettingsSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    return-void
.end method
