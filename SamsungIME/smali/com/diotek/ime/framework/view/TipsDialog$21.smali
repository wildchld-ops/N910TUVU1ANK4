.class Lcom/diotek/ime/framework/view/TipsDialog$21;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showPenDetectionGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowPenDetectionGuideConsecutively(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fist_hwr_execution"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$21;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->showGestureGuideDialog()V

    :cond_0
    return v5
.end method
