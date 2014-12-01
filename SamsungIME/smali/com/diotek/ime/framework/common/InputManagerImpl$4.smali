.class Lcom/diotek/ime/framework/common/InputManagerImpl$4;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v25

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "SETTINGS_USE_STANDARD_DATA"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v21

    const/4 v8, 0x0

    const/4 v14, 0x0

    const-string v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v26, "first_pinch_zoom_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_1

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900()Landroid/content/Context;

    move-result-object v26

    const-string v27, "clipboardEx"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/ClipboardExManager;

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v7

    :cond_2
    const-string v26, "first_trace_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_0

    if-eqz v9, :cond_0

    if-nez v6, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "SETTINGS_DEFAULT_TRACE"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_0

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    :pswitch_3
    const-string v26, "first_swiftkey_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v27

    const-string v28, "SETTINGS_USE_STANDARD_DATA"

    if-nez v12, :cond_3

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateSetupWizardState()V
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2200(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    const-string v27, "SamsungIME"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SwiftKey guide popup condition 1 : "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v26

    if-nez v26, :cond_4

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v26

    if-nez v26, :cond_5

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEnabledMagnification()Z

    move-result v26

    if-nez v26, :cond_0

    const-string v27, "SamsungIME"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SwiftKey guide popup condition 2 : "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v28, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v29, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v29 .. v29}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_6

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v26

    if-nez v26, :cond_7

    const/16 v26, 0x1

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v26

    if-nez v26, :cond_8

    const/16 v26, 0x1

    :goto_6
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_9

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v26, "VZW"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string v26, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v27 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v27

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v26

    if-nez v26, :cond_b

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTalkbackEnabled()Z

    move-result v26

    if-nez v26, :cond_b

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_b

    const-string v26, "VZW"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showSwiftkeyGuideDialog()V

    goto/16 :goto_0

    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v26, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v26, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_7

    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsKorMode:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputClass()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isDateTimeNumberPickerEditor()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isCurrentCarModeKnobSIP()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isCurrentCarModeTouchSIP()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showDiscoverability(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showEmptyShortcutsGuideDialog()V

    goto/16 :goto_0

    :pswitch_5
    const-string v26, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v26, "first_xt9_9_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "XT9_DLM_ENABLE"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_c

    if-eqz v14, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v26

    if-nez v26, :cond_c

    if-eqz v9, :cond_c

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowXt9PersonalizerConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_c

    const-string v26, "VZW"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showXt9PersonalizerAttentionDialog()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    const-string v26, "first_trace_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "SETTINGS_DEFAULT_TRACE"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_e

    const/16 v17, 0x1

    :goto_9
    const-string v26, "first_one_handed_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_LANDSCAPE"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_f

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_f

    if-eqz v9, :cond_f

    if-eqz v5, :cond_d

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showOneHandedGuideDialog()V

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0x0

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPenDetectionGuideDialog()V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/input/InputController;->predictionWord()Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/input/InputController;->recaptureWordXT9()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    const/16 v27, 0x9

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/input/InputController;->previewTrace(IZ)V

    goto/16 :goto_0

    :pswitch_d
    const-string v26, "first_pinch_zoom_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v26, "first_trace_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowZoomPinchGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_10

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showPinchZoomGuideDialog()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowTraceGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2000(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_11

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableTracePopupGuide()Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "SETTINGS_DEFAULT_TRACE"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTraceGuideDialog()V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_e
    const-string v26, "first_swiftkey_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v26, "first_one_handed_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v26

    if-nez v26, :cond_15

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsPredictionOn:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_12

    if-eqz v15, :cond_12

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowSwiftkeyGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsSwiftkeyGuideDialog()V

    goto/16 :goto_0

    :cond_12
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowOneHandedGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemOneHandOperationSettingValue()I

    move-result v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSystemHandAdaptableOperationSettingValue()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsOrientationLandscape:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsOneHandedGuideDialog()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isTipsDialogDismissed()Z

    move-result v26

    if-nez v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showTipsDialogByIndex()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "IS_POPUP_SHOW"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_f
    const-string v26, "fist_hwr_execution"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1600(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v26

    const-string v27, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDontShowGestureGuideConsecutively:Z
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v26

    if-nez v26, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-eqz v26, :cond_0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/view/ViewController;->showGestureGuideDialog()V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/input/InputController;->updateSuggestionForSwiftKey()V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/diotek/ime/framework/view/ViewController;->showSymbolPopupKeyboard()V

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateCandidates()V
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$2900(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->buildSuggestions()V
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3000(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->isEmoticonMode()Z

    move-result v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/common/InputManagerImpl;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mQwertyKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v22, v0

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v22, :cond_16

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->focusstate:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressedstate:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/common/InputManagerImpl$4;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInputView(Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_12
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_c
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
