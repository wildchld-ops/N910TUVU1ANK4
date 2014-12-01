.class Lcom/android/mms/ui/ComposeMessageFragment$165;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initToButtonLayoutForGroup(Lcom/android/mms/data/ContactList;)V
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$165;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$165;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Lcom/android/mms/ui/CustomScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/CustomScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$165;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Lcom/android/mms/ui/CustomScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/CustomScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
