.class Lcom/android/mms/ui/SlideshowFrame$2;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowFrame;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$2;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$2;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$200(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method
