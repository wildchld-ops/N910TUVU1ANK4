.class Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;
.super Ljava/lang/Object;
.source "ComposeMultiCopyToSim.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMultiCopyToSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopytoSIMMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMultiCopyToSim;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v5

    const-string v23, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-object/from16 v24, v0

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static/range {v24 .. v24}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0c0187

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v5, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c00a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c019e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$200(Lcom/android/mms/ui/ComposeMultiCopyToSim;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SIM"

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "SIM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "SIM"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v15

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/16 v4, 0x40

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    new-instance v23, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener$1;-><init>(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Toast;Landroid/widget/Toast;Landroid/widget/Toast;)V

    const-string v5, "copy all"

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;->this$0:Lcom/android/mms/ui/ComposeMultiCopyToSim;

    # getter for: Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    return-void

    :cond_5
    const/16 v21, -0x1

    goto :goto_0

    :cond_6
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_7
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
