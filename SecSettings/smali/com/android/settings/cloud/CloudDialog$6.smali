.class Lcom/android/settings/cloud/CloudDialog$6;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$6;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDialog$6;->this$0:Lcom/android/settings/cloud/CloudDialog;

    # getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDialog$6;->this$0:Lcom/android/settings/cloud/CloudDialog;

    # getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/cloud/CloudDialog$DialogListener;->onCancelButtonClick()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
