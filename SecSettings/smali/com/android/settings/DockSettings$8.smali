.class Lcom/android/settings/DockSettings$8;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DockSettings$8;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DockSettings$8;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Lcom/android/settings/DreamBackend;

    iget-object v1, p0, Lcom/android/settings/DockSettings$8;->this$0:Lcom/android/settings/DockSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/DockSettings$8;->this$0:Lcom/android/settings/DockSettings;

    # invokes: Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$700(Lcom/android/settings/DockSettings;)V

    return-void
.end method
