.class abstract Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
.super Ljava/lang/Thread;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {p1, p3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$202(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I

    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .locals 5

    :try_start_0
    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSimCheckSimPin:run(), mPin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubscription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v4}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "phone"

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v3}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I
    invoke-static {v4}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    # getter for: Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->this$0:Lcom/android/keyguard/MSimKeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
