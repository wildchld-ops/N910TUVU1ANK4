.class public Lcom/mobeam/mbss/service/Report;
.super Ljava/lang/Object;


# instance fields
.field public appID:Ljava/lang/String;

.field public packName:Ljava/lang/String;

.field public props:Lcom/mobeam/mbss/service/Props;

.field public ts:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobeam/mbss/service/Props;

    invoke-direct {v0}, Lcom/mobeam/mbss/service/Props;-><init>()V

    iput-object v0, p0, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobeam/mbss/service/Props;

    invoke-direct {v0}, Lcom/mobeam/mbss/service/Props;-><init>()V

    iput-object v0, p0, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    iput-object p1, p0, Lcom/mobeam/mbss/service/Report;->packName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobeam/mbss/service/Report;->appID:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobeam/mbss/service/Report;->ts:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report [appID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->ts:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->packName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", props="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
