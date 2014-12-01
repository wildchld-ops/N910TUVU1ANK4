.class Lcom/android/mms/ui/SlideshowActivity$21;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$21;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$21;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$21;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$2900(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$21;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$2900(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideView;->isSoundMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$21;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->pausePlayer()V

    :cond_0
    return-void
.end method
