.class Lcom/android/phone/callsettings/PhoneNumberLocator$1;
.super Landroid/os/Handler;
.source "PhoneNumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLanguageChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_DOWNLOAD_FINISH"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_HTTP_EXCEPTION"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_FILE_EXCEPTION"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_VERSION_SAME"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    const-string v1, "handleMessage, EVENT_COPY_FINISH"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
