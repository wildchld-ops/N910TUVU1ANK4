.class Lcom/android/settings/deviceinfo/Status$9;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$9;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Status"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$9;->this$0:Lcom/android/settings/deviceinfo/Status;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$1602(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$9;->this$0:Lcom/android/settings/deviceinfo/Status;

    const/16 v1, 0x51

    const/16 v2, 0xd

    # invokes: Lcom/android/settings/deviceinfo/Status;->getOemData(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->access$1800(Lcom/android/settings/deviceinfo/Status;II)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Status"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$9;->this$0:Lcom/android/settings/deviceinfo/Status;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Status;->access$1602(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
