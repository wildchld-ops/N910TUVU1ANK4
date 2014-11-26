.class Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;


# direct methods
.method public constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$100(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$700(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mSaveError:Z
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3402(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mSaveError:Z
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3402(Lcom/android/mms/saverestore/SavedMsgsList;Z)Z

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->refreshList()V
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$400(Lcom/android/mms/saverestore/SavedMsgsList;)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$BackgroundQueryHandler;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->setSavePanelInvisible()V
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3500(Lcom/android/mms/saverestore/SavedMsgsList;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
