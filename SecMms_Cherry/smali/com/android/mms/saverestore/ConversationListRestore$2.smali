.class Lcom/android/mms/saverestore/ConversationListRestore$2;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/ConversationListRestore;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/ConversationListRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/ConversationListRestore$2;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$2;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$300(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/ConversationListRestore$2;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # invokes: Lcom/android/mms/saverestore/ConversationListRestore;->getIds()[J
    invoke-static {v1}, Lcom/android/mms/saverestore/ConversationListRestore;->access$200(Lcom/android/mms/saverestore/ConversationListRestore;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/saverestore/ConversationListRestore$2;->this$0:Lcom/android/mms/saverestore/ConversationListRestore;

    # getter for: Lcom/android/mms/saverestore/ConversationListRestore;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/ConversationListRestore;->access$300(Lcom/android/mms/saverestore/ConversationListRestore;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
