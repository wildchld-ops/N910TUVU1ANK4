.class Lcom/android/mms/ui/ReservationMessageManager$3;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ReservationMessageManager;->initEtc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const v4, 0x7f0b03d7

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/ReservationMessageManager;->selectAllList()V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v3, v3, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v3, v3, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v3}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->access$400(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v2, v2, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->access$400(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/ReservationMessageManager;->unSelectAllList()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v2, v2, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->access$400(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v1, v1, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->access$400(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v1, v1, Lcom/android/mms/ui/ReservationMessageManager;->mModeCallback:Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;->access$400(Lcom/android/mms/ui/ReservationMessageManager$ModeCallback;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
