.class Lcom/android/launcher2/BlendedDarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "BlendedDarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BlendedDarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F

.field final synthetic this$0:Lcom/android/launcher2/BlendedDarkenView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/BlendedDarkenView$Drawer;)F
    .locals 1
    .param p0    # Lcom/android/launcher2/BlendedDarkenView$Drawer;

    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/BlendedDarkenView$Drawer;F)F
    .locals 0
    .param p0    # Lcom/android/launcher2/BlendedDarkenView$Drawer;
    .param p1    # F

    iput p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 8
    .param p1    # [F

    const v7, 0x8893

    const v6, 0x8892

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->loaded:Z
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$100(Lcom/android/launcher2/BlendedDarkenView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    # invokes: Lcom/android/launcher2/BlendedDarkenView;->compilePrograms()V
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$200(Lcom/android/launcher2/BlendedDarkenView;)V

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    # invokes: Lcom/android/launcher2/BlendedDarkenView;->loadVBOs()V
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView;->access$300(Lcom/android/launcher2/BlendedDarkenView;)V

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/BlendedDarkenView;->loaded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/BlendedDarkenView;->access$102(Lcom/android/launcher2/BlendedDarkenView;Z)Z

    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const v0, 0x800b

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->mProgram:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$400()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$500()I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$600()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->muAlpha:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$800()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    const v2, 0x3feccccd

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$700()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_2
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method
