.class Lcom/sec/orca/shop/client/library/ResourceDispatcher$2;
.super Ljava/lang/Object;
.source "ResourceDispatcher.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/orca/shop/client/library/ResourceDispatcher;-><init>(Lcom/sec/orca/shop/client/library/ICacheLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    # getter for: Lcom/sec/orca/shop/client/library/ResourceDispatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->access$4()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
