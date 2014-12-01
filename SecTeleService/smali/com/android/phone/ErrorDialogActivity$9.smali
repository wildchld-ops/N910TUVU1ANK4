.class Lcom/android/phone/ErrorDialogActivity$9;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showTryVoicecallDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ErrorDialogActivity;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/ErrorDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$9;->this$0:Lcom/android/phone/ErrorDialogActivity;

    iput-object p2, p0, Lcom/android/phone/ErrorDialogActivity$9;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$9;->this$0:Lcom/android/phone/ErrorDialogActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/ErrorDialogActivity$9;->val$phoneNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$9;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void
.end method
