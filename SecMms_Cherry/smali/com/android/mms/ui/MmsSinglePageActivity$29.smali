.class Lcom/android/mms/ui/MmsSinglePageActivity$29;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->navigateMsgFolderViewMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1500(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mStartSlideAnim:I
    invoke-static {v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1600(Lcom/android/mms/ui/MmsSinglePageActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$29;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mEndSlideAnim:I
    invoke-static {v2}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1700(Lcom/android/mms/ui/MmsSinglePageActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
