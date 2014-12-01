.class Lcom/android/mms/ui/ComposeMessageFragment$125;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$125;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onRichContainerFocusChange(Z)V

    goto :goto_2
.end method
