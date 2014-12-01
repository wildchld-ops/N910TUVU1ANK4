.class Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;
.super Landroid/os/Handler;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method public constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$MessageHandler;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V
    invoke-static {v2, v1, v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1100(Lcom/android/mms/saverestore/SaveRestoreOperation;II)V

    return-void

    :pswitch_0
    const v1, 0x7f0c0382

    const v0, 0x7f0c0381

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0c0186

    const v0, 0x7f0c037f

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0c0186

    const v0, 0x7f0c038e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
