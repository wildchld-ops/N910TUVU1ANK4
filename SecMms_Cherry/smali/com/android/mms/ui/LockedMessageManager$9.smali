.class Lcom/android/mms/ui/LockedMessageManager$9;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$9;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "Mms/LockedMsgStoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick(),position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    sput-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    sget-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$9;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # getter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$1900(Lcom/android/mms/ui/LockedMessageManager;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/LockedMessageManager;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$9;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    # invokes: Lcom/android/mms/ui/LockedMessageManager;->openThread(I)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/LockedMessageManager;->access$2000(Lcom/android/mms/ui/LockedMessageManager;I)V

    return-void
.end method
