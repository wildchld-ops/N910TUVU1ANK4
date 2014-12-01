.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9TracePoint"
.end annotation


# instance fields
.field public nX:J

.field public nY:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;->nX:J

    iput-wide p3, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9TracePoint;->nY:J

    return-void
.end method
