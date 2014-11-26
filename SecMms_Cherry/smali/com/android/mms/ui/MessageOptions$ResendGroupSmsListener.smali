.class Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResendGroupSmsListener"
.end annotation


# instance fields
.field private mCloseActivity:Z

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDests:[Ljava/lang/String;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 1
    .param p2    # Lcom/android/mms/ui/MessageItem;
    .param p3    # [Ljava/lang/String;
    .param p4    # Lcom/android/mms/data/Conversation;
    .param p5    # Z

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mDests:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mConversation:Lcom/android/mms/data/Conversation;

    iput-boolean p5, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mCloseActivity:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mDests:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mConversation:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mCloseActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
