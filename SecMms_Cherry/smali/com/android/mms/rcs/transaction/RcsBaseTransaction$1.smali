.class Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;
.super Ljava/lang/Object;
.source "RcsBaseTransaction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsBaseTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v1, "Mms/RcsBaseTransaction"

    const-string v2, "Bind Service connected"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    invoke-virtual {v0}, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;->getService()Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mFallbackService:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mServiceConnected:Z

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    # invokes: Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->onConnected()V
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->access$000(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Mms/RcsBaseTransaction"

    const-string v1, "Bind Service Disconnected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mServiceConnected:Z

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$1;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mFallbackService:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    return-void
.end method
