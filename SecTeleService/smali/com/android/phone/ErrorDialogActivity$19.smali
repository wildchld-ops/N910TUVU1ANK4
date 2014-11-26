.class Lcom/android/phone/ErrorDialogActivity$19;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showAirplaneModeOffProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$100(Lcom/android/phone/ErrorDialogActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # invokes: Lcom/android/phone/ErrorDialogActivity;->unregisterForServiceStateChanged()V
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$600(Lcom/android/phone/ErrorDialogActivity;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/ErrorDialogActivity;->access$202(Lcom/android/phone/ErrorDialogActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$100(Lcom/android/phone/ErrorDialogActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$19;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    :cond_0
    return-void
.end method
