.class Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/IncomingPopupService;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "AutoAnsTimer onFinish "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->showInCallUIForAnswerMemo(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->access$2300(Lcom/android/incallui/service/IncomingPopupService;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$AutoAnsTimer;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
