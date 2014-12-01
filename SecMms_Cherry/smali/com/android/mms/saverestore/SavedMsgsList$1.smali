.class Lcom/android/mms/saverestore/SavedMsgsList$1;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$1;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$1;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->getIds()[J
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$000(Lcom/android/mms/saverestore/SavedMsgsList;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$1;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$100(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$1;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$100(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
