.class public Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteSpamThreadListener"
.end annotation


# instance fields
.field private mConv:Lcom/android/mms/data/Conversation;

.field private mDeleteSpamThread:Z

.field private mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;Ljava/lang/Long;)V
    .locals 2
    .param p2    # Lcom/android/mms/data/Conversation;
    .param p3    # Ljava/lang/Long;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mConv:Lcom/android/mms/data/Conversation;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mThreadId:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mDeleteSpamThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v0

    const/16 v1, 0x70a

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mThreadId:J

    invoke-direct {v4, v7, v8, v5}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mConv:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mConv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mConv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_2
    return-void
.end method

.method public setDeleteSpamThread(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;->mDeleteSpamThread:Z

    return-void
.end method
