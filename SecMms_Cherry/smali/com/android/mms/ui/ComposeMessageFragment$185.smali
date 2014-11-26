.class Lcom/android/mms/ui/ComposeMessageFragment$185;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiMode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->isFloatingSip()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposeEmoticonContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposeEmoticonContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "Emoticon check SIP style changed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideEmoticonPanel()V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->checkComposerHeight()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightLandscape:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightLandscape:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeypadHeightLandscape:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16302(I)I

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPopupEmoticonContainer:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeypadHeightLandscape:I
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16300()I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPopupEmoticonContainer:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightPortrait:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerHeightPortrait:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16400(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$185;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAppBody:Landroid/view/View;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeypadHeightPortrait:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16502(I)I

    goto :goto_1

    :cond_5
    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeypadHeightPortrait:I
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$16500()I

    move-result v0

    goto :goto_2
.end method
