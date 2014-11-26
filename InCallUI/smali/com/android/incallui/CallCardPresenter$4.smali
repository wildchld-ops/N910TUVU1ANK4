.class Lcom/android/incallui/CallCardPresenter$4;
.super Landroid/os/Handler;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message not expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/CallCardPresenter;->updateCallerInfoCard(IZ)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "supp service response timed out, force enable modify panel"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setSuppService(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$4;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;
    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    # invokes: Lcom/android/incallui/CallCardPresenter;->updateVideoBtn(Lcom/android/services/telephony/common/Call;)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallCardPresenter;->access$400(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/Call;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateModifyPannel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
