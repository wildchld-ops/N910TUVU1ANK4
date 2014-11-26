.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9BaseLingInfo"
.end annotation


# instance fields
.field public bLockInvalidated:[Z

.field public bSelListInvalidated:Z

.field public bSymbInvalidated:[Z

.field public bSymbsInfoInvalidated:Z

.field public pWordSymbInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9WordSymbInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;->bSymbInvalidated:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9BaseLingInfo;->bLockInvalidated:[Z

    return-void
.end method
