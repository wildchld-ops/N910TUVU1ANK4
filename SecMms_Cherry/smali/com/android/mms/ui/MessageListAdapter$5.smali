.class Lcom/android/mms/ui/MessageListAdapter$5;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;->setFlickAnimation(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$5;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$5;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    # getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$5;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    # getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$5;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    # getter for: Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListAdapter;->access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$5;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/mms/ui/MessageListAdapter;->mFlickAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
