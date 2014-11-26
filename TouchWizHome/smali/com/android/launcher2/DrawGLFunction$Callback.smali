.class public abstract Lcom/android/launcher2/DrawGLFunction$Callback;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DrawGLFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private functor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/DrawGLFunction$Callback;

    iget v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I
    .locals 0
    .param p0    # Lcom/android/launcher2/DrawGLFunction$Callback;
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return p1
.end method


# virtual methods
.method public abstract drawGL([F)V
.end method
