.class Lcom/sec/epdg/EpdgTestRilAdapter$1;
.super Ljava/lang/Object;
.source "EpdgTestRilAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTestRilAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgTestRilAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgTestRilAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter;->access$002(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    iget-object v2, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;-><init>(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$1;)V

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter;->access$102(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    iget-object v1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    # getter for: Lcom/sec/epdg/EpdgTestRilAdapter;->rilConnInitInfo:Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;
    invoke-static {v1}, Lcom/sec/epdg/EpdgTestRilAdapter;->access$100(Lcom/sec/epdg/EpdgTestRilAdapter;)Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgTestRilAdapter;->configureInterfaceInit(Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter;->access$300(Lcom/sec/epdg/EpdgTestRilAdapter;Lcom/sec/epdg/EpdgTestRilAdapter$RILConnectionInfo;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgTestRilAdapter$1;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgTestRilAdapter;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgTestRilAdapter;->access$002(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
