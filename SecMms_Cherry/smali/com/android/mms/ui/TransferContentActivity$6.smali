.class Lcom/android/mms/ui/TransferContentActivity$6;
.super Ljava/lang/Object;
.source "TransferContentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TransferContentActivity;->showAddAttachmentDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TransferContentActivity;

.field final synthetic val$adapter:Lcom/android/mms/ui/IconListAdapter;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TransferContentActivity;Lcom/android/mms/ui/IconListAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TransferContentActivity$6;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    iput-object p2, p0, Lcom/android/mms/ui/TransferContentActivity$6;->val$adapter:Lcom/android/mms/ui/IconListAdapter;

    iput-boolean p3, p0, Lcom/android/mms/ui/TransferContentActivity$6;->val$toReplaceMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$6;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    # getter for: Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/TransferContentActivity;->access$200(Lcom/android/mms/ui/TransferContentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$6;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    # getter for: Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/TransferContentActivity;->access$200(Lcom/android/mms/ui/TransferContentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity$6;->this$0:Lcom/android/mms/ui/TransferContentActivity;

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mHandleTransferAttachmentHandler:Lcom/android/mms/util/HandleTransferAttachment;

    iget-object v1, p0, Lcom/android/mms/ui/TransferContentActivity$6;->val$adapter:Lcom/android/mms/ui/IconListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/IconListAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/TransferContentActivity$6;->val$toReplaceMedia:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleTransferAttachment;->startActivityForAttachMedia(IZ)V

    return-void
.end method
