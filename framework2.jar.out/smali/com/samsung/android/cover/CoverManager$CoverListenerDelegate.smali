.class Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverListenerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mPersona:Landroid/os/PersonaManager;

.field final synthetic this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mPersona:Landroid/os/PersonaManager;

    iput-object p2, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cover/CoverManager;->access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    # getter for: Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cover/CoverManager;->access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mPersona:Landroid/os/PersonaManager;

    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;-><init>(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;)Landroid/os/PersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method


# virtual methods
.method public coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getListener()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
