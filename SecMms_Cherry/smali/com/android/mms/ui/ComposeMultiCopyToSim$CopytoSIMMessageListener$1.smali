.class Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;
.super Ljava/lang/Object;
.source "ComposeMultiCopyToSim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

.field final synthetic val$msgAddressList:Ljava/util/ArrayList;

.field final synthetic val$msgBodyList:Ljava/util/ArrayList;

.field final synthetic val$msgTimeList:Ljava/util/ArrayList;

.field final synthetic val$msgTypeList:Ljava/util/ArrayList;

.field final synthetic val$toastFail:Landroid/widget/Toast;

.field final synthetic val$toastMemoryfullSIM:Landroid/widget/Toast;

.field final synthetic val$toastSuccess:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Toast;Landroid/widget/Toast;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgTimeList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgBodyList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgAddressList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgTypeList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastSuccess:Landroid/widget/Toast;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastMemoryfullSIM:Landroid/widget/Toast;

    iput-object p8, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastFail:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgTimeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgBodyList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgAddressList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$msgTypeList:Ljava/util/ArrayList;

    # invokes: Lcom/android/mms/ui/ComposeMultiCopyToSim;->copyToSimSelectedSMS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$300(Lcom/android/mms/ui/ComposeMultiCopyToSim;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastSuccess:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastMemoryfullSIM:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;->val$toastFail:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
