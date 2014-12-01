.class public abstract Lcom/diotek/ime/framework/input/InputModule$Timer;
.super Ljava/lang/Object;
.source "InputModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/InputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/InputModule$Timer;->mRunning:Z

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/InputModule$Timer;->mRunning:Z

    return v0
.end method

.method public setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/InputModule$Timer;->mRunning:Z

    return-void
.end method
