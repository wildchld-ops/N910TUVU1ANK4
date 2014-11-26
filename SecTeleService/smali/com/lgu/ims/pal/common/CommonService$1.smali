.class Lcom/lgu/ims/pal/common/CommonService$1;
.super Lcom/lgu/ims/pal/common/ICommonService$Stub;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgu/ims/pal/common/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lgu/ims/pal/common/CommonService;


# direct methods
.method constructor <init>(Lcom/lgu/ims/pal/common/CommonService;)V
    .locals 0

    iput-object p1, p0, Lcom/lgu/ims/pal/common/CommonService$1;->this$0:Lcom/lgu/ims/pal/common/CommonService;

    invoke-direct {p0}, Lcom/lgu/ims/pal/common/ICommonService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetAccessNetworkInfo()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lgu/ims/pal/common/CommonService$1;->this$0:Lcom/lgu/ims/pal/common/CommonService;

    invoke-virtual {v1}, Lcom/lgu/ims/pal/common/CommonService;->getAccessNetworkInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lgu/ims/pal/common/CommonService$1;->this$0:Lcom/lgu/ims/pal/common/CommonService;

    iget-object v1, v1, Lcom/lgu/ims/pal/common/CommonService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAccessNetworkInfo Value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
