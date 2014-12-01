.class Lcom/android/mms/ui/MessageListItem$6;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "Mms/MessageListItem"

    const-string v1, "mActiveMoreButton.onClick"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActiveMoreButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/MessageListItem;->mTruncateLongMessages:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$1102(Lcom/android/mms/ui/MessageListItem;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    # invokes: Lcom/android/mms/ui/MessageListItem;->presentMms(Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;ZLcom/android/mms/ui/MessageListItem;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/MessageListItem;->bindBodyTextView(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageListItem;->access$1300(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    # invokes: Lcom/android/mms/ui/MessageListItem;->hideMmsView()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1400(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0
.end method
