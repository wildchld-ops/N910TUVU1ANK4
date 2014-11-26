.class public Lcom/android/launcher2/BlendedDarkenView;
.super Landroid/view/View;
.source "BlendedDarkenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BlendedDarkenView$Drawer;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "BlendedDarkenView"

.field private static mIndiciesBuffer:I = 0x0

.field private static mIndiciesData:[S = null

.field private static mProgram:I = 0x0

.field private static mVerticiesBuffer:I = 0x0

.field private static mVerticiesData:[F = null

.field private static maPositionHandle:I = 0x0

.field private static muAlpha:I = 0x0

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nuniform float uAlpha;\nvoid main() {\n  gl_FragColor = vec4(uAlpha);\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "attribute vec2 aPosition;\nvoid main() {\n  gl_Position = vec4(aPosition,0,1.);\n}\n"


# instance fields
.field private loaded:Z

.field final mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/BlendedDarkenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-direct {v0, p0}, Lcom/android/launcher2/BlendedDarkenView$Drawer;-><init>(Lcom/android/launcher2/BlendedDarkenView;)V

    iput-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/BlendedDarkenView;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/BlendedDarkenView;

    iget-boolean v0, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/BlendedDarkenView;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/BlendedDarkenView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/BlendedDarkenView;->loaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/BlendedDarkenView;

    invoke-direct {p0}, Lcom/android/launcher2/BlendedDarkenView;->compilePrograms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/BlendedDarkenView;

    invoke-direct {p0}, Lcom/android/launcher2/BlendedDarkenView;->loadVBOs()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->muAlpha:I

    return v0
.end method

.method private compilePrograms()V
    .locals 2

    const-string v0, "attribute vec2 aPosition;\nvoid main() {\n  gl_Position = vec4(aPosition,0,1.);\n}\n"

    const-string v1, "precision mediump float;\nuniform float uAlpha;\nvoid main() {\n  gl_FragColor = vec4(uAlpha);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/BlendedDarkenView;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->maPositionHandle:I

    sget v0, Lcom/android/launcher2/BlendedDarkenView;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/launcher2/BlendedDarkenView;->muAlpha:I

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/BlendedDarkenView;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/BlendedDarkenView;->loadShader(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    sget-boolean v4, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v4, :cond_3

    const-string v4, "BlendedDarkenView"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "BlendedDarkenView"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "BlendedDarkenView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BlendedDarkenView"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private loadVBOs()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [F

    sput-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    const/4 v7, 0x6

    new-array v7, v7, [S

    sput-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    const/high16 v2, -0x40800000

    const/high16 v4, 0x3f800000

    const/high16 v3, 0x3f800000

    const/high16 v0, -0x40800000

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v9, v2, v4}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v10, v3, v4}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-direct {p0, v7, v13, v3, v0}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    const/4 v8, 0x6

    invoke-direct {p0, v7, v8, v2, v0}, Lcom/android/launcher2/BlendedDarkenView;->setVertex([FIFF)V

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v9, v7, v9

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v11, v7, v11

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v10, v7, v10

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v9, v7, v12

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    aput-short v10, v7, v13

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    const/4 v8, 0x5

    aput-short v12, v7, v8

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesData:[S

    invoke-virtual {v1, v7}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesData:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    if-nez v7, :cond_0

    new-array v5, v10, [I

    invoke-static {v10, v5, v9}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v7, v5, v9

    sput v7, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    aget v7, v5, v11

    sput v7, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    :cond_0
    const v7, 0x8892

    sget v8, Lcom/android/launcher2/BlendedDarkenView;->mVerticiesBuffer:I

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v7, 0x8892

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    const v9, 0x88e4

    invoke-static {v7, v8, v6, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v7, 0x8893

    sget v8, Lcom/android/launcher2/BlendedDarkenView;->mIndiciesBuffer:I

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v7, 0x8893

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    const v9, 0x88e4

    invoke-static {v7, v8, v1, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private setVertex([FIFF)V
    .locals 1
    .param p1    # [F
    .param p2    # I
    .param p3    # F
    .param p4    # F

    add-int/lit8 v0, p2, 0x0

    aput p3, p1, v0

    add-int/lit8 v0, p2, 0x1

    aput p4, p1, v0

    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/launcher2/BlendedDarkenView;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "BlendedDarkenView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    # getter for: Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F
    invoke-static {v0}, Lcom/android/launcher2/BlendedDarkenView$Drawer;->access$000(Lcom/android/launcher2/BlendedDarkenView$Drawer;)F

    move-result v0

    return v0
.end method

.method public onSetAlpha(I)Z
    .locals 4
    .param p1    # I

    const/4 v3, 0x1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BlendedDarkenView;->mDrawer:Lcom/android/launcher2/BlendedDarkenView$Drawer;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000

    div-float/2addr v1, v2

    # setter for: Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F
    invoke-static {v0, v1}, Lcom/android/launcher2/BlendedDarkenView$Drawer;->access$002(Lcom/android/launcher2/BlendedDarkenView$Drawer;F)F

    goto :goto_0
.end method
