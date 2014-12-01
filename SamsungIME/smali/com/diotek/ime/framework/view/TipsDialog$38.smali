.class Lcom/diotek/ime/framework/view/TipsDialog$38;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$38;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$38;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$38;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getPrevTipsDlg(I)I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/TipsDialog$38;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    return-void
.end method
