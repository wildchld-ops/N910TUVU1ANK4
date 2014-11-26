.class Lcom/android/mms/ui/ConversationListAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListAdapter;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListAdapter;Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    # getter for: Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListAdapter;->access$000(Lcom/android/mms/ui/ConversationListAdapter;)Lcom/android/mms/hover/ListHoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;Lcom/android/mms/data/Conversation;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
