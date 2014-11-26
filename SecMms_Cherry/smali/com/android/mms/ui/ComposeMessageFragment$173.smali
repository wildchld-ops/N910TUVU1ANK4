.class Lcom/android/mms/ui/ComposeMessageFragment$173;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14502(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mFontSizeIndex:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->isExtendEditField(I)Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14600(Lcom/android/mms/ui/ComposeMessageFragment;I)Z

    move-result v1

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14500(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setPriority(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setPriorityIcon()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x2

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14502(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$173;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto :goto_0
.end method
