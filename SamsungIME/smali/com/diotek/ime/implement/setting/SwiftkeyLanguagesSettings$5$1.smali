.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;

.field final synthetic val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateListComplete()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateListFail()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_4

    const-string v0, "SwiftKeySample"

    const-string v1, "SwiftkeyLanguageSettings.langaugelistlistner : Fail to download language list (STORAGE_UNAVAILABLE)"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$5$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_5

    const-string v0, "SwiftKeySample"

    const-string v1, "SwiftkeyLanguageSettings.langaugelistlistner : Fail to download language list (CONFIG_FILE_INVALID)"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "SwiftKeySample"

    const-string v1, "SwiftkeyLanguageSettings.langaugelistlistner : Fail to download language list (FAILED)"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
