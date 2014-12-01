.class Lcom/android/mms/ui/EmoticonContainer$13;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f0b018b

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b018d

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->setStickerMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    new-instance v1, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v3, v3, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iput-object v1, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    new-instance v1, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v3, v3, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v4, v4, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v5, v5, Lcom/android/mms/ui/EmoticonContainer;->onEmoticonDeleteTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;-><init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    iput-object v1, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v1, v1, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getStickerMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iput-object v4, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0181

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setStickerMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v1, v1, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v1, v1, Lcom/android/mms/ui/EmoticonContainer;->mStickersView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$13;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showEmoticonPanel()V

    goto :goto_2
.end method
