.class Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;->this$1:Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;->this$1:Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->access$400(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;->this$1:Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->access$400(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
