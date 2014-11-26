.class Lcom/android/phone/EmergencyCallbackMode$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallbackMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackMode;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

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

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phoneinECMState"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EmergencyCallbackMode"

    const-string v2, "onReceive"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    # invokes: Lcom/android/phone/EmergencyCallbackMode;->finishEmergencyCallbackMode()V
    invoke-static {v1}, Lcom/android/phone/EmergencyCallbackMode;->access$200(Lcom/android/phone/EmergencyCallbackMode;)V

    :cond_0
    return-void
.end method
