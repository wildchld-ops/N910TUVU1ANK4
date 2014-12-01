.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;
.super Ljava/lang/Object;
.source "LGTPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mCheckedItemPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$900(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1000(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1100(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$3;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->updateDeleteScreenItems()V
    invoke-static {v2}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)V

    return-void
.end method
