.class Lcom/android/phone/ErrorDialogActivity$20;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showDivertToVoiceDialog(I)V
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

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$20;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, 0x0

    const-string v1, "single_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->getDivertCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity$20;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity$20;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v1}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIms;->getDivertCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
