.class Lcom/android/mms/ui/ConversationListFragment$14;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment;->mImmConv:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListFragment;->mSearchPlate:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$14;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->showSip()V

    goto :goto_0
.end method
