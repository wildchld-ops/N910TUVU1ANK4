.class Lcom/android/settings/SViewCoverEdgeSettings$2;
.super Ljava/lang/Object;
.source "SViewCoverEdgeSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewCoverEdgeSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewCoverEdgeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewCoverEdgeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewCoverEdgeSettings$2;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const v0, 0x7f0b0583

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings$2;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_edge_wallpaper_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewCoverEdgeSettings$2;->this$0:Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_edge_wallpaper_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
