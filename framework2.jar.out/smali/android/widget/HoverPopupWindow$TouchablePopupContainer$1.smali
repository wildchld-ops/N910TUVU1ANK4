.class Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;
.super Landroid/os/Handler;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field final synthetic val$this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;Landroid/widget/HoverPopupWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iput-object p2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->val$this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "HoverPopupWindow"

    const-string v1, "TouchablePopupContainer: ***** mDismissHandler handleMessage *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "HoverPopupWindow"

    const-string v1, "TouchablePopupContainer: mDismissHandler handleMessage: Call dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
