.class Landroid/webkitsec/CallbackProxy$JsResultReceiver;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkitsec/JsResult$ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsResultReceiver"
.end annotation


# instance fields
.field public mJsResult:Landroid/webkitsec/JsPromptResult;

.field private mReady:Z

.field private mTriedToNotifyBeforeReady:Z

.field final synthetic this$0:Landroid/webkitsec/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkitsec/CallbackProxy;)V
    .locals 1

    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkitsec/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkitsec/JsPromptResult;

    invoke-direct {v0, p0}, Landroid/webkitsec/JsPromptResult;-><init>(Landroid/webkitsec/JsResult$ResultReceiver;)V

    iput-object v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V
    .locals 0
    .param p1    # Landroid/webkitsec/CallbackProxy;
    .param p2    # Landroid/webkitsec/CallbackProxy$1;

    invoke-direct {p0, p1}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;)V

    return-void
.end method

.method private notifyCallbackProxy()V
    .locals 2

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkitsec/CallbackProxy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->this$0:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onJsResultComplete(Landroid/webkitsec/JsResult;)V
    .locals 1
    .param p1    # Landroid/webkitsec/JsResult;

    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    goto :goto_0
.end method

.method final setReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mReady:Z

    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mTriedToNotifyBeforeReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->notifyCallbackProxy()V

    :cond_0
    return-void
.end method
