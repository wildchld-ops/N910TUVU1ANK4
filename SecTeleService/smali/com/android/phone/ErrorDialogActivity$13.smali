.class Lcom/android/phone/ErrorDialogActivity$13;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showAirplaneModeErrorDialog(I)V
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

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$13;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity$13;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # invokes: Lcom/android/phone/ErrorDialogActivity;->showAirplaneModeOffProgressDialog()V
    invoke-static {v1}, Lcom/android/phone/ErrorDialogActivity;->access$500(Lcom/android/phone/ErrorDialogActivity;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setAirplainModeOn(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity$13;->this$0:Lcom/android/phone/ErrorDialogActivity;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/ErrorDialogActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
