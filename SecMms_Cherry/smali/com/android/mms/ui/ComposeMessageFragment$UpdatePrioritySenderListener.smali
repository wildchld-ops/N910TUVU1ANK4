.class Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;
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
    name = "UpdatePrioritySenderListener"
.end annotation


# instance fields
.field mContact:Lcom/android/mms/data/Contact;

.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;ZLcom/android/mms/data/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->mSave:Z

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    check-cast p1, Landroid/app/AlertDialog;

    const v13, 0x7f0b0053

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v13

    if-ge v6, v13, :cond_6

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v6, v13, v14}, Lcom/android/mms/ui/UpdatePrioritySenderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b004e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->mSave:Z

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_2

    const-string v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    instance-of v13, v13, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/glance/GlanceUtils;->deletePrioritySender(Landroid/content/Context;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_5

    const-string v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    instance-of v13, v13, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v13}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->mSave:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    if-le v2, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v15, 0x7f0c0496

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/ui/ConversationComposer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v15, 0x7f0c0497

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/ui/ConversationComposer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x1

    if-le v10, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v15, 0x7f0c0498

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/ui/ConversationComposer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$UpdatePrioritySenderListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const v15, 0x7f0c0499

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/ui/ConversationComposer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
