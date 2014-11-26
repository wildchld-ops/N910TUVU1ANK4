.class Lcom/android/phone/WfcEmergencyCallController$3;
.super Landroid/content/BroadcastReceiver;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WfcEmergencyCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->access$200(Lcom/android/phone/WfcEmergencyCallController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver.onReceive(): intent.action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IntentDelayedImsRegistration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # invokes: Lcom/android/phone/WfcEmergencyCallController;->handleDelayedRegistration()V
    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->access$500(Lcom/android/phone/WfcEmergencyCallController;)V

    :cond_0
    return-void
.end method
