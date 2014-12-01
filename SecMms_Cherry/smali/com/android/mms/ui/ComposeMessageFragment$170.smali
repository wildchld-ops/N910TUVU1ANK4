.class Lcom/android/mms/ui/ComposeMessageFragment$170;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initGroupCheckBoxBannerUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->setGroupConversation(ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setGroupMessageComposing(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->setReplyAllGroupConversation(ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setGroupMessageComposing(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v1, 0x7f0c02dc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setGroupConversation(ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setGroupMessageComposing(Z)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->setReplyAllGroupConversation(ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setGroupMessageComposing(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$170;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v1, 0x7f0c0227

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    goto :goto_1
.end method
