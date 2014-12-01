.class public Lcom/sec/android/app/camera/RecordingData;
.super Ljava/lang/Object;
.source "RecordingData.java"


# instance fields
.field private mRecordingOnlyBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public getRecordingData()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public setRecordingData(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/RecordingData;->mRecordingOnlyBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
