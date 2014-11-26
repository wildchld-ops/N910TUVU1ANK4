.class public Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "WifiP2pCustomCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0402b2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method
