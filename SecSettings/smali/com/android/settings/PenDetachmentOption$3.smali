.class Lcom/android/settings/PenDetachmentOption$3;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->idxGap:I
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$400(Lcom/android/settings/PenDetachmentOption;)I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mActivePenPanelList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$500(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_0
    if-nez v3, :cond_2

    const/4 v4, 0x0

    :cond_0
    :goto_1
    :pswitch_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->idxGap:I
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$400(Lcom/android/settings/PenDetachmentOption;)I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mCandidatePenPanelList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$600(Lcom/android/settings/PenDetachmentOption;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :cond_2
    const v5, 0x7f0b0386

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # invokes: Lcom/android/settings/PenDetachmentOption;->changePenSettingsByPanel(Landroid/view/View;)V
    invoke-static {v5, p1}, Lcom/android/settings/PenDetachmentOption;->access$700(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # invokes: Lcom/android/settings/PenDetachmentOption;->saveAppslist()V
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$800(Lcom/android/settings/PenDetachmentOption;)V

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # invokes: Lcom/android/settings/PenDetachmentOption;->updatePenIconSettingsList()V
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$900(Lcom/android/settings/PenDetachmentOption;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/PenDetachmentOption$3;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    invoke-static {v5}, Lcom/android/settings/PenDetachmentOption;->access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
