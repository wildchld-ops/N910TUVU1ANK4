.class Lcom/android/phone/WfcEmergencyCallController$1;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    # setter for: Lcom/android/phone/WfcEmergencyCallController;->mRAT:I
    invoke-static {v1, v2}, Lcom/android/phone/WfcEmergencyCallController;->access$002(Lcom/android/phone/WfcEmergencyCallController;I)I

    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    # setter for: Lcom/android/phone/WfcEmergencyCallController;->mIsInService:Z
    invoke-static {v2, v1}, Lcom/android/phone/WfcEmergencyCallController;->access$102(Lcom/android/phone/WfcEmergencyCallController;Z)Z

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/WfcEmergencyCallController;->access$200(Lcom/android/phone/WfcEmergencyCallController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged(): RAT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController$1;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->mRAT:I
    invoke-static {v3}, Lcom/android/phone/WfcEmergencyCallController;->access$000(Lcom/android/phone/WfcEmergencyCallController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
