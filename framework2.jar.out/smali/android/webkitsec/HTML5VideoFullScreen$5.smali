.class Landroid/webkitsec/HTML5VideoFullScreen$5;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5VideoFullScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$5;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$5;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # setter for: Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$1202(Landroid/webkitsec/HTML5VideoFullScreen;I)I

    return-void
.end method
