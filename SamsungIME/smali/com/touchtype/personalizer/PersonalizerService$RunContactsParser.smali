.class Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunContactsParser"
.end annotation


# instance fields
.field private mServiceId:I

.field private mServiceName:Ljava/lang/String;

.field private mTotal:I

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V
    .locals 0
    .param p2    # Z
    .param p3    # Ljava/lang/String;
    .param p4    # I

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;

    iput p4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I

    return-void
.end method

.method static synthetic access$2300(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I

    return v0
.end method

.method static synthetic access$2302(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;I)I
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;
    .param p1    # I

    iput p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I

    return p1
.end method

.method static synthetic access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$1300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Attempting to build an ContactsParser object..."

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    new-instance v3, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;-><init>(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
