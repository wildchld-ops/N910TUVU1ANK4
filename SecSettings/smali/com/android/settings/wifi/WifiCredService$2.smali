.class Lcom/android/settings/wifi/WifiCredService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCredService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCredService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v14, "WifiCredService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Action received :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "com.samsung.action.HS20_EXPIRY_TIME_FOUND"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "exipration_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "cred_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # invokes: Lcom/android/settings/wifi/WifiCredService;->scheduleExpiryTimer(Ljava/lang/String;I)V
    invoke-static {v14, v8, v6}, Lcom/android/settings/wifi/WifiCredService;->access$300(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;I)V

    :cond_0
    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const/16 v14, 0xcf

    iput v14, v12, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    const-string v14, "\n"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    :goto_1
    array-length v14, v2

    if-ge v10, v14, :cond_1

    aget-object v14, v2, v10

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x5

    aget-object v14, v3, v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x5

    aget-object v8, v3, v14

    const-string v14, "WifiCredService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Expiration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # invokes: Lcom/android/settings/wifi/WifiCredService;->scheduleExpiryTimer(Ljava/lang/String;I)V
    invoke-static {v14, v8, v6}, Lcom/android/settings/wifi/WifiCredService;->access$300(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v14, "WifiCredService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception occured in WifiCredService:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v14, v14, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Timer;->cancel()V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiCredService$2;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v14, v14, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0
.end method
