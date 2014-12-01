.class Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;
.super Landroid/os/CountDownTimer;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmrBandSimulationTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.WB_AMR"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "EXTRA_STATE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/incallui/InCallActivity$AmrBandSimulationTimer;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->startAmrBandTimer()V

    return-void

    :cond_0
    const-string v3, "EXTRA_STATE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
