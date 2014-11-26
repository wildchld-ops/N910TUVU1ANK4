.class Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebCoreThreadWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageNotRespondingRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mWatchdogHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkitsec/WebCoreThreadWatchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebCoreThreadWatchdog;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;

    iput-object p1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)Landroid/os/Handler;
    .locals 1
    .param p0    # Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v1, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x10406a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104069d

    new-instance v3, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$3;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$3;-><init>(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104069f

    new-instance v3, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;-><init>(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$1;

    invoke-direct {v2, p0}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable$1;-><init>(Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
