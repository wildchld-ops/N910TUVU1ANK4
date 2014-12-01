.class Lcom/android/mms/transaction/CmasReceiverService$1;
.super Landroid/telephony/PhoneStateListener;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/CmasReceiverService;->checkCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CmasReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$1;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in on call state changed, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "Call state idle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService$1;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialogAgain(Landroid/content/Context;)V

    # getter for: Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->access$300()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService$1;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->access$300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    :cond_0
    # setter for: Lcom/android/mms/transaction/CmasReceiverService;->sIsCmasReceivedInVolteCall:Z
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->access$202(Z)Z

    const/4 v0, 0x0

    # setter for: Lcom/android/mms/transaction/CmasReceiverService;->sCmasLastMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/transaction/CmasReceiverService;->access$302(Landroid/net/Uri;)Landroid/net/Uri;

    sput-boolean v3, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    :pswitch_1
    sput-boolean v4, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    :cond_1
    sput-boolean v4, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
