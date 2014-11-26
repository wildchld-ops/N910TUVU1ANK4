.class Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;
.super Ljava/lang/Object;
.source "SamsungWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SamsungWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/android/launcher2/SamsungWidgetView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SamsungWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    # invokes: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/android/launcher2/SamsungWidgetView;->access$200(Lcom/android/launcher2/SamsungWidgetView;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    # invokes: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v1}, Lcom/android/launcher2/SamsungWidgetView;->access$000(Lcom/android/launcher2/SamsungWidgetView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    # getter for: Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0}, Lcom/android/launcher2/SamsungWidgetView;->access$100(Lcom/android/launcher2/SamsungWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->this$0:Lcom/android/launcher2/SamsungWidgetView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/SamsungWidgetView;->access$102(Lcom/android/launcher2/SamsungWidgetView;Z)Z

    :cond_0
    return-void
.end method
