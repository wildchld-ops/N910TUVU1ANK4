.class Lcom/sec/epdg/EpdgService$EpdgDelayedInit;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgDelayedInit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1900(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V

    return-void
.end method
