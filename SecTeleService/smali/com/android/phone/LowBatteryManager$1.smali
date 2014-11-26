.class Lcom/android/phone/LowBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LowBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LowBatteryManager;


# direct methods
.method constructor <init>(Lcom/android/phone/LowBatteryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ACTION_BATTERY_LOW"

    invoke-static {v3}, Lcom/android/phone/LowBatteryManager;->englog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    iget-boolean v3, v3, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    iput-boolean v6, v3, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    invoke-virtual {v3}, Lcom/android/phone/LowBatteryManager;->performBatteryLowProcess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    iget v3, v3, Lcom/android/phone/LowBatteryManager;->mLowBatteryWarningLevel:I

    if-gt v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    iget-boolean v3, v3, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    iput-boolean v6, v3, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    invoke-virtual {v3}, Lcom/android/phone/LowBatteryManager;->performBatteryLowProcess()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/LowBatteryManager$1;->this$0:Lcom/android/phone/LowBatteryManager;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    goto :goto_0
.end method
