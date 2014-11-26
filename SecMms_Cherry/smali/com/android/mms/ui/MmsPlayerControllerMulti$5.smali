.class Lcom/android/mms/ui/MmsPlayerControllerMulti$5;
.super Landroid/view/View$AccessibilityDelegate;
.source "MmsPlayerControllerMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    # getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$100(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    # getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$100(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$5;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    # getter for: Lcom/android/mms/ui/MmsPlayerControllerMulti;->mProgressContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->access$200(Lcom/android/mms/ui/MmsPlayerControllerMulti;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
