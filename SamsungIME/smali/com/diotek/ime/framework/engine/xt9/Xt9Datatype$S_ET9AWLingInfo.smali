.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWLingInfo"
.end annotation


# instance fields
.field public Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingPrivate;

.field public pLingCmnInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingCmnInfo;

.field public sMDBInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWMDBInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWMDBInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWMDBInfo;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingInfo;->sMDBInfo:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWMDBInfo;

    new-instance v0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingPrivate;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingPrivate;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingInfo;->Private:Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWLingPrivate;

    return-void
.end method
