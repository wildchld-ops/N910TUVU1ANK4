.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

.field final synthetic val$popupView:Landroid/view/View;

.field final synthetic val$undoBottomHeight:I

.field final synthetic val$undoHeight:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iput-object p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$popupView:Landroid/view/View;

    iput p3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$undoHeight:I

    iput p4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$undoBottomHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$popupView:Landroid/view/View;

    const/4 v3, -0x1

    iget v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$undoHeight:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$popupView:Landroid/view/View;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    iget v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$undoBottomHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$100()Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->val$popupView:Landroid/view/View;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$602(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->access$700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SamsungIME"

    const-string v2, "Unable to show popup window because of BadTokenException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
