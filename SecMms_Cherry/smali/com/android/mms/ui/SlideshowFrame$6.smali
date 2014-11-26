.class Lcom/android/mms/ui/SlideshowFrame$6;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowFrame;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$6;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$6;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$6;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->access$200(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method
