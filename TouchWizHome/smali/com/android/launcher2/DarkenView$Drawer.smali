.class Lcom/android/launcher2/DarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "DarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DarkenView$Drawer;)F
    .locals 1
    .param p0    # Lcom/android/launcher2/DarkenView$Drawer;

    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DarkenView$Drawer;F)F
    .locals 0
    .param p0    # Lcom/android/launcher2/DarkenView$Drawer;
    .param p1    # F

    iput p1, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 2
    .param p1    # [F

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto :goto_0
.end method
