.class Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;
.super Landroid/widget/PopupMenu;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarBottomIconPopupMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallButtonFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-super {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
