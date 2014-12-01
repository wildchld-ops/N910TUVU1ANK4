.class Lcom/android/mms/ui/ConversationListFragment$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ConversationListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 17

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const-string v13, "SELD"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$8000(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const-string v13, "MEND"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$8000(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v12, 0x0

    invoke-static {v13, v14, v15, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    new-instance v13, Lcom/android/mms/ui/ConversationListFragment$ModeCallback$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)V

    invoke-static {v12, v2, v13}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v14, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-direct {v14, v15, v3, v12}, Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;Ljava/lang/Long;)V

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/ConversationListFragment;->confirmRegisterAsSpamNumber(Lcom/android/mms/ui/ConversationListFragment$DeleteSpamThreadListener;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v12, 0x0

    invoke-static {v13, v14, v15, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const v13, 0x7f0c03f1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    new-array v6, v12, [J

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$7600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;->startSaveOperation([JZZ)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const-wide/16 v13, 0x1

    invoke-static {v12, v9, v10, v13, v14}, Lcom/android/mms/data/Conversation;->updatePrioritySender(Landroid/content/Context;JJ)I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    invoke-static {v13}, Lcom/android/mms/ui/ConversationListFragment;->access$8100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitThread()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v9, v10, v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v9, v10, v12, v13, v14}, Lcom/android/mms/data/Conversation;->getSmsCount(JLandroid/content/Context;ZZ)I

    move-result v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->splitThread(Lcom/android/mms/data/Conversation;)V
    invoke-static {v12, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$8200(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMarkAsReadOption()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v9, v10, v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->markAsRead()V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v12, 0x0

    invoke-static {v13, v14, v15, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_b

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "number"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "list"

    const-string v13, "blacklist"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v12, v7}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v12, 0x0

    invoke-static {v13, v14, v15, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    if-lez v12, :cond_c

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "number"

    invoke-virtual {v7, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "list"

    const-string v13, "whitelist"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v12, v7}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b03cf -> :sswitch_2
        0x7f0b03d0 -> :sswitch_3
        0x7f0b03d1 -> :sswitch_4
        0x7f0b03d2 -> :sswitch_0
        0x7f0b03d3 -> :sswitch_6
        0x7f0b03d4 -> :sswitch_7
        0x7f0b03d5 -> :sswitch_8
        0x7f0b03d6 -> :sswitch_9
        0x7f0b03d7 -> :sswitch_1
        0x7f0b03f8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Mms/ConversationListFragment"

    const-string v5, "onCreateActionMode()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v4

    if-ne v4, v3, :cond_0

    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "Cancel action mode because ConversationList is out of screen."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "Mms/ConversationListFragment"

    const-string v4, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    invoke-direct {v0}, Lcom/android/mms/freemessage/FreeMessageReceiverService;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationListFragment;->mStatusReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Lcom/android/mms/freemessage/FreeMessageReceiverService;->setHandler(Landroid/os/Handler;)V

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$3902(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$7302(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8502(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5702(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5602(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5502(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5402(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$5302(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$7402(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_d

    :cond_3
    const v2, 0x7f0f000a

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const/high16 v4, 0x7f040000

    invoke-static {v2, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f0b0031

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v4, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7902(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v5, 0x7f0b0030

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v4, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7802(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/mms/menu/SelectionMenu;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v5

    invoke-direct {v2, v4, v5, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v2, p1}, Lcom/android/mms/ui/ConversationListFragment;->access$1702(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$ModeCallback$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback$2;-><init>(Lcom/android/mms/ui/ConversationListFragment$ModeCallback;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v2, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8600(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapterCount:I
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8700(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v4

    if-eq v2, v4, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setMultiMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$8800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setEasyModeComposerDisable(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$8900(Lcom/android/mms/ui/ConversationListFragment;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->resetConversatonList()V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKMRGUI()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->updatePrioritySenderVisibility(ZZ)V
    invoke-static {v2, v3, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$9000(Lcom/android/mms/ui/ConversationListFragment;ZZ)V

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setPrioritySenderDisable(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$9100(Lcom/android/mms/ui/ConversationListFragment;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->unRegisterAssistantMenu()V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    const-string v4, "LSEL"

    invoke-static {v2, v4, v6}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move v2, v3

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$8400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    const v2, 0x7f0f0002

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onDestroyActionMode()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8400(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5700(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1702(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setMultiMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$9200(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1002(Lcom/android/mms/ui/ConversationListFragment;I)I

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getEnableAssistantMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->registerAssistantMenu()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsEasyMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$9300(Lcom/android/mms/ui/ConversationListFragment;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setEasyModeComposerDisable(Z)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$8900(Lcom/android/mms/ui/ConversationListFragment;Z)V

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKMRGUI()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x1

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->updatePrioritySenderVisibility(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$9000(Lcom/android/mms/ui/ConversationListFragment;ZZ)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setPrioritySenderDisable(Z)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$9100(Lcom/android/mms/ui/ConversationListFragment;Z)V

    goto :goto_0
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v6, p2, v3

    if-ltz v6, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0094

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    if-nez v2, :cond_2

    const-string v7, "Mms/ConversationListFragment"

    const-string v8, "onItemCheckedStateChanged cusor is null just return!!!"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p5, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "session_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object v5, v4

    :goto_2
    if-eqz p5, :cond_8

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$7300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "session_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v5, v0

    :goto_4
    if-eqz p5, :cond_a

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$7400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$9700(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$9800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z
    invoke-static {v7, v9}, Lcom/android/mms/ui/ConversationListFragment;->access$9802(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z
    invoke-static {v7, v9}, Lcom/android/mms/ui/ConversationListFragment;->access$9702(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateSelectionMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedSessionIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$7300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedChatIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$7400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->selectAllList()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b03d7

    const/4 v3, 0x1

    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onPrepareActionMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$7802(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$7902(Lcom/android/mms/ui/ConversationListFragment;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->disableAllMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationListFragment;->access$9400(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v3

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->updateMultiActionMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationListFragment;->access$9500(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->enableSelecteMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationListFragment;->access$9600(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsSelectAllmode:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$9702(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsLastItemOfSelectAll:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$9802(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$7800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
