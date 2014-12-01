.class Lcom/android/mms/ui/DraftMessageManager$9;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$9;->this$0:Lcom/android/mms/ui/DraftMessageManager;

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

    const-string v0, "Mms/DraftMessageManager"

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

    sput-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    sget-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/DraftMessageManager;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$9;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->startViewer(I)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/DraftMessageManager;->access$1800(Lcom/android/mms/ui/DraftMessageManager;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$9;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->openThread(I)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/DraftMessageManager;->access$1900(Lcom/android/mms/ui/DraftMessageManager;I)V

    goto :goto_0
.end method
