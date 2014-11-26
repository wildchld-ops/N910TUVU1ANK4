.class Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;
.super Lcom/samsung/android/healthcover/IHealthCoverListener$Stub;
.source "HealthCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/healthcover/HealthCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "HealthCoverListener"


# instance fields
.field private final EVENT_FROM_SERVICE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/healthcover/HealthCoverListener;

.field final synthetic this$0:Lcom/samsung/android/healthcover/HealthCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/healthcover/HealthCoverManager;Lcom/samsung/android/healthcover/HealthCoverListener;Landroid/os/Handler;)V
    .locals 2
    .param p2    # Lcom/samsung/android/healthcover/HealthCoverListener;
    .param p3    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->this$0:Lcom/samsung/android/healthcover/HealthCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/healthcover/IHealthCoverListener$Stub;-><init>()V

    const/16 v1, 0x35

    iput v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->EVENT_FROM_SERVICE:I

    iput-object p2, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mListener:Lcom/samsung/android/healthcover/HealthCoverListener;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/healthcover/HealthCoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    :goto_1
    return-void

    :cond_0
    # getter for: Lcom/samsung/android/healthcover/HealthCoverManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/healthcover/HealthCoverManager;->access$000(Lcom/samsung/android/healthcover/HealthCoverManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;)Lcom/samsung/android/healthcover/HealthCoverListener;
    .locals 1
    .param p0    # Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;

    iget-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mListener:Lcom/samsung/android/healthcover/HealthCoverListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/healthcover/HealthCoverListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mListener:Lcom/samsung/android/healthcover/HealthCoverListener;

    return-object v0
.end method

.method public onDataCallback([BI)V
    .locals 3
    .param p1    # [B
    .param p2    # I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/healthcover/HealthCoverManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "HealthCoverListener"

    const-string/jumbo v2, "no handler to get data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
