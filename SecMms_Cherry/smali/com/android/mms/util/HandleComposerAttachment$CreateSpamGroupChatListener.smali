.class Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/HandleComposerAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateSpamGroupChatListener"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field mRequestCode:I

.field mResultCode:I

.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->mRequestCode:I

    iput p3, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->mResultCode:I

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    check-cast p1, Landroid/app/AlertDialog;

    const v11, 0x7f0b0059

    invoke-virtual {p1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

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

    iget-object v11, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->mIntent:Landroid/content/Intent;

    const-string v12, "result"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v11

    if-ge v3, v11, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v3, v11, v12}, Lcom/android/mms/freemessage/ChooseSpamNumberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v11, 0x7f0b004e

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/util/HandleComposerAttachment$CreateSpamGroupChatListener;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->requestInviteChat(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
