.class public Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlickGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    sub-int v0, v8, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v4, v5, 0x3

    if-le v2, v4, :cond_0

    if-le v2, v3, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsDeleteMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v8

    if-eqz v8, :cond_0

    if-lez v0, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationComposer;->flickMessage(Z)Z

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move v6, v7

    goto :goto_0

    :cond_2
    if-gez v0, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8, v6}, Lcom/android/mms/ui/ConversationComposer;->flickMessage(Z)Z

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$FlickGestureListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move v6, v7

    goto :goto_0
.end method
