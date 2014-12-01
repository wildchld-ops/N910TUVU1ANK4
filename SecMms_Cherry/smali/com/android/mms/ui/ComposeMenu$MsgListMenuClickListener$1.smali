.class Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$200(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$300(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
