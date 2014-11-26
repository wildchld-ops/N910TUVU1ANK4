.class Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;
.super Landroid/os/CountDownTimer;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgWifiToggleTimer"
.end annotation


# static fields
.field private static final EPDG_WIFI_TOGGLE_TICK:I

.field private static final EPDG_WIFI_TOGGLE_TIMER:I


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG wifi toggle timer finished"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiToggleTimer:Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$3602(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;)Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgWifiToggleTimer;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiToggleTimerFinish()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$3700(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1    # J

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG wifi toggle timer tick"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
