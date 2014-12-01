.class public Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
.super Ljava/lang/Object;
.source "QuramAudioFrameData.java"


# instance fields
.field public frameData:[B

.field public frameDataEndTime:Lcom/sec/android/app/camera/quramrecorder/QuramDate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBuffer([BI)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameData:[B

    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameDataEndTime:Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    return-void
.end method
