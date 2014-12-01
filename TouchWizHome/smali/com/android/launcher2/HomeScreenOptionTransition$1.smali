.class Lcom/android/launcher2/HomeScreenOptionTransition$1;
.super Ljava/lang/Object;
.source "HomeScreenOptionTransition.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionTransition;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionTransition$1;->this$0:Lcom/android/launcher2/HomeScreenOptionTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition$1;->this$0:Lcom/android/launcher2/HomeScreenOptionTransition;

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionTransition$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenOptionTransition$1$1;-><init>(Lcom/android/launcher2/HomeScreenOptionTransition$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition$1;->this$0:Lcom/android/launcher2/HomeScreenOptionTransition;

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method
