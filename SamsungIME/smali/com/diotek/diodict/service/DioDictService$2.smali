.class Lcom/diotek/diodict/service/DioDictService$2;
.super Landroid/content/BroadcastReceiver;
.source "DioDictService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/diodict/service/DioDictService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/diodict/service/DioDictService;


# direct methods
.method constructor <init>(Lcom/diotek/diodict/service/DioDictService;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/diodict/service/DioDictService$2;->this$0:Lcom/diotek/diodict/service/DioDictService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lang_str"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x6b6f0000

    const-string v3, "kor"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v1, 0x6b6f0000

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService$2;->this$0:Lcom/diotek/diodict/service/DioDictService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/diotek/diodict/service/DioDictService;->setServiceEnabled(Z)V

    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService$2;->this$0:Lcom/diotek/diodict/service/DioDictService;

    iget-object v3, v3, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService$2;->this$0:Lcom/diotek/diodict/service/DioDictService;

    iget-object v3, v3, Lcom/diotek/diodict/service/DioDictService;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1, v5}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    :cond_3
    iget-object v3, p0, Lcom/diotek/diodict/service/DioDictService$2;->this$0:Lcom/diotek/diodict/service/DioDictService;

    invoke-virtual {v3, v5}, Lcom/diotek/diodict/service/DioDictService;->setServiceEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x656e5553

    goto :goto_1

    :cond_5
    const-string v3, "cze"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v1, 0x63730000

    goto :goto_1

    :cond_6
    const-string v3, "deu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v1, 0x64650000

    goto :goto_1

    :cond_7
    const-string v3, "esp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v1, 0x65730000

    goto :goto_1

    :cond_8
    const-string v3, "fra"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v1, 0x66720000

    goto :goto_1

    :cond_9
    const-string v3, "ita"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v1, 0x69740000

    goto :goto_1

    :cond_a
    const-string v3, "nld"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v1, 0x6e6c0000

    goto :goto_1

    :cond_b
    const-string v3, "pol"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v1, 0x706c0000

    goto :goto_1

    :cond_c
    const-string v3, "prt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v1, 0x70740000

    goto :goto_1

    :cond_d
    const-string v3, "tur"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v1, 0x74720000

    goto/16 :goto_1
.end method
