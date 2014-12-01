.class public Lcom/sec/knox/container/util/DaemonConnector$Command;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;

    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/util/DaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonConnector$Command;
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
