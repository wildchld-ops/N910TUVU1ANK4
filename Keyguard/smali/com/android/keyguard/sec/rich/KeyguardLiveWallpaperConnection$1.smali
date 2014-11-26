.class Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;
.super Landroid/os/Handler;
.source "KeyguardLiveWallpaperConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsConnecting:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    return-void
.end method
