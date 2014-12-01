.class Lcom/android/settings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearModemReset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "MasterClearModemReset"

    const-string v2, "Something weird happened"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    const-string v1, "CDMA"

    invoke-static {v1}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MasterClearModemReset"

    const-string v2, "modem CP1 reset done"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    # getter for: Lcom/android/settings/MasterClearModemReset;->mPhone2:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    invoke-static {v1}, Lcom/android/settings/MasterClearModemReset;->access$100(Lcom/android/settings/MasterClearModemReset;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    # getter for: Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/MasterClearModemReset;->access$000(Lcom/android/settings/MasterClearModemReset;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v1, "MasterClearModemReset"

    const-string v2, "Modem reset is done"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    # invokes: Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/settings/MasterClearModemReset;->access$200(Lcom/android/settings/MasterClearModemReset;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "MasterClearModemReset"

    const-string v2, "modem CP2 reset done"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MasterClearModemReset$1;->this$0:Lcom/android/settings/MasterClearModemReset;

    # invokes: Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V
    invoke-static {v1}, Lcom/android/settings/MasterClearModemReset;->access$200(Lcom/android/settings/MasterClearModemReset;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
