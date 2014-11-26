.class Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;
.super Ljava/lang/Object;
.source "VOHWRWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

.field final synthetic val$currentLangID:I

.field final synthetic val$scriptType:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;II)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->this$0:Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->val$scriptType:I

    iput p3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->val$currentLangID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->this$0:Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->access$000(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->val$scriptType:I

    iget v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;->val$currentLangID:I

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKeyPressModelForHWR(II)Z

    return-void
.end method
