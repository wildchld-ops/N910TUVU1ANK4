.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;

.field final synthetic val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;->val$success:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateSwiftkeyList()V
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    :cond_0
    return-void
.end method
