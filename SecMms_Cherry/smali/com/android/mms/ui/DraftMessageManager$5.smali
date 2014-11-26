.class Lcom/android/mms/ui/DraftMessageManager$5;
.super Landroid/os/Handler;
.source "DraftMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->getDeleteEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$5;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const v2, 0x7f0c0184

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$5;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$5;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager;->onProgressDlgStart(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$5;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$5;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DraftMessageManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DraftMessageManager;->onProgressDlgCompleted(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
