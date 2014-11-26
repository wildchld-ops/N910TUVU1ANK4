.class Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothManager;Lcom/android/phone/BluetoothManager$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/BluetoothManager;
    .param p2    # Lcom/android/phone/BluetoothManager$1;

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/phone/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothManager;->access$302(Lcom/android/phone/BluetoothManager;I)I

    # getter for: Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    # getter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothManager;->access$300(Lcom/android/phone/BluetoothManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothManager;->access$502(Lcom/android/phone/BluetoothManager;I)I

    # getter for: Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/BluetoothManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    # getter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothManager;->access$500(Lcom/android/phone/BluetoothManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v1, "not_update_bt_connecting"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    # getter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothManager;->access$500(Lcom/android/phone/BluetoothManager;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication(Z)V

    goto :goto_0
.end method
