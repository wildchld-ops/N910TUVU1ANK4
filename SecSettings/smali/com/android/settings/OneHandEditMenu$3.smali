.class Lcom/android/settings/OneHandEditMenu$3;
.super Ljava/lang/Object;
.source "OneHandEditMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandEditMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandEditMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / dragEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->idxGap:I
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v7

    if-ge v3, v7, :cond_1

    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$400(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :goto_0
    if-nez v5, :cond_2

    const/4 v6, 0x0

    :cond_0
    :goto_1
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->idxGap:I
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v7

    sub-int/2addr v3, v7

    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mActiveEditMenuNum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mActiveEditMenuNum:I
    invoke-static {v9}, Lcom/android/settings/OneHandEditMenu;->access$500(Lcom/android/settings/OneHandEditMenu;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", idxGap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->idxGap:I
    invoke-static {v9}, Lcom/android/settings/OneHandEditMenu;->access$300(Lcom/android/settings/OneHandEditMenu;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "OneHandEditMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "idx_next: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$600(Lcom/android/settings/OneHandEditMenu;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/View;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "OneHandEditMenu"

    const-string v8, "Exception in mCandidateNotificationPanelList"

    invoke-static {v7, v8, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const v7, 0x7f0b0386

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # invokes: Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V
    invoke-static {v7, p1}, Lcom/android/settings/OneHandEditMenu;->access$700(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # invokes: Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$000(Lcom/android/settings/OneHandEditMenu;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/OneHandEditMenu$3;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mShadowBuilder:Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;
    invoke-static {v7}, Lcom/android/settings/OneHandEditMenu;->access$100(Lcom/android/settings/OneHandEditMenu;)Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/OneHandEditMenu$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
