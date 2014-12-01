.class Lcom/android/settings/SecuritySettings$1;
.super Landroid/database/ContentObserver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_control"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    # getter for: Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    # getter for: Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f09099c

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f09099d

    goto :goto_0
.end method
