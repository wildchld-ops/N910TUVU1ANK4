.class Lcom/android/mms/ui/MmsSinglePageActivity$1;
.super Landroid/database/ContentObserver;
.source "MmsSinglePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string v0, "Mms/MmsSinglePageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChangeObserver : onChange() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$100(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$100(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setFailedeIcon(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f020295

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$1;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # invokes: Lcom/android/mms/ui/MmsSinglePageActivity;->adjustSubjectWidth()V
    invoke-static {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$200(Lcom/android/mms/ui/MmsSinglePageActivity;)V

    return-void
.end method
