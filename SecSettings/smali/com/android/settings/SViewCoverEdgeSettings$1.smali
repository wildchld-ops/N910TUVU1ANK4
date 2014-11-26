.class Lcom/android/settings/SViewCoverEdgeSettings$1;
.super Landroid/database/ContentObserver;
.source "SViewCoverEdgeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewCoverEdgeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewCoverEdgeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewCoverEdgeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    const-string v1, "SViewCoverEdgeSettings"

    const-string v2, "onChange() cover_edge_setting_enabled changed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_edge_wallpaper"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverEdgeSettings$1;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    # getter for: Lcom/android/settings/SViewCoverEdgeSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/SViewCoverEdgeSettings;->access$000(Lcom/android/settings/SViewCoverEdgeSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
