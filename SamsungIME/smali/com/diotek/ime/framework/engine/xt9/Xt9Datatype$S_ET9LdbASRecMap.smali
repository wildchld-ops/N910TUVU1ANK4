.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9LdbASRecMap"
.end annotation


# instance fields
.field public bMap:[B

.field public wEnabledRecords:S

.field public wLDBID:S

.field public wTotalRecords:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9LdbASRecMap;->bMap:[B

    return-void
.end method
