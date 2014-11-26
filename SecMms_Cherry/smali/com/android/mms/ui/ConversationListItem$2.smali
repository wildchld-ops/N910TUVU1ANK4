.class Lcom/android/mms/ui/ConversationListItem$2;
.super Ljava/lang/Object;
.source "ConversationListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListItem;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListItem;

.field final synthetic val$contact:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem$2;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItem$2;->val$contact:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem$2;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListItem;->access$100(Lcom/android/mms/ui/ConversationListItem;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem$2;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem$2;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # invokes: Lcom/android/mms/ui/ConversationListItem;->updateFromView()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListItem;->access$200(Lcom/android/mms/ui/ConversationListItem;)V

    :cond_0
    return-void
.end method
