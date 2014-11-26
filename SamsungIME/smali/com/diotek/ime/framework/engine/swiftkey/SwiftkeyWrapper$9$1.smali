.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;->this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;->this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$900(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;->this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;->this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLanguagePackList()V
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1000(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9$1;->this$1:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$9;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateEngine()I

    :cond_0
    return-void
.end method
