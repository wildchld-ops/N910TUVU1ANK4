.class Lcom/android/mms/ui/EmoticonContainer$6;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emoticon check delete ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$700(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$700(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->checkFocusedTextview()Landroid/widget/EditText;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1102(Lcom/android/mms/ui/EmoticonContainer;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v6, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1302(Lcom/android/mms/ui/EmoticonContainer;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    new-instance v2, Lcom/android/mms/ui/EmoticonContainer$6$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/EmoticonContainer$6$1;-><init>(Lcom/android/mms/ui/EmoticonContainer$6;)V

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1402(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mFocusedEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1100(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1500(Lcom/android/mms/ui/EmoticonContainer;)Z

    move-result v1

    if-nez v1, :cond_3

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emoticon check delete ACTION_MOVE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1300(Lcom/android/mms/ui/EmoticonContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1400(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/EmoticonContainer;->access$1502(Lcom/android/mms/ui/EmoticonContainer;Z)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_4
    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emoticon check delete ACTION_UP or ACTION_CANCEL value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$700(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteTab:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$700(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02024f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1300(Lcom/android/mms/ui/EmoticonContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1400(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v7}, Lcom/android/mms/ui/EmoticonContainer;->access$1402(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mDeleteHandler:Landroid/os/Handler;
    invoke-static {v1, v7}, Lcom/android/mms/ui/EmoticonContainer;->access$1302(Lcom/android/mms/ui/EmoticonContainer;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # setter for: Lcom/android/mms/ui/EmoticonContainer;->mStartMethod:Z
    invoke-static {v1, v6}, Lcom/android/mms/ui/EmoticonContainer;->access$1502(Lcom/android/mms/ui/EmoticonContainer;Z)Z

    :cond_6
    return v5
.end method
