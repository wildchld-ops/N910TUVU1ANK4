.class Landroid/webkitsec/WebSettingsClassic$EventHandler;
.super Ljava/lang/Object;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettingsClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final PRIORITY:I = 0x1

.field static final SET_DOUBLE_TAP_TOAST_COUNT:I = 0x2

.field static final SYNC:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkitsec/WebSettingsClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebSettingsClassic;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebSettingsClassic;Landroid/webkitsec/WebSettingsClassic$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;-><init>(Landroid/webkitsec/WebSettingsClassic;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->setRenderPriority()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkitsec/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->createHandler()V

    return-void
.end method

.method private declared-synchronized createHandler()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->setRenderPriority()V

    new-instance v0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;-><init>(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V

    iput-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setRenderPriority()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->HIGH:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_2

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mRenderPriority:Landroid/webkitsec/WebSettings$RenderPriority;
    invoke-static {v0}, Landroid/webkitsec/WebSettingsClassic;->access$600(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/WebSettings$RenderPriority;

    move-result-object v0

    sget-object v2, Landroid/webkitsec/WebSettings$RenderPriority;->LOW:Landroid/webkitsec/WebSettings$RenderPriority;

    if-ne v0, v2, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
