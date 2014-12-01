.class Lcom/android/settings/DirectPenInputSettings$1;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DirectPenInputSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
