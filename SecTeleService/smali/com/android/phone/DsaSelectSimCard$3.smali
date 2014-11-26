.class Lcom/android/phone/DsaSelectSimCard$3;
.super Landroid/content/BroadcastReceiver;
.source "DsaSelectSimCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaSelectSimCard;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/DsaSelectSimCard$3;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard$3;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-virtual {v0}, Lcom/android/phone/DsaSelectSimCard;->displayResultDialog()V

    return-void
.end method
