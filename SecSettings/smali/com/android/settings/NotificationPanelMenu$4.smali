.class Lcom/android/settings/NotificationPanelMenu$4;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    const/4 v9, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_prev: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / dragEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->idxGap:I
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    if-ge v5, v11, :cond_2

    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_next: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    :goto_1
    if-nez v8, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->idxGap:I
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    sub-int/2addr v5, v11

    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mActiveAppsNum: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I
    invoke-static {v13}, Lcom/android/settings/NotificationPanelMenu;->access$600(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", idxGap: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->idxGap:I
    invoke-static {v13}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "NotificationPanelMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "idx_next: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$700(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$700(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/view/View;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v11, "NotificationPanelMenu"

    const-string v12, "Exception in mCandidateNotificationPanelList"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    const v11, 0x7f0b0386

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$300(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V
    invoke-static {v11, v0}, Lcom/android/settings/NotificationPanelMenu;->access$800(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # invokes: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$000(Lcom/android/settings/NotificationPanelMenu;)V

    goto/16 :goto_0

    :pswitch_3
    const/high16 v11, 0x3f800000

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;)Landroid/speech/tts/TextToSpeech;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$1000(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    :goto_2
    div-int v10, v5, v6

    rem-int v1, v5, v6

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->idxGap:I
    invoke-static {v12}, Lcom/android/settings/NotificationPanelMenu;->access$400(Lcom/android/settings/NotificationPanelMenu;)I

    move-result v12

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    const v12, 0x7f091637

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$900(Lcom/android/settings/NotificationPanelMenu;)Landroid/speech/tts/TextToSpeech;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v12, v13}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0009

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    const v12, 0x7f091638

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int/lit8 v15, v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_4
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    const/high16 v11, 0x3f800000

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    # getter for: Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    invoke-static {v11}, Lcom/android/settings/NotificationPanelMenu;->access$200(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;->restoreOriginalImage()V

    goto/16 :goto_0

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
