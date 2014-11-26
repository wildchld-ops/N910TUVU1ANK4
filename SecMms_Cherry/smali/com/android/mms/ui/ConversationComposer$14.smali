.class Lcom/android/mms/ui/ConversationComposer$14;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 5

    const/4 v2, 0x1

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onComposerSipUp"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$900(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    # setter for: Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ConversationComposer;->access$1002(Lcom/android/mms/ui/ConversationComposer;Landroid/view/accessibility/AccessibilityManager;)Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mAccessibilityManagerTemp:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$1000(Lcom/android/mms/ui/ConversationComposer;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "com.android.mms.ui.ConversationListFragment"

    const-string v3, "Search;Compose;Delete;"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/util/UIUtils;->registerAssistantMenu(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    # getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->registerAssistantMenu()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$14;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->invalidateOptionsMenu()V

    return-void
.end method
