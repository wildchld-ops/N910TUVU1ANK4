.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V
    .locals 0
    .param p1    # Landroid/media/RemoteDisplayCallback;
    .param p2    # Landroid/media/RemoteDisplayCallback$1;

    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Control"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "terminate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/RemoteDisplayCallback$Listener;->onTerminateRequested()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "RemoteDisplayCallback"

    const-string v8, "send command: UpdateUserInput >> 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v8, "upgd"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "RemoteDisplayCallback"

    const-string v8, "send command: UpdateUserInput >> 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v8, "upgd"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v7, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    # setter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v8, "tcp"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v7, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    # setter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {v9}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v8, "udp"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v7}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v7

    if-ne v7, v2, :cond_6

    const-string v7, "RemoteDisplayCallback"

    const-string v8, "same volume! skip to send command!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # setter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v7, v2}, Landroid/media/RemoteDisplayCallback;->access$402(Landroid/media/RemoteDisplayCallback;I)I

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v7

    if-ne v7, v10, :cond_0

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    const-string v7, "RemoteDisplayCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send command: curr stream vol:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v9}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v8, "vol"

    iget-object v9, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v9}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "state"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "state"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v7

    if-ne v7, v10, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    :cond_8
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "RemoteDisplayCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MODE : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v11, :cond_0

    :try_start_0
    const-string v7, "RemoteDisplayCallback"

    const-string v8, "Thead on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const-string v7, "RemoteDisplayCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$600()Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$600()Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v7

    if-ne v7, v10, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "RemoteDisplayCallback"

    const-string v8, "isBluetoothA2dpOn()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v7, "RemoteDisplayCallback"

    const-string v8, "Thread exception!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v7, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "maxBitrate"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    const-string v7, "RemoteDisplayCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action << android.intent.action.MAR_SLAVE_SMB : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string v8, "smb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v7, v8, v9}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
