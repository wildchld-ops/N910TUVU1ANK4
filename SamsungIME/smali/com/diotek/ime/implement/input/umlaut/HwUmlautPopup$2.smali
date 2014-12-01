.class Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;
.super Ljava/lang/Object;
.source "HwUmlautPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    iget-object v2, v2, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "commit_char"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "alternative_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$2;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method
