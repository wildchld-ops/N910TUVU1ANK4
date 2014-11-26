.class final Lcom/android/phone/PhoneUtils$12;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->playCallEndTone(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x1

    const-string v0, "onError: playMediaTone error"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->handleEndCallTunePlayCompleted(Landroid/media/MediaPlayer;)V

    return v1
.end method
