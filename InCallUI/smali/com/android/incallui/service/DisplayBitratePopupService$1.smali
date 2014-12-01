.class Lcom/android/incallui/service/DisplayBitratePopupService$1;
.super Landroid/os/CountDownTimer;
.source "DisplayBitratePopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/DisplayBitratePopupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/DisplayBitratePopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/DisplayBitratePopupService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    iget-object v0, v0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    const-string v1, "finshed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    iget-object v0, v0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    iget-object v0, v0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    # invokes: Lcom/android/incallui/service/DisplayBitratePopupService;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v1}, Lcom/android/incallui/service/DisplayBitratePopupService;->access$000(Lcom/android/incallui/service/DisplayBitratePopupService;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getFpsAndBitrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    iget-object v0, v0, Lcom/android/incallui/service/DisplayBitratePopupService;->mdisplaybitrateText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "DisplayBitratePopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KHS displaybitrate :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/DisplayBitratePopupService$1;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    # invokes: Lcom/android/incallui/service/DisplayBitratePopupService;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v2}, Lcom/android/incallui/service/DisplayBitratePopupService;->access$000(Lcom/android/incallui/service/DisplayBitratePopupService;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->getFpsAndBitrate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
