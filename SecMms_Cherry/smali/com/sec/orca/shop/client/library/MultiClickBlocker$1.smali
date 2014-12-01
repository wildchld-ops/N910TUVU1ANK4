.class Lcom/sec/orca/shop/client/library/MultiClickBlocker$1;
.super Landroid/os/Handler;
.source "MultiClickBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/orca/shop/client/library/MultiClickBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/orca/shop/client/library/MultiClickBlocker;->access$0(Z)V

    return-void
.end method
