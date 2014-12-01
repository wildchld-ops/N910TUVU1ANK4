.class Lcom/android/settings/fmm/RemoteControls$4;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # getter for: Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/fmm/RemoteControls;->access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    # invokes: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/fmm/RemoteControls;->access$1000(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
