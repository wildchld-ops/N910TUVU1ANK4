.class Lcom/android/mms/ui/CMASDialog$6;
.super Landroid/telephony/PhoneStateListener;
.source "CMASDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CMASDialog;->checkCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CMASDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog$6;->this$0:Lcom/android/mms/ui/CMASDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    const-string v0, "Mms/CMASDialog"

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
    const/4 v0, 0x0

    # setter for: Lcom/android/mms/ui/CMASDialog;->inCall:Z
    invoke-static {v0}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    :pswitch_1
    # setter for: Lcom/android/mms/ui/CMASDialog;->inCall:Z
    invoke-static {v3}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    :pswitch_2
    # setter for: Lcom/android/mms/ui/CMASDialog;->inCall:Z
    invoke-static {v3}, Lcom/android/mms/ui/CMASDialog;->access$702(Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
