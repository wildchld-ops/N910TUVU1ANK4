.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9ASpc"
.end annotation


# instance fields
.field public eMode:B

.field public eSearchFilter:B

.field public sCmpData:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;

.field public wMaxSlstCount:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASpc;->sCmpData:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9ASPCCompareData;

    return-void
.end method
