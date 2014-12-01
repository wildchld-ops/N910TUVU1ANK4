.class Lcom/android/mms/ui/MessageListAdapter$7;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->collapse(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;

.field final synthetic val$isThreadTitle:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$7;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListAdapter$7;->val$isThreadTitle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$7;->val$isThreadTitle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$7;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->changeShowingThreads()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$7;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->changeShowingBubbles()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
