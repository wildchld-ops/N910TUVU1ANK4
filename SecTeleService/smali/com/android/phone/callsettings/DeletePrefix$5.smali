.class Lcom/android/phone/callsettings/DeletePrefix$5;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$5;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$5;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$5;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v2, v2, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$5;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v2, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$5;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updateDeleteItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$600(Lcom/android/phone/callsettings/DeletePrefix;)V

    return-void
.end method
