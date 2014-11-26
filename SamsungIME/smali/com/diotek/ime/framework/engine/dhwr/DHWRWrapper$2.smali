.class Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;
.super Landroid/os/Handler;
.source "DHWRWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1    # Landroid/os/Message;

    const/4 v12, 0x0

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_GESTURE_DO - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isUnitRecongnitionMode()Z
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$100(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearRecognitionResult()V
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$200(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    :cond_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_1

    :goto_1
    :pswitch_1
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$600(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$700(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrRect()V

    goto :goto_0

    :pswitch_2
    new-instance v6, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$400(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)I

    move-result v2

    const/16 v9, 0x74

    if-eq v2, v9, :cond_3

    const/16 v9, 0x75

    if-eq v2, v9, :cond_3

    const/16 v9, 0x76

    if-eq v2, v9, :cond_3

    const/16 v9, 0x7b

    if-ne v2, v9, :cond_4

    :cond_3
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/16 v10, 0x8

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    iget v9, v3, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v6, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :pswitch_3
    new-instance v4, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    iget v12, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/16 v10, 0x20

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v6, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v9, v3, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3e4ccccd

    mul-float v8, v9, v10

    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v6, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    iget v12, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/16 v10, 0xc

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v6, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_5

    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    iput v9, v3, Landroid/graphics/Point;->x:I

    iput v7, v6, Landroid/graphics/Point;->x:I

    :cond_5
    iget v9, v6, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_6

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    iput v9, v3, Landroid/graphics/Point;->y:I

    iput v7, v6, Landroid/graphics/Point;->y:I

    :cond_6
    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v11, v3, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/4 v10, 0x2

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v6, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v3, Landroid/graphics/Point;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-static {v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v10

    div-int/lit8 v0, v9, 0x2

    iget v9, v6, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    int-to-float v9, v0

    int-to-float v10, v1

    add-int/lit8 v11, v0, 0x1

    int-to-float v11, v11

    add-int/lit8 v12, v1, 0x1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    const/4 v10, 0x5

    # invokes: Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    invoke-static {v9, v10, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
