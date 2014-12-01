.class Lcom/android/systemui/recent/RecentsPanelView$11;
.super Landroid/view/OrientationEventListener;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->makeTraybarHelpPopupLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$displayMetrix:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p3, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->val$displayMetrix:Landroid/util/DisplayMetrics;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2600(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->val$displayMetrix:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->val$displayMetrix:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2702(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->val$displayMetrix:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2802(Lcom/android/systemui/recent/RecentsPanelView;I)I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2700(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2800(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/PopupWindow;->update(II)V

    const-string v2, "STATUSBAR-RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTraybarHelpPopupLayout update- w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2700(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2800(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$11;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$2602(Lcom/android/systemui/recent/RecentsPanelView;I)I

    :cond_1
    return-void
.end method
