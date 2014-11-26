.class public Lcom/sec/orca/shop/client/library/MultiClickBlocker;
.super Ljava/lang/Object;
.source "MultiClickBlocker.java"


# static fields
.field private static mClickAllowHandler:Landroid/os/Handler;

.field private static mIsClickBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    new-instance v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker$1;

    invoke-direct {v0}, Lcom/sec/orca/shop/client/library/MultiClickBlocker$1;-><init>()V

    sput-object v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mClickAllowHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    return-void
.end method

.method public static setAndCheckClickBlocked()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sput-boolean v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    sget-object v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mClickAllowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    goto :goto_0
.end method

.method public static setAndCheckClickBlocked(J)Z
    .locals 3
    .param p0    # J

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sput-boolean v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mIsClickBlocked:Z

    sget-object v0, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->mClickAllowHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    goto :goto_0
.end method
