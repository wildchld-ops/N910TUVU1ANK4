.class Lcom/android/phone/callsettings/PopupList$1;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PopupList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->access$000(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PopupList;->access$002(Lcom/android/phone/callsettings/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->access$100(Lcom/android/phone/callsettings/PopupList;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList$1;->this$0:Lcom/android/phone/callsettings/PopupList;

    # getter for: Lcom/android/phone/callsettings/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/android/phone/callsettings/PopupList;->access$200(Lcom/android/phone/callsettings/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
