.class Lcom/sec/epdg/EpdgService$8;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$8;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    const-string v6, "oem_request"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v6, 0x4

    aget-byte v3, v1, v6

    const/4 v6, 0x5

    aget-byte v5, v1, v6

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreferedModeIntent has"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v5, v9, :cond_1

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSONLY_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    :goto_0
    if-eqz v4, :cond_0

    new-array v0, v10, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ims"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "mms"

    aput-object v7, v0, v6

    const-string v6, "cbs"

    aput-object v6, v0, v9

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0, v4}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    :cond_0
    return-void

    :cond_1
    if-ne v3, v9, :cond_2

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->CSPREPERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    :cond_2
    if-ne v3, v10, :cond_3

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANONLY:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLANPREFERRED_GSM:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0
.end method
