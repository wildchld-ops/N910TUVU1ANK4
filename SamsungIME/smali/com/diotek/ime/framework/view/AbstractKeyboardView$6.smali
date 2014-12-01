.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v24

    if-nez v24, :cond_1

    :cond_0
    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_TRACE"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTalkbackEnabled()Z

    move-result v24

    if-nez v24, :cond_7

    const/4 v13, 0x1

    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Sip_DisableMenuKeyboardSwipe"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v14, :cond_4

    if-eqz v11, :cond_5

    :cond_4
    if-eqz v16, :cond_5

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v10, v0, :cond_6

    :cond_5
    if-eqz v15, :cond_6

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_8

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    :cond_8
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    sub-float v6, v24, v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    sub-float v7, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v18, v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    div-int/lit8 v19, v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v24

    const/16 v25, 0x3e8

    invoke-virtual/range {v24 .. v25}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->getXVelocity()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->getYVelocity()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeThreshold:I
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, p3, v24

    if-lez v24, :cond_c

    cmpg-float v24, v5, v4

    if-gez v24, :cond_c

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v6, v24

    if-lez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mDisambiguateSwipe:Z
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/high16 v24, 0x40800000

    div-float v24, p3, v24

    cmpg-float v24, v8, v24

    if-gez v24, :cond_a

    :cond_9
    :goto_2
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingRightSwipe()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsUseSplitFloat:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v10, v0, :cond_b

    const/16 v24, 0x1

    sput-boolean v24, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->ISRIGHTSWIPE:Z

    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShowSplitDimMode:Ljava/lang/Runnable;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$400(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Ljava/lang/Runnable;

    move-result-object v24

    const-wide/16 v25, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_b
    if-eqz v22, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOnKeyboardActionListener()Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->swipeRight()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->releaseAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeThreshold:I
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, p3, v24

    if-gez v24, :cond_f

    cmpg-float v24, v5, v4

    if-gez v24, :cond_f

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v6, v24

    if-gez v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mDisambiguateSwipe:Z
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/high16 v24, 0x40800000

    div-float v24, p3, v24

    cmpl-float v24, v8, v24

    if-gtz v24, :cond_9

    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingLeftSwipe()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsUseSplitFloat:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v10, v0, :cond_e

    const/16 v24, 0x1

    sput-boolean v24, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->ISLEFTSWIPE:Z

    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCheckSplitMode:Ljava/lang/Runnable;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$600(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Ljava/lang/Runnable;

    move-result-object v24

    const-wide/16 v25, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_e
    if-eqz v21, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOnKeyboardActionListener()Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->swipeLeft()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->releaseAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeThreshold:I
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, p4, v24

    if-gez v24, :cond_11

    cmpg-float v24, v4, v5

    if-gez v24, :cond_11

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v7, v24

    if-gez v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mDisambiguateSwipe:Z
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x40800000

    div-float v24, p4, v24

    cmpl-float v24, v9, v24

    if-gtz v24, :cond_9

    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingUpSwipe()Z

    move-result v23

    if-eqz v23, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOnKeyboardActionListener()Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->swipeUp()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->releaseAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mSwipeThreshold:I
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, p4, v24

    if-lez v24, :cond_9

    const/high16 v24, 0x40000000

    div-float v24, v5, v24

    cmpg-float v24, v4, v24

    if-gez v24, :cond_9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v7, v24

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mDisambiguateSwipe:Z
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$300(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x40800000

    div-float v24, p4, v24

    cmpg-float v24, v9, v24

    if-ltz v24, :cond_9

    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingDownSwipe()Z

    move-result v20

    if-eqz v20, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOnKeyboardActionListener()Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->swipeDown()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$6;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    # getter for: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPointerQueue:Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;
    invoke-static/range {v24 .. v24}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    invoke-virtual/range {v24 .. v27}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$PointerQueue;->releaseAllPointersExcept(Lcom/diotek/ime/framework/view/tracker/PointerTracker;J)V

    const/16 v24, 0x1

    goto/16 :goto_0
.end method
