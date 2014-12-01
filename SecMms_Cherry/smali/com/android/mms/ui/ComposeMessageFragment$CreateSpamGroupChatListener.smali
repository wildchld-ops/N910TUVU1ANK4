.class Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateSpamGroupChatListener"
.end annotation


# instance fields
.field mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->mRecipientList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->mRecipientList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    check-cast p1, Landroid/app/AlertDialog;

    const v11, 0x7f0b0059

    invoke-virtual {p1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->mRecipientList:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8}, Landroid/widget/AdapterView;->getCount()I

    move-result v11

    if-ge v5, v11, :cond_5

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v11, v12}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v11, 0x7f0b004e

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v8, v5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V
    invoke-static {v11, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13500(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mCheckSpamNumberDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$18800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0
.end method
