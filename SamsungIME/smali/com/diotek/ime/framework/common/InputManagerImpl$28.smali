.class Lcom/diotek/ime/framework/common/InputManagerImpl$28;
.super Landroid/database/ContentObserver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1    # Z

    const/4 v10, 0x2

    const/4 v6, 0x1

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IMI] mHandGripChangeObserver - mIsFlatMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsFlatMode:Z
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v7

    if-eq v7, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isOneHandKeypadRightSet()Z

    move-result v0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandSwitchStateSettingValue()I

    move-result v5

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[IMI] mHandGripChangeObserver - oneHandSwitchState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v6, :cond_2

    if-ne v5, v10, :cond_3

    :cond_2
    if-ne v5, v10, :cond_4

    move v1, v6

    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mPreUseOneHandSettingValue:I
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6300(Lcom/diotek/ime/framework/common/InputManagerImpl;)I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setOneHandKeypadRightSet(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->changeToOneHandKeyboard(Z)V
    invoke-static {v7, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$6400(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEmoticonMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v7

    const-string v8, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setEmoticonCategory(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-eq v0, v1, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setOneHandKeypadRightSet(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v7, :cond_3

    iget v7, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/diotek/ime/framework/view/ViewController;->setOneHandLayoutShownWithOption(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2900(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto :goto_2
.end method
