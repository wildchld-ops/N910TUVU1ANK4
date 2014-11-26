.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createImageResizeDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$resizableIdx:Ljava/util/ArrayList;

.field final synthetic val$resizeType:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Landroid/widget/CheckBox;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iput-object p2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$mCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$resizeType:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$resizableIdx:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$300(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setRcsEnabledImageSizeAsk(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$resizeType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I
    invoke-static {v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1500(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)I

    move-result v2

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->savePreferences([Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1600(Lcom/android/mms/rcs/transaction/RcsFileTransfer;[Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$8;->val$resizableIdx:Ljava/util/ArrayList;

    # invokes: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->ImageResize(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1700(Lcom/android/mms/rcs/transaction/RcsFileTransfer;Ljava/util/ArrayList;)V

    return-void
.end method
