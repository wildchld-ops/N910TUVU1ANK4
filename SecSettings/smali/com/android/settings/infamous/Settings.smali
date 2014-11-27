.class public Lcom/android/settings/infamous/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/android/settings/infamous/Settings;->addPreferencesFromResource(I)V

    return-void
.end method
