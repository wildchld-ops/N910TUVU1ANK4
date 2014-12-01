.class Lcom/android/settings/cloud/CloudDialog$8;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$8;->this$0:Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$8;->this$0:Lcom/android/settings/cloud/CloudDialog;

    const-string v1, "Baidu"

    # invokes: Lcom/android/settings/cloud/CloudDialog;->removeAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/cloud/CloudDialog;->access$300(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$8;->this$0:Lcom/android/settings/cloud/CloudDialog;

    # getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$8;->this$0:Lcom/android/settings/cloud/CloudDialog;

    # getter for: Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudDialog;->access$200(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/cloud/CloudDialog$DialogListener;->onPositiveButtonClick()V

    :cond_0
    return-void
.end method
