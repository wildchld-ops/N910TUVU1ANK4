.class Lcom/android/mms/ui/ManageSDMessages$ModeCallback;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSDMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->showDialog(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03f4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0b0030

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/ManageSDMessages"

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$2000(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v3, Lcom/android/mms/ui/ManageSDMessages;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSDMessages;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1102(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1802(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0031

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v3, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1902(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1802(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    new-instance v3, Lcom/android/mms/menu/SelectionMenu;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/android/mms/menu/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;
    invoke-static {v1, v3}, Lcom/android/mms/ui/ManageSDMessages;->access$1702(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/menu/SelectionMenu;)Lcom/android/mms/menu/SelectionMenu;

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->setMessageListMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/ui/ManageSDMessages;->access$2102(Lcom/android/mms/ui/ManageSDMessages;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback$1;-><init>(Lcom/android/mms/ui/ManageSDMessages$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1102(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2100(Lcom/android/mms/ui/ManageSDMessages;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mSDCardMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/mms/ui/ManageSDMessages;->access$2102(Lcom/android/mms/ui/ManageSDMessages;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2200(Lcom/android/mms/ui/ManageSDMessages;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$2202(Lcom/android/mms/ui/ManageSDMessages;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->setMessageListMode(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2000(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/ManageSDMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemCheckedStateChanged position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getItemId(I)J

    move-result-wide v0

    if-eqz p5, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$2300(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSDMessages;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$2400(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSDMessages;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$2300(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$2400(Lcom/android/mms/ui/ManageSDMessages;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mIsLastItemOfSelectAll:Z
    invoke-static {v2, v5}, Lcom/android/mms/ui/ManageSDMessages;->access$2402(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mIsSelectAllmode:Z
    invoke-static {v2, v5}, Lcom/android/mms/ui/ManageSDMessages;->access$2302(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->updateSelectionMenu()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPopupItemClick(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->updateSelectionMenu()V

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSDMessages;->selectAllList()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v0}, Lcom/android/mms/ui/ManageSDMessages;->unSelectAllList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b03fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const v4, 0x7f0b03f4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1902(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/Button;)Landroid/widget/Button;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$2200(Lcom/android/mms/ui/ManageSDMessages;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1802(Lcom/android/mms/ui/ManageSDMessages;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateSelectionButtonHeight()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-virtual {v1}, Lcom/android/mms/ui/ManageSDMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$1900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/ManageSDMessages"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0440

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1700(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/menu/SelectionMenu;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/menu/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectionMenu:Lcom/android/mms/menu/SelectionMenu;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1700(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/menu/SelectionMenu;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/menu/SelectionMenu;->updateSelectAllMode(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$1800(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$ModeCallback;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
