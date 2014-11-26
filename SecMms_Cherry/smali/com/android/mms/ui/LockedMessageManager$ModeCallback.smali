.class Lcom/android/mms/ui/LockedMessageManager$ModeCallback;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field private mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/LockedMessageManager$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/LockedMessageManager;
    .param p2    # Lcom/android/mms/ui/LockedMessageManager$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/LockedMessageManager$ModeCallback;)Landroid/view/Menu;
    .locals 1
    .param p0    # Lcom/android/mms/ui/LockedMessageManager$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v9

    :goto_0
    return v1

    :cond_1
    if-eqz v3, :cond_2

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v1, 0x7f0b03d2

    if-eq v8, v1, :cond_3

    const v1, 0x7f0b03d7

    if-ne v8, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2800(Lcom/android/mms/ui/LockedMessageManager;)V

    move v1, v10

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v1, v9

    goto :goto_0

    :cond_6
    packed-switch v8, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v1, v10

    goto :goto_0

    :pswitch_1
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2900(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iput-boolean v10, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    invoke-virtual {v0, v9, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    iput-boolean v9, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3000(Lcom/android/mms/ui/LockedMessageManager;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v4, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v10, v4, v5}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-nez v7, :cond_a

    move v1, v9

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v3, v7, v9}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    :cond_b
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-nez v7, :cond_c

    move v1, v9

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v3, v7, v10}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-nez v7, :cond_e

    move v1, v9

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v3, v7, v9}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0b03e6
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2402(Lcom/android/mms/ui/LockedMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0030

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2502(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0031

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2602(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

    move-result-object v4

    invoke-direct {v1, v3, v4, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/ui/LockedMessageManager;->access$1902(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/LockedMessageManager$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback$1;-><init>(Lcom/android/mms/ui/LockedMessageManager$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3300(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1    # Landroid/view/ActionMode;

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAnimation:Lcom/android/mms/animation/MsgListSelectionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/animation/MsgListSelectionAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/animation/MsgListSelectionAnimation;->setCheckBoxAnimation(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2402(Lcom/android/mms/ui/LockedMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$1902(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$3100(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3400(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->access$502(Lcom/android/mms/ui/LockedMessageManager;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2702(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager;->updateActionBarTitle()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 15
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v12, p2, v6

    if-ltz v12, :cond_0

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_0

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0b0094

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    if-gez v13, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x1

    :try_start_0
    const-string v13, "transport_type"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v13, "_id"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-wide v2, v9

    const-string v13, "mms"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    neg-long v2, v9

    :cond_3
    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v13

    invoke-virtual {v13, v9, v10, v11}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v10, v11, v14}, Lcom/android/mms/ui/LockedMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)Z

    :goto_2
    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$3900(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$4000(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_4
    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/LockedMessageManager;->access$4002(Lcom/android/mms/ui/LockedMessageManager;Z)Z

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v14, 0x0

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z
    invoke-static {v13, v14}, Lcom/android/mms/ui/LockedMessageManager;->access$3902(Lcom/android/mms/ui/LockedMessageManager;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v13, "colsMap"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v13}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v9, v10, v11, v14}, Lcom/android/mms/ui/LockedMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)Z

    goto :goto_2
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager;->selectAllList()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v6, 0x0

    const v5, 0x7f0b03d7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2502(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2602(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    :cond_0
    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->disableAllMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3500(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    return v4

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->updateMultiActionMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3600(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$800(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # setter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2702(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3800(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3800(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_6
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_8
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

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

    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
