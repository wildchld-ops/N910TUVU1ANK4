.class Lcom/android/mms/transaction/SimChangeReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "SimChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SimChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SimChangeReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SimChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/SimChangeReceiver$1;->this$0:Lcom/android/mms/transaction/SimChangeReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1    # Landroid/telephony/ServiceState;

    const-string v0, "CMAS/SimChangeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/mms/transaction/SimChangeReceiver$1;->this$0:Lcom/android/mms/transaction/SimChangeReceiver;

    # invokes: Lcom/android/mms/transaction/SimChangeReceiver;->isOperatorChanged()Z
    invoke-static {v0}, Lcom/android/mms/transaction/SimChangeReceiver;->access$000(Lcom/android/mms/transaction/SimChangeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/CMASPreferenceActivity;->setCMASConfig(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
