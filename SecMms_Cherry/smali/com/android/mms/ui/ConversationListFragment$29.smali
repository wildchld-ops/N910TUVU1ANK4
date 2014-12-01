.class Lcom/android/mms/ui/ConversationListFragment$29;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "Priority sender create context menu"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    iget v3, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->getCount()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v3

    iget v4, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->getAddress(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_1
    const/16 v3, 0x12c

    const v4, 0x7f0c0466

    invoke-interface {p1, v6, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedContactUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$9902(Lcom/android/mms/ui/ConversationListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    const/16 v3, 0x12d

    const v4, 0x7f0c004a

    invoke-interface {p1, v6, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$29;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedAddress:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$10002(Lcom/android/mms/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    const/16 v3, 0x12e

    const v4, 0x7f0c004b

    invoke-interface {p1, v6, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method
