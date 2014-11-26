.class public Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParam"
.end annotation


# instance fields
.field public scale:D

.field public x_rotate:D

.field public y_rotate:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;->x_rotate:D

    iput-wide v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;->y_rotate:D

    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$ViewParam;->scale:D

    return-void
.end method
