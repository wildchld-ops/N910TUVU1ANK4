.class Lcom/android/settings/DataUsageSummary$29;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const-string v0, "DataUsage"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$5502(Lcom/android/settings/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    const/16 v1, 0x51

    const/16 v2, 0xb

    # invokes: Lcom/android/settings/DataUsageSummary;->getTimeData(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$5600(Lcom/android/settings/DataUsageSummary;II)V

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/DataUsageSummary;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$5702(Lcom/android/settings/DataUsageSummary;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    const-string v0, "DataUsage"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$5502(Lcom/android/settings/DataUsageSummary;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$29;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DataUsageSummary;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$5702(Lcom/android/settings/DataUsageSummary;Z)Z

    return-void
.end method
