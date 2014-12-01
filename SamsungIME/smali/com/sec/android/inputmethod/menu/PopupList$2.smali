.class Lcom/sec/android/inputmethod/menu/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/menu/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/menu/PopupList;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/menu/PopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/menu/PopupList$2;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$2;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$000(Lcom/sec/android/inputmethod/menu/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$2;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$000(Lcom/sec/android/inputmethod/menu/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$2;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$300(Lcom/sec/android/inputmethod/menu/PopupList;)Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$2;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$300(Lcom/sec/android/inputmethod/menu/PopupList;)Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/sec/android/inputmethod/menu/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    goto :goto_0
.end method
