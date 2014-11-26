.class Lcom/android/mms/ui/SplitManager$1;
.super Ljava/lang/Object;
.source "SplitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SplitManager;->animationLayout()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SplitManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SplitManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$000(Lcom/android/mms/ui/SplitManager;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mStartX:I
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$100(Lcom/android/mms/ui/SplitManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mEndX:I
    invoke-static {v2}, Lcom/android/mms/ui/SplitManager;->access$200(Lcom/android/mms/ui/SplitManager;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/SplitManager;->mOnAnimate:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SplitManager;->access$002(Lcom/android/mms/ui/SplitManager;Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mUseSplitMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$300(Lcom/android/mms/ui/SplitManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mX:I
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$400(Lcom/android/mms/ui/SplitManager;)I

    move-result v1

    :goto_1
    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mStartX:I
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$100(Lcom/android/mms/ui/SplitManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mLeftView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$600(Lcom/android/mms/ui/SplitManager;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mOffset:I
    invoke-static {v2}, Lcom/android/mms/ui/SplitManager;->access$700(Lcom/android/mms/ui/SplitManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mCount:I
    invoke-static {v3}, Lcom/android/mms/ui/SplitManager;->access$800(Lcom/android/mms/ui/SplitManager;)I

    move-result v3

    mul-int/2addr v2, v3

    # += operator for: Lcom/android/mms/ui/SplitManager;->mStartX:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SplitManager;->access$112(Lcom/android/mms/ui/SplitManager;I)I

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mStartX:I
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$100(Lcom/android/mms/ui/SplitManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mEndX:I
    invoke-static {v2}, Lcom/android/mms/ui/SplitManager;->access$200(Lcom/android/mms/ui/SplitManager;)I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    iget-object v2, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mEndX:I
    invoke-static {v2}, Lcom/android/mms/ui/SplitManager;->access$200(Lcom/android/mms/ui/SplitManager;)I

    move-result v2

    # setter for: Lcom/android/mms/ui/SplitManager;->mStartX:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SplitManager;->access$102(Lcom/android/mms/ui/SplitManager;I)I

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x3

    # *= operator for: Lcom/android/mms/ui/SplitManager;->mCount:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SplitManager;->access$828(Lcom/android/mms/ui/SplitManager;I)I

    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # invokes: Lcom/android/mms/ui/SplitManager;->animationLayout()Z
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$900(Lcom/android/mms/ui/SplitManager;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SplitManager$1;->this$0:Lcom/android/mms/ui/SplitManager;

    # getter for: Lcom/android/mms/ui/SplitManager;->mWidth:I
    invoke-static {v1}, Lcom/android/mms/ui/SplitManager;->access$500(Lcom/android/mms/ui/SplitManager;)I

    move-result v1

    goto :goto_1
.end method
