.class Lcom/android/mms/ui/MmsRichContainer$7;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$7;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$7;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$1400(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    const-string v3, "Mms/MmsRichContainer"

    const-string v5, "page is null !!!"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    const-string v3, "Mms/MmsRichContainer"

    const-string v5, "richContainer is null !!!"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$7;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v4, v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$7;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer$7;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method
