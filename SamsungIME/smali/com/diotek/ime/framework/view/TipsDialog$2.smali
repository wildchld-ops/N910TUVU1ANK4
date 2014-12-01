.class Lcom/diotek/ime/framework/view/TipsDialog$2;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showPinchZoomGuideDialog(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # getter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z
    invoke-static {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->access$100(Lcom/diotek/ime/framework/view/TipsDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "first_pinch_zoom_execution"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    # setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z
    invoke-static {v4, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->access$102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v1}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowZoomPinchGuideConsecutively(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "ENABLE_TRACE"

    invoke-interface {v4, v5, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getDontShowTraceGuideConsecutively()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v4, "first_pinch_zoom_execution"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog$2;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->showTraceGuidePopupMessage()V

    goto :goto_2
.end method
