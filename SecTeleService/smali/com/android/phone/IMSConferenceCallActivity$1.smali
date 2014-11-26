.class Lcom/android/phone/IMSConferenceCallActivity$1;
.super Landroid/os/Handler;
.source "IMSConferenceCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[IMSConferenceCallActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage] msg.what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "[IMSConferenceCallActivity]"

    const-string v2, "inside IMSConferenceCallActivity Handler : finishing activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;
    invoke-static {}, Lcom/android/phone/IMSConferenceCallActivity;->access$200()Lcom/android/phone/IMSConferenceCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->activity:Lcom/android/phone/IMSConferenceCallActivity;
    invoke-static {}, Lcom/android/phone/IMSConferenceCallActivity;->access$200()Lcom/android/phone/IMSConferenceCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v1, "[IMSConferenceCallActivity]"

    const-string v2, "inside mHandler : ENABLE_TOAST :  enabling toast."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/IMSConferenceCallActivity;->bToastShowInProgress:Z
    invoke-static {v1, v2}, Lcom/android/phone/IMSConferenceCallActivity;->access$002(Lcom/android/phone/IMSConferenceCallActivity;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$300(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$300(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/phone/IMSConferenceCallActivity;->access$302(Lcom/android/phone/IMSConferenceCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
