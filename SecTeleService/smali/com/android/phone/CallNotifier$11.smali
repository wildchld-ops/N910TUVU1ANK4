.class Lcom/android/phone/CallNotifier$11;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->playRBTSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$11;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/phone/CallNotifier$11;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "playRBTSound: setOnCompletionListener : onError"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mRBTMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$4502(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    return v0
.end method
