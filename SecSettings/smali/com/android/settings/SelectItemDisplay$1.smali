.class Lcom/android/settings/SelectItemDisplay$1;
.super Ljava/lang/Object;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectItemDisplay;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectItemDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$1;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$1;->this$0:Lcom/android/settings/SelectItemDisplay;

    # getter for: Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$1;->this$0:Lcom/android/settings/SelectItemDisplay;

    # getter for: Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
