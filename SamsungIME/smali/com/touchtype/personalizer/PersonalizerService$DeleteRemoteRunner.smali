.class Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;
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
    name = "DeleteRemoteRunner"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

.field private mService:Ljava/lang/String;

.field private mServiceId:I

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mService:Ljava/lang/String;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mId:Ljava/lang/String;

    iput p4, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mServiceId:I

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;-><init>(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;Lcom/touchtype/personalizer/PersonalizerService;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mServiceId:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    new-instance v2, Lcom/touchtype/personalizer/PersonalizationRequest;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mId:Ljava/lang/String;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mService:Ljava/lang/String;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/touchtype/personalizer/PersonalizationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    # setter for: Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;
    invoke-static {v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$902(Lcom/touchtype/personalizer/PersonalizerService;Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationRequest;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$900(Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mPersonalizationListener:Lcom/touchtype/personalizer/PersonalizationListener;

    invoke-virtual {v1, v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->deleteRemoteData(Lcom/touchtype/personalizer/PersonalizationListener;)V

    return-void
.end method
