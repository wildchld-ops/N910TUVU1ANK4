.class public Lcom/sec/android/app/camera/PreviewFrameLayout;
.super Landroid/view/SurfaceView;
.source "PreviewFrameLayout.java"


# instance fields
.field private mAspectRatio:D

.field private mPreviewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCurAspectRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    return-wide v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setAspectRatio(D)Z
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mAspectRatio:D

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFixedOrientation(IIIII)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->setFixedOrientation(IIIII)V

    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/PreviewFrameLayout;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method
