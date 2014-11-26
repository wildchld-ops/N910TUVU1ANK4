.class Lcom/android/mms/ui/SlideshowActivity$9;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->launchMessageViewer(ZJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$newer:Z

.field final synthetic val$runIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/content/Intent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$runIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$newer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$runIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$newer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const v1, 0x7f050004

    const v2, 0x7f050005

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
