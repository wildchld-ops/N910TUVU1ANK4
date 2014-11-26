.class Lcom/android/phone/RemoveAutoRejectItemDialog$4;
.super Ljava/lang/Object;
.source "RemoveAutoRejectItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RemoveAutoRejectItemDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$4;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v0, "RemoveAutoRejectItemDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_reject_number_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$4;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    # getter for: Lcom/android/phone/RemoveAutoRejectItemDialog;->auto_reject_number_id:J
    invoke-static {v2}, Lcom/android/phone/RemoveAutoRejectItemDialog;->access$000(Lcom/android/phone/RemoveAutoRejectItemDialog;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$4;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    # getter for: Lcom/android/phone/RemoveAutoRejectItemDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/RemoveAutoRejectItemDialog;->access$200(Lcom/android/phone/RemoveAutoRejectItemDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$4;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    # getter for: Lcom/android/phone/RemoveAutoRejectItemDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/RemoveAutoRejectItemDialog;->access$200(Lcom/android/phone/RemoveAutoRejectItemDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
