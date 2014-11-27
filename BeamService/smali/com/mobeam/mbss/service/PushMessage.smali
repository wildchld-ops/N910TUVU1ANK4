.class public Lcom/mobeam/mbss/service/PushMessage;
.super Ljava/lang/Object;


# static fields
.field static gson:Lcom/google/a/k;


# instance fields
.field private action:Lcom/mobeam/mbss/service/PushMessage$Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public action2:Lcom/mobeam/mbss/service/PushMessage$Action;

.field public appPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGson()Lcom/google/a/k;
    .locals 1

    sget-object v0, Lcom/mobeam/mbss/service/PushMessage;->gson:Lcom/google/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/k;

    invoke-direct {v0}, Lcom/google/a/k;-><init>()V

    sput-object v0, Lcom/mobeam/mbss/service/PushMessage;->gson:Lcom/google/a/k;

    :cond_0
    sget-object v0, Lcom/mobeam/mbss/service/PushMessage;->gson:Lcom/google/a/k;

    return-object v0
.end method

.method public static unmarshall(Ljava/lang/String;)Lcom/mobeam/mbss/service/PushMessage;
    .locals 2

    invoke-static {}, Lcom/mobeam/mbss/service/PushMessage;->getGson()Lcom/google/a/k;

    move-result-object v0

    const-class v1, Lcom/mobeam/mbss/service/PushMessage;

    invoke-virtual {v0, p0, v1}, Lcom/google/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/mbss/service/PushMessage;

    return-object v0
.end method


# virtual methods
.method public marshall()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mobeam/mbss/service/PushMessage;->getGson()Lcom/google/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/a/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/mobeam/mbss/service/PushMessage$Action;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/mobeam/mbss/service/PushMessage$Action;->REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

    :goto_0
    iput-object v0, p0, Lcom/mobeam/mbss/service/PushMessage;->action:Lcom/mobeam/mbss/service/PushMessage$Action;

    iput-object p1, p0, Lcom/mobeam/mbss/service/PushMessage;->action2:Lcom/mobeam/mbss/service/PushMessage$Action;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushMessage [action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/mbss/service/PushMessage;->action:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/PushMessage;->action2:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/PushMessage;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
