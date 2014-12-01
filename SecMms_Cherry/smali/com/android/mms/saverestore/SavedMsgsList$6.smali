.class Lcom/android/mms/saverestore/SavedMsgsList$6;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SavedMsgsList;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$6;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$6;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mOperation:I
    invoke-static {v0}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1400(Lcom/android/mms/saverestore/SavedMsgsList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$6;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x1

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->renameFile(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1500(Lcom/android/mms/saverestore/SavedMsgsList;Z)V

    iget-object v0, p0, Lcom/android/mms/saverestore/SavedMsgsList$6;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
