.class Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecEmergencyStatusContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecEmergencyStatusContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecEmergencyStatusContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;->this$0:Lcom/android/keyguard/sec/SecEmergencyStatusContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .param p1    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyStatusContainer$1;->this$0:Lcom/android/keyguard/sec/SecEmergencyStatusContainer;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    # invokes: Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->updateEmergencyContainer(II)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/SecEmergencyStatusContainer;->access$000(Lcom/android/keyguard/sec/SecEmergencyStatusContainer;II)V

    return-void
.end method
