.class Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateSpamGroupChatListener"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v11, 0x0

    check-cast p1, Landroid/app/AlertDialog;

    const v9, 0x7f0b0059

    invoke-virtual {p1, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    const-string v10, "sendto"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_4

    invoke-virtual {v0, v3, v11, v11}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0b004e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    const-string v10, "sendto"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v9}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v9

    instance-of v9, v9, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v9}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    goto :goto_0
.end method
