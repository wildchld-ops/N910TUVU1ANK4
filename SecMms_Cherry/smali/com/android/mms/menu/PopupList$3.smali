.class Lcom/android/mms/menu/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/menu/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/menu/PopupList;


# direct methods
.method constructor <init>(Lcom/android/mms/menu/PopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/menu/PopupList$3;->this$0:Lcom/android/mms/menu/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/menu/PopupList$3;->this$0:Lcom/android/mms/menu/PopupList;

    # getter for: Lcom/android/mms/menu/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/mms/menu/PopupList;->access$000(Lcom/android/mms/menu/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/menu/PopupList$3;->this$0:Lcom/android/mms/menu/PopupList;

    # invokes: Lcom/android/mms/menu/PopupList;->updatePopupLayoutParams()V
    invoke-static {v0}, Lcom/android/mms/menu/PopupList;->access$400(Lcom/android/mms/menu/PopupList;)V

    iget-object v0, p0, Lcom/android/mms/menu/PopupList$3;->this$0:Lcom/android/mms/menu/PopupList;

    # getter for: Lcom/android/mms/menu/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/mms/menu/PopupList;->access$000(Lcom/android/mms/menu/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method
