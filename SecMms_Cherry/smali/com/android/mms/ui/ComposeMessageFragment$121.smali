.class Lcom/android/mms/ui/ComposeMessageFragment$121;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->createAttachListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAttachShowing:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAirButtonSipCheck:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mEmoticonMode:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.ACTION_HIDE_SIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAirButtonEmoticonCheck:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->toggleEmoticonView()V

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$121;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAirButtonSipCheck:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0
.end method
