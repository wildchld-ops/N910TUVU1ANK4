.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesResult"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

.field private id:I

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    iput p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    iput-object p3, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;ILjava/lang/Object;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    iput p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    iput-object p3, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setId(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V

    return-void
.end method

.method private setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    return-void
.end method

.method private setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-void
.end method

.method private setId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEvent()Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;->id:I

    return v0
.end method
