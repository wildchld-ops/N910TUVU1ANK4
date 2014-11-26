.class Lcom/android/mms/ui/MmsSlideView$1$1$1;
.super Ljava/lang/Object;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSlideView$1$1;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MmsSlideView$1$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1;->this$0:Lcom/android/mms/ui/MmsSlideView;

    # getter for: Lcom/android/mms/ui/MmsSlideView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSlideView;->access$900(Lcom/android/mms/ui/MmsSlideView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "HOVS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1;->val$messageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1;->val$contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v0, v0, Lcom/android/mms/ui/MmsSlideView$1;->val$messageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSlideView$1$1$1;->this$2:Lcom/android/mms/ui/MmsSlideView$1$1;

    iget-object v1, v1, Lcom/android/mms/ui/MmsSlideView$1$1;->this$1:Lcom/android/mms/ui/MmsSlideView$1;

    iget-object v1, v1, Lcom/android/mms/ui/MmsSlideView$1;->val$contentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mms/export/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
