.class Lcom/android/phone/DsaSelectSimCard$6;
.super Ljava/lang/Object;
.source "DsaSelectSimCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaSelectSimCard;->displayResultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaSelectSimCard;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaSelectSimCard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DsaSelectSimCard$6;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/DsaSelectSimCard$6;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-virtual {v2}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    iget-object v2, p0, Lcom/android/phone/DsaSelectSimCard$6;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-virtual {v2}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_init_dialog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NetworkManagement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DsaSelectSimCard"

    const-string v3, "Network Management calling startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/DsaSelectSimCard$6;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-virtual {v2, v0}, Lcom/android/phone/DsaSelectSimCard;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
