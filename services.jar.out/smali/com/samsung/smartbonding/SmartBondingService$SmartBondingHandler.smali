.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
.super Landroid/os/Handler;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBondingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EVENT_ENABLE_SB_INTERFACES called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_3

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mDisableBySIOP is true so that convert sb state as idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    const/4 v1, 0x5

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_2
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_BOOT_COMPLETED called / enable : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_4
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ENABLE_SB called / enable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v3}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)V

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$1700(Lcom/samsung/smartbonding/SmartBondingService;Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$1502(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    const-string v1, "VZW"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->setSBNotificationEnabled(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBVzwStateChangedIntent(IJJ)V
    invoke-static/range {v1 .. v6}, Lcom/samsung/smartbonding/SmartBondingService;->access$1800(Lcom/samsung/smartbonding/SmartBondingService;IJJ)V

    monitor-exit v16

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    goto/16 :goto_3

    :pswitch_4
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_6
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "EVENT_MOBILE_CONNECTION_RENEW called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfacesEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_8
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_SB_STATE called / mDisableBySIOP "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_13

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "sb state is on working"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2500(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x3

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_13
    :goto_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    :cond_14
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_13

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "sb state is on enabled"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x2

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_13

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "sb state is on idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x1

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    if-eqz v1, :cond_13

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "sb state is on none"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_5

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v8, ""

    const/4 v13, 0x1

    const/4 v1, 0x2

    if-ne v12, v1, :cond_1b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407ef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_1b
    const/4 v1, 0x3

    if-ne v12, v1, :cond_1c

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_1c
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v13, 0x0

    :cond_1d
    const/4 v1, 0x4

    if-ne v12, v1, :cond_1e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_1e
    const/4 v1, 0x5

    if-ne v12, v1, :cond_1f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_1f
    const/4 v1, 0x6

    if-ne v12, v1, :cond_20

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407ee

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_20
    const/4 v1, 0x7

    if-ne v12, v1, :cond_21

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_21
    const/16 v1, 0x8

    if-ne v12, v1, :cond_22

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_22
    const/16 v1, 0x9

    if-ne v12, v1, :cond_23

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v13, 0x0

    :cond_23
    const/16 v1, 0xa

    if-ne v12, v1, :cond_24

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v13, 0x0

    :cond_24
    const/16 v1, 0xb

    if-ne v12, v1, :cond_25

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_25
    const/16 v1, 0xc

    if-ne v12, v1, :cond_26

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407f8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :cond_26
    const/16 v1, 0xd

    if-ne v12, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v3, 0xd

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0xe

    if-ne v12, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v3, 0xe

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3100(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)V

    :cond_29
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3300(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V

    :goto_6
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    :cond_2a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_6

    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_6

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$3700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$3602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v1

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    if-eqz v14, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    iget-object v4, v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$3800(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    :cond_2c
    monitor-exit v3

    goto/16 :goto_0

    :catchall_8
    move-exception v1

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v1

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    :try_start_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3900(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3900(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "start_poll"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$3902(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3900(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v8, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2e
    :goto_7
    monitor-exit v3

    goto/16 :goto_0

    :catchall_9
    move-exception v1

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v1

    :cond_2f
    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-string v4, ""

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$3902(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
