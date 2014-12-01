.class Lcom/android/phone/VoiceMailDialAlertDialog$3;
.super Ljava/lang/Object;
.source "VoiceMailDialAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VoiceMailDialAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailDialAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VoiceMailDialAlertDialog$3;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VoiceMailDialAlertDialog$3;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    # getter for: Lcom/android/phone/VoiceMailDialAlertDialog;->vmNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/VoiceMailDialAlertDialog;->access$000(Lcom/android/phone/VoiceMailDialAlertDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/phone/VoiceMailDialAlertDialog$3;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-virtual {v1, v0}, Lcom/android/phone/VoiceMailDialAlertDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/VoiceMailDialAlertDialog$3;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-virtual {v1}, Lcom/android/phone/VoiceMailDialAlertDialog;->finish()V

    return-void
.end method
