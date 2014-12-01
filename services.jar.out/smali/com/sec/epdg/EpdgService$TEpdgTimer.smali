.class Lcom/sec/epdg/EpdgService$TEpdgTimer;
.super Landroid/os/CountDownTimer;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TEpdgTimer"
.end annotation


# static fields
.field private static final EPDG_RATE_LIMIT_TICK:I = 0x2710


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$TEpdgTimer;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG TEpdg timer finished"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$TEpdgTimer;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mTEpdgTimer:Lcom/sec/epdg/EpdgService$TEpdgTimer;
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$3802(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$TEpdgTimer;)Lcom/sec/epdg/EpdgService$TEpdgTimer;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$TEpdgTimer;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG TEpdg timer tick"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
