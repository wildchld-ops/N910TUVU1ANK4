.class Lcom/diotek/ime/framework/view/TipsDialog$77;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityOld(ILandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;

.field final synthetic val$keycode:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iput p2, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->val$keycode:I

    const/16 v1, -0x75

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$77;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboardforMMkey()V

    :cond_0
    return-void
.end method
