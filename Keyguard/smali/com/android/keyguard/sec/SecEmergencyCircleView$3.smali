.class Lcom/android/keyguard/sec/SecEmergencyCircleView$3;
.super Landroid/telephony/PhoneStateListener;
.source "SecEmergencyCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecEmergencyCircleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecEmergencyCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView$3;->this$0:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1    # Landroid/telephony/ServiceState;

    const-string v0, "SecEmergencyCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView$3;->this$0:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    # setter for: Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->access$402(Lcom/android/keyguard/sec/SecEmergencyCircleView;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView$3;->this$0:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    # invokes: Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateCurrentView()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->access$500(Lcom/android/keyguard/sec/SecEmergencyCircleView;)V

    return-void
.end method
