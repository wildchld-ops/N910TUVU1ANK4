.class Lcom/android/incallui/service/IncomingPopupService$9;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/IncomingPopupService;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;

.field final synthetic val$isAnswerViaSpeaker:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iput-boolean p2, p0, Lcom/android/incallui/service/IncomingPopupService$9;->val$isAnswerViaSpeaker:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/IncomingPopupService;->dismissWaitingCallPopup()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->val$isAnswerViaSpeaker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerViaSpeaker()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2900(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->internalAnswer()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$3000(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->hangUpThenAnswer(I)V

    iget-boolean v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->val$isAnswerViaSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$9;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-boolean v1, p0, Lcom/android/incallui/service/IncomingPopupService$9;->val$isAnswerViaSpeaker:Z

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->toggleSpeaker(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/service/IncomingPopupService;->access$900(Lcom/android/incallui/service/IncomingPopupService;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
