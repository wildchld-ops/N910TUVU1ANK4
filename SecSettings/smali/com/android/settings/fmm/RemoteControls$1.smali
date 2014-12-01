.class Lcom/android/settings/fmm/RemoteControls$1;
.super Landroid/database/ContentObserver;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$1;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$1;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/fmm/RemoteControls;->access$000(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v3, "RemoteControls"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote_control value is changed to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$1;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # getter for: Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/settings/fmm/RemoteControls;->access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$1;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # getter for: Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/settings/fmm/RemoteControls;->access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls$1;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
