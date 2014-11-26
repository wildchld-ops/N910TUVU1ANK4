.class public Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;
.super Ljava/lang/Object;
.source "JniBrilliantRingRenderer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mNativeJNI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrilliantRingEffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    const-string v0, "BrilliantRingRenderer JNI"

    iput-object v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->TAG:Ljava/lang/String;

    const-string v0, "BrilliantRingRenderer JNI"

    const-string v1, "JniBrilliantRingRenderer is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native native_DeInit_JNI(I)V
.end method

.method private static native native_Draw_PhysicsEngine(I)V
.end method

.method private static native native_Init_JNI()I
.end method

.method private static native native_Init_PhysicsEngine(IIIII)V
.end method

.method private static native native_SetTexture(ILjava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method private static native native_SetTextureColor(ILjava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method private static native native_isEmpty(I)I
.end method

.method private static native native_onCustomEvent(IIF)V
.end method

.method private static native native_onKeyEvent(II)V
.end method

.method private static native native_onSensorEvent(IIFFF)V
.end method

.method private static native native_onSurfaceChangedEvent(III)V
.end method

.method private static native native_onTouchEvent(IIII[I[I)V
.end method


# virtual methods
.method public DeInit_PhysicsEngineJNI()V
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_DeInit_JNI(I)V

    return-void
.end method

.method public Draw_PhysicsEngine()V
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_Draw_PhysicsEngine(I)V

    return-void
.end method

.method public Init_PhysicsEngine(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_Init_PhysicsEngine(IIIII)V

    return-void
.end method

.method public Init_PhysicsEngineJNI()V
    .locals 2

    const-string v0, "BrilliantRingRenderer JNI"

    const-string v1, "Init_PhysicsEngineJNI is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_Init_JNI()I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    return-void
.end method

.method public SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;

    const-string v0, "BrilliantRingRenderer JNI"

    const-string v1, "SetBitmapData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_SetTexture(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public SetTextureColor(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/Bitmap;

    const-string v0, "BrilliantRingRenderer JNI"

    const-string v1, "SetBitmapData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_SetTextureColor(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public isEmpty()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_isEmpty(I)I

    move-result v0

    return v0
.end method

.method public onCustomEvent(IF)V
    .locals 1
    .param p1    # I
    .param p2    # F

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_onCustomEvent(IIF)V

    return-void
.end method

.method public onKeyEvent(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_onKeyEvent(II)V

    return-void
.end method

.method public onSensorEvent(IFFF)V
    .locals 1
    .param p1    # I
    .param p2    # F
    .param p3    # F
    .param p4    # F

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_onSensorEvent(IIFFF)V

    return-void
.end method

.method public onSurfaceChangedEvent(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    invoke-static {v0, p1, p2}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_onSurfaceChangedEvent(III)V

    return-void
.end method

.method public onTouchEvent(III[I[I)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # [I
    .param p5    # [I

    iget v0, p0, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->mNativeJNI:I

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/visualeffect/brilliantring/JniBrilliantRingRenderer;->native_onTouchEvent(IIII[I[I)V

    return-void
.end method
