.class Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuosPhoneStateListener"
.end annotation


# instance fields
.field private mPhoneIndex:I

.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput p2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->mPhoneIndex:I

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1    # Landroid/telephony/ServiceState;

    const-string v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->mPhoneIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/EmergencyButton;->access$800(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/EmergencyButton;->access$900(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->mPhoneIndex:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    # setter for: Lcom/android/keyguard/EmergencyButton;->mServiceState:I
    invoke-static {v2, v3}, Lcom/android/keyguard/EmergencyButton;->access$602(Lcom/android/keyguard/EmergencyButton;I)I

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    invoke-static {v2, v1, v0}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton$DuosPhoneStateListener;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    # setter for: Lcom/android/keyguard/EmergencyButton;->mServiceState2:I
    invoke-static {v2, v3}, Lcom/android/keyguard/EmergencyButton;->access$1002(Lcom/android/keyguard/EmergencyButton;I)I

    goto :goto_0
.end method
