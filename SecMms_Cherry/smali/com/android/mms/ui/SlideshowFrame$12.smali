.class Lcom/android/mms/ui/SlideshowFrame$12;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowFrame;->updateControlButtons()V
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

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$12;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$12;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$12;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->updateControlButtons()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$800(Lcom/android/mms/ui/SlideshowFrame;)V

    :cond_0
    return-void
.end method
