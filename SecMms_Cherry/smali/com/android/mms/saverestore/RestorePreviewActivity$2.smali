.class Lcom/android/mms/saverestore/RestorePreviewActivity$2;
.super Ljava/lang/Object;
.source "RestorePreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/RestorePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/RestorePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$2;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$2;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$400(Lcom/android/mms/saverestore/RestorePreviewActivity;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$2;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # invokes: Lcom/android/mms/saverestore/RestorePreviewActivity;->getId()[J
    invoke-static {v1}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$300(Lcom/android/mms/saverestore/RestorePreviewActivity;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity$2;->this$0:Lcom/android/mms/saverestore/RestorePreviewActivity;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v0}, Lcom/android/mms/saverestore/RestorePreviewActivity;->access$400(Lcom/android/mms/saverestore/RestorePreviewActivity;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->restoreSmsFromSdCard()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
