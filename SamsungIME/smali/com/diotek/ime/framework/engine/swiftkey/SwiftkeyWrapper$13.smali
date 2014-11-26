.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

.field final synthetic val$currentLangID:I

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$inputMode:I

.field final synthetic val$isPhonePadMode:Z

.field final synthetic val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iput-object p2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$dir:Ljava/io/File;

    iput-object p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;

    iput p4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$currentLangID:I

    iput p5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$inputMode:I

    iput-boolean p6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$isPhonePadMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    # getter for: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1400()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$dir:Ljava/io/File;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;

    iget v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$currentLangID:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$inputMode:I

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->val$isPhonePadMode:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1300(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1500(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$13;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    :cond_1
    return-void
.end method
