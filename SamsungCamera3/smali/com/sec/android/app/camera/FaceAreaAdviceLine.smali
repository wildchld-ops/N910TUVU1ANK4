.class public Lcom/sec/android/app/camera/FaceAreaAdviceLine;
.super Ljava/lang/Object;
.source "FaceAreaAdviceLine.java"


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->left:I

    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->right:I

    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->top:I

    iput v0, p0, Lcom/sec/android/app/camera/FaceAreaAdviceLine;->bottom:I

    return-void
.end method
